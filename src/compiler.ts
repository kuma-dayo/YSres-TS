import fs from "fs"
import { join } from "path"
import { cwd } from "process"

import compiler from "kaitai-struct-compiler"
import YAML from "yaml"

import { log4TSProvider } from "./config/LogConfig"
import { dirExists, mkdir, writeFile } from "./utils/fileSystem"

const logger = log4TSProvider.getLogger("Compiler")

let mainPath: string = null

const yamlImporter = {
  importYaml: async function (name: string) {
    if (mainPath) {
      let importKsyYaml = fs.readFileSync(join(cwd(), "DataParser", mainPath, `${name}.ksy`))
      let importKsy = YAML.parse(importKsyYaml.toString())
      return Promise.resolve(importKsy)
    } else {
      let importKsyYaml = fs.readFileSync(join(cwd(), "DataParser", `${name}.ksy`))
      let importKsy = YAML.parse(importKsyYaml.toString())
      return Promise.resolve(importKsy)
    }
  },
}

export async function compileKsy(KsyName: string, JSname: string, MainPath: string) {
  const compilers = new compiler()

  mainPath = MainPath

  const ksy = await yamlImporter.importYaml(KsyName)

  const files = await compilers.compile("javascript", ksy, yamlImporter, false)

  logger.info("Compiled filenames: " + Object.keys(files).join(", "))

  if (!(await dirExists(join(cwd(), "compile")))) await mkdir(join(cwd(), "compile"))
  if (!(await dirExists(join(cwd(), "compile", JSname)))) await mkdir(join(cwd(), "compile", JSname))

  for (const key in files) {
    const file =
      Object.keys(files).includes("AuxTypes.js") && !key.includes("AuxTypes.js") //For some reason AuxTypes is not imported automatically
        ? 'const AuxTypes = require("./AuxTypes");\n' + files[key]
        : files[key]

    const filePath = join(cwd(), "compile", JSname, key)
    await writeFile(filePath, file)
    logger.info(`write ${filePath}`)
  }
}
