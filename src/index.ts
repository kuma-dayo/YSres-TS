import { join } from "path"
import { cwd } from "process"

import KaitaiStream from "kaitai-struct/KaitaiStream"
import { install } from "source-map-support"

import { compileKsy } from "./compiler"
import { log4TSProvider } from "./config/LogConfig"
import { dirExists, fileExists, mkdir, readFile, writeFile } from "./utils/fileSystem"
import { parseProperties } from "./utils/Parse"

import AuxTypes from "@/js/AuxTypes"

install()

const logger = log4TSProvider.getLogger("Main")

const exportBin: { [key: string]: string[] } = {
  //Hutao-GD need ExcelBinOutput
  AvatarCostumeExcelConfigData: ["avatar_costume_excel_config", "AvatarCostumeExcelConfig", "Excel"], // using AvatarData
  AvatarCurveExcelConfigData: ["avatar_curve_excel_config", "AvatarCurveExcelConfig", "Excel"], // using GrowCurveData
  AvatarExcelConfigData: ["avatar_excel_config", "AvatarExcelConfig", "Excel"], // using AvatarData
  AvatarFlycloakExcelConfigData: ["avatar_flycloak_excel_config", "AvatarFlycloakExcelConfig", "Excel"], // using AvatarData
  AvatarTalentExcelConfigData: ["avatar_talent_excel_config", "AvatarTalentExcelConfig", "Excel"], // using TalentData
  AvatarSkillDepotExcelConfigData: ["avatar_skill_depot_excel_config", "AvatarSkillDepotExcelConfig", "Excel"], // using SkillData
  AvatarSkillExcelConfigData: ["avatar_skill_excel_config", "AvatarSkillExcelConfig", "Excel"], // using SkillData
  CityConfigData: ["city_config", "CityConfig", "Excel"], // using SceneData
  FetterInfoExcelConfigData: ["fetter_info_excel_config", "FetterInfoExcelConfig", "Excel"], // using SceneData
  // Fix FettersExcelConfigData: ["fetters_excel_config", "FettersExcelConfig", "Excel"], // using AvatarData
  FetterStoryExcelConfigData: ["fetter_story_excel_config", "FetterStoryExcelConfig", "Excel"], // using AvatarData
  //Fix DungeonChallengeConfigData: ["dungeon_challenge_config", "DungeonChallengeConfig", "Excel"], // using DungeonData
  DungeonElementChallengeExcelConfigData: [
    "dungeon_element_challenge_excel_config",
    "DungeonElementChallengeExcelConfig",
    "Excel",
  ], // using DungeonData
  // Fix  DungeonEntryExcelConfigData: ["dungeon_entry_excel_config", "DungeonEntryExcelConfig", "Excel"], // using DungeonData
  //Fix  DungeonExcelConfigData: ["dungeon_excel_config", "DungeonExcelConfig", "Excel"], // using DungeonData
  //Fix ungeonLevelExcelConfigData: ["dungeon_level_excel_config", "DungeonLevelExcelConfig", "Excel"], // using DungeonData
  DungeonMapAreaExcelConfigData: ["dungeon_map_area_excel_config", "DungeonMapAreaExcelConfig", "Excel"], // using DungeonData
  DungeonPassExcelConfigData: ["dungeon_pass_excel_config", "DungeonPassExcelConfig", "Excel"], // using DungeonData
  //Fix DungeonRosterConfigData: ["dungeon_roster_config", "DungeonRosterConfig", "Excel"], // using DungeonData
  //Fix DungeonSerialConfigData: ["dungeon_serial_config", "DungeonSerialConfig", "Excel"], // using DungeonData
  EquipAffixExcelConfigData: ["equip_affix_excel_config", "EquipAffixExcelConfig", "Excel"], // using TalentData
  //Fix GadgetCurveExcelConfigData: ["gadget_curve_excel_config", "GadgetCurveExcelConfig", "Excel"], // using GrowCurveData
  //Fix GadgetExcelConfigData: ["gadget_excel_config", "GadgetExcelConfig", "Excel"], // using GadGetData
  GadgetPropExcelConfigData: ["gadget_prop_excel_config", "GadgetPropExcelConfig", "Excel"], // using GadGetData
  //Fix SceneExcelConfigData: ["scene_excel_config", "SceneExcelConfig", "Excel"], // using SceneData
  //Fix SceneTagConfigData: ["scene_tag_config", "SceneTagConfig", "Excel"], // using SceneData
  //Fix ShopGoodsExcelConfigData: ["shop_goods_excel_config", "ShopGoodsExcelConfig", "Excel"], // using ShopData
  TeamResonanceExcelConfigData: ["team_resonance_excel_config", "TeamResonanceExcelConfig", "Excel"], // using TalentData
  MaterialExcelConfigData: ["material_excel_config", "MaterialExcelConfig", "Excel"], // using MaterialData
  // Fix MapAreaConfigData: ["map_area_config", "MapAreaConfig", "Excel"], // using MapAreaData
  MonsterAffixExcelConfigData: ["monster_affix_excel_config", "MonsterAffixExcelConfig", "Excel"], // using MonsterData
  //Fix MonsterCurveExcelConfigData: ["monster_curve_excel_config", "MonsterCurveExcelConfig", "Excel"], // using GrowCurveData
  MonsterDescribeExcelConfigData: ["monster_describe_excel_config", "MonsterDescribeExcelConfig", "Excel"], // using MonsterData
  MonsterExcelConfigData: ["monster_excel_config", "MonsterExcelConfig", "Excel"], // using MonsterData
  //Fix MonsterMultiPlayerExcelConfigData: ["monster_multiplayer_excel_config", "MonsterMultiPlayerExcelConfig", "Excel"], // using MonsterData
  MonsterSpecialNameExcelConfigData: ["monster_special_name_excel_config", "MonsterSpecialNameExcelConfig", "Excel"], // using MonsterData
  ProudSkillExcelConfigData: ["proud_skill_excel_config", "ProudSkillExcelConfig", "Excel"], // using SkillData
  ReliquaryAffixExcelConfigData: ["reliquary_affix_excel_config", "ReliquaryAffixExcelConfig", "Excel"], // using ReliquaryData
  ReliquaryExcelConfigData: ["reliquary_excel_config", "ReliquaryExcelConfig", "Excel"], // using ReliquaryData
  ReliquaryLevelExcelConfigData: ["reliquary_level_excel_config", "ReliquaryLevelExcelConfig", "Excel"], // using ReliquaryData
  ReliquaryMainPropExcelConfigData: ["reliquary_main_prop_excel_config", "ReliquaryMainPropExcelConfig", "Excel"], // using ReliquaryData
  //Fix ReliquarySetExcelConfigData: ["reliquary_set_excel_config", "ReliquarySetExcelConfig", "Excel"], // using ReliquaryData
  //Fix WeaponCurveExcelConfigData: ["weapon_curve_excel_config", "WeaponCurveExcelConfig", "Excel"], // using GrowCurveData
  //Fix WeaponExcelConfigData: ["weapon_excel_config", "WeaponExcelConfig", "Excel"], // using WeaponData
  WeaponLevelExcelConfigData: ["weapon_level_excel_config", "WeaponLevelExcelConfig", "Excel"], // using WeaponData
  WeaponPromoteExcelConfigData: ["weapon_promote_excel_config", "WeaponPromoteExcelConfig", "Excel"], // using WeaponData
  //Fix WeatherExcelConfigData: ["weather_excel_config", "WeatherExcelConfig", "Excel"], // using WeatherData
  WeatherTemplateExcelConfigData: ["weather_template_excel_config", "WeatherTemplateExcelConfig", "Excel"], // using WeatherData
  WorldExcelConfigData: ["world_excel_config", "WorldExcelConfig", "Excel"], // using WorldData
  WorldLevelExcelConfigData: ["world_level_excel_config", "WorldLevelExcelConfig", "Excel"], // using WorldData
}

;(async () => {
  for (const key in exportBin) {
    const [ksyFileName, moduleName, Path] = exportBin[key]

    logger.info(`Compile ${ksyFileName}.ksy`)

    await compileKsy(ksyFileName, moduleName, Path)
    logger.info(`Complete ${ksyFileName}.ksy`)

    const binFilePath = join(cwd(), "bin", `${key}.bin`)

    const Exists = await fileExists(binFilePath)

    logger.info(`bin file exists: ${Exists}`)

    if (Exists) {
      const modulePath = join(cwd(), "compile", moduleName, `${moduleName}.js`)

      const module = (await import(modulePath)).default
      logger.info(`Compile ${moduleName}.js`)

      const outputJson = []

      const fileBuffer = await readFile(binFilePath)

      const stream = new KaitaiStream(fileBuffer)

      const obj = new AuxTypes.VlqBase128LeS(stream)
      const cnt = obj.value

      for (let i = 0; i < cnt; i++) {
        const block = new module(stream)
        outputJson.push(await parseProperties(block, moduleName))
      }

      if (!(await dirExists(join(cwd(), "Json")))) await mkdir(join(cwd(), "Json"))

      await writeFile(join(cwd(), "Json", `${key}.json`), JSON.stringify(outputJson, null, 4))
    }
  }
})()
