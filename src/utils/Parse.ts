import { join } from "path"
import { cwd } from "process"

import AuxTypes from "@/js/AuxTypes"
import EnumTalentFilterCond from "@/js/EnumTalentFilterCond"

let paths
export async function parseProperties(block: any, path?: string): Promise<any> {
  if (path) paths = path
  // if u1 / s4 or sth
  if (typeof block === "number") {
    return block
  }

  // if string
  if (typeof block === "string") {
    return block
  }
  // if leb128
  if (block instanceof AuxTypes.VlqBase128LeU || block instanceof AuxTypes.VlqBase128LeS) {
    return block.value
  }
  //   // if EnumTalentFilterCond * hardcode
  if (block instanceof EnumTalentFilterCond) {
    return parseProperties(block.data)
  }

  // else
  const outputBlock: { [key: string]: any } = {}

  // remove useless properties
  const properties = Object.getOwnPropertyNames(block).filter(
    (prop) => !prop.startsWith("_") && !prop.startsWith("hasField")
  )

  const unwantedProperties = ["bitField", "fromBytes", "fromFile", "fromIo", "close"]

  unwantedProperties.forEach((unwantedProp) => {
    const index = properties.indexOf(unwantedProp)
    if (index !== -1) {
      properties.splice(index, 1)
    }
  })

  for (const property of properties) {
    // if array
    if (getName(block[property]).includes("Array")) {
      if (block[property].data?.length > 0)
        outputBlock[lowCamelCase(property)] = await Promise.all(
          block[property].data.map((item) => {
            if (typeof item.value === "number") return parseProperties(item.value)
            else if (typeof item.data === "string") return parseProperties(item.data)
            else return parseProperties(item)
          })
        )
    }
    // if enum
    else if (getName(block[property]).includes("Enum")) {
      if (typeof block[property].value === "number") {
        const modulePath = join(cwd(), "compile", paths, `${getName(block[property])}.js`)
        const module = await import(modulePath)
        outputBlock[lowCamelCase(property)] =
          module.default[getName(block[property]).replace("Enum", "")][block[property].data.value]
      }
    }
    // if dict (wip!)
    // return array as key - value
    else {
      // if name desc
      // return as nameTextMapHash descTextMapHash

      const textmapHashes: string[] = [
        "name",
        "desc",
        "avatar_vision_befor",
        "avatar_vision_after",
        "avatar_constellation_befor",
        "avatar_constellation_after",
        "cv_chinese",
        "cv_japanese",
        "cv_english",
        "cv_korean",
      ]

      if (textmapHashes.includes(property)) {
        outputBlock[lowCamelCase(property + "_text_map_hash")] = block[property].value
      } else {
        // return ?

        if (block[property].value) {
          outputBlock[lowCamelCase(property)] = block[property].value
        } else {
          if (block[property].data) {
            outputBlock[lowCamelCase(property)] = block[property].data
          } else {
            if (typeof block[property] === "number") {
              outputBlock[lowCamelCase(property)] = block[property]
            } else {
              outputBlock[lowCamelCase(property)] = block[property].data
            }
          }
        }
      }
    }
  }

  return outputBlock
}

function lowCamelCase(snakeStr: string): string {
  const components = snakeStr.split("_")
  return (
    components[0] +
    components
      .slice(1)
      .map((x) => x.charAt(0).toUpperCase() + x.slice(1))
      .join("")
  )
}

function getName(obj: any): string {
  const funcNameRegex = /function (.{1,})\(/
  const results = funcNameRegex.exec(obj.constructor.toString())
  return results && results.length > 1 ? results[1] : ""
}
