#priority 1

//github test

import mods.jei.JEI;
import mods.create.MechanicalCrafterManager;
import mods.create.CompactingManager;

//deleting items entirely

var delete = [
<item:create:andesite_bars>,
<item:create:brass_bars>,
<item:create:copper_bars>,
<item:immersiveengineering:storage_steel>,
<item:immersiveengineering:watermill>,
<item:immersiveengineering:windmill>,
<item:immersiveengineering:dynamo>,
<item:createaddition:connector>,
<item:createaddition:copper_spool>,
<item:createaddition:gold_spool>,
<item:createaddition:redstone_relay>,
<item:immersiveengineering:hoe_steel>,
<item:immersiveengineering:sword_steel>,
<item:immersiveengineering:axe_steel>,
<item:immersiveengineering:shovel_steel>,
<item:immersiveengineering:pickaxe_steel>,
<item:immersiveengineering:plate_steel>,
<item:immersiveengineering:ingot_steel>,
<item:immersiveengineering:nugget_steel>,
<item:immersiveengineering:armor_steel_head>,
<item:immersiveengineering:armor_steel_chest>,
<item:immersiveengineering:armor_steel_legs>,
<item:immersiveengineering:armor_steel_feet>,
<item:immersiveengineering:stick_iron>,
<item:vs_eureka:acacia_ship_helm>,
<item:vs_eureka:dark_oak_ship_helm>,
<item:vs_eureka:crimson_ship_helm>,
<item:vs_eureka:warped_ship_helm>,
<item:vs_eureka:jungle_ship_helm>,
<item:vs_eureka:birch_ship_helm>,
<item:vs_eureka:spruce_ship_helm>,
<item:immersiveengineering:capacitor_lv>,
<item:immersiveengineering:capacitor_mv>,
<item:immersiveengineering:capacitor_hv>,
<item:immersiveengineering:capacitor_creative>,
<item:immersiveengineering:conveyor_splitter>.withTag({defaultCover: "immersiveengineering:steel_scaffolding_standard" as string}),
<item:immersiveengineering:conveyor_splitter>,
<item:immersiveengineering:conveyor_vertical>.withTag({defaultCover: "immersiveengineering:steel_scaffolding_standard" as string}),
<item:immersiveengineering:conveyor_vertical>,
<item:immersiveengineering:conveyor_dropper>.withTag({defaultCover: "immersiveengineering:steel_scaffolding_standard" as string}),
<item:immersiveengineering:conveyor_dropper>,
<item:immersiveengineering:conveyor_redstone>,
<item:immersiveengineering:conveyor_basic>.withTag({defaultCover: "immersiveengineering:steel_scaffolding_standard" as string}),
<item:immersiveengineering:conveyor_basic>,
<item:immersiveengineering:conveyor_extract>.withTag({defaultCover: "immersiveengineering:steel_scaffolding_standard" as string}),
<item:immersiveengineering:conveyor_extract>,
<item:immersiveengineering:plate_copper>,
<item:immersiveengineering:plate_steel>,
<item:immersiveengineering:plate_iron>,
<item:immersiveengineering:plate_gold>,
<item:create_sa:zinc_hoe>,
<item:create_sa:zinc_helmet>,
<item:create_sa:zinc_chestplate>,
<item:create_sa:zinc_leggings>,
<item:create_sa:zinc_boots>,
<item:create_sa:zinc_pickaxe>,
<item:create_sa:zinc_axe>,
<item:create_sa:zinc_sword>,
<item:create_sa:zinc_shovel>,
<item:immersiveengineering:fluid_pump>,
<item:minecraft:map>,
<item:immersiveengineering:wire_copper>,
<item:minecraft:wooden_sword>,
<item:minecraft:wooden_shovel>,
<item:minecraft:wooden_pickaxe>,
<item:minecraft:wooden_axe>,
<item:minecraft:wooden_hoe>,
<item:immersiveengineering:razor_wire>,
<item:farmersdelight:wheat_dough>,
<item:minecraft:stone_pickaxe>,
<item:minecraft:stone_sword>,
<item:immersiveengineering:nugget_copper>,
<item:immersiveengineering:nugget_steel>,
<item:createdeco:zinc_sheet>,
];

for item in delete {
    recipes.remove(item);
    JEI.hideIngredient(item);
}
//end of deleting


//RECIPE REMOVAL
var recipesd = [
<item:create:item_drain>,
<item:create:copper_casing>,
<item:alloyed:steel_casing>,
<item:immersiveengineering:ingot_lead>,
<item:create:empty_blaze_burner>,
<item:create:steam_engine>,
<item:createaddition:rolling_mill>,
<item:immersiveengineering:wirecoil_copper>,
<item:immersiveengineering:wirecoil_electrum>,
<item:immersiveengineering:wirecoil_steel>,
<item:create_sa:copper_magnet>,
<item:alloyed:bronze_ingot>,
<item:immersiveengineering:alloybrick>,
<item:create:andesite_alloy>,
<item:immersiveengineering:cokebrick>,
<item:create:brass_casing>,
<item:create:copper_casing>,
<item:alloyed:steel_casing>,
<item:create:andesite_casing>,
<item:minecraft:blast_furnace>,
<item:minecraft:iron_hoe>,
<item:minecraft:iron_pickaxe>,
<item:minecraft:iron_axe>,
<item:minecraft:iron_shovel>,
<item:minecraft:furnace>,
<item:minecraft:iron_sword>,
<item:minecraft:iron_ingot>,
<item:immersiveengineering:component_iron>,
<item:create:mechanical_saw>,
<item:alloyed:steel_ingot>,
<item:create_sa:zinc_handle>,
<item:create:zinc_ingot>,
<item:immersiveengineering:stick_treated>,
<item:create:mechanical_press>,
<item:create:turntable>,
<item:create:clockwork_bearing>,
<item:create:mechanical_bearing>,
<item:create:windmill_bearing>,
<item:create:whisk>,
<item:create:propeller>,
<item:createaddition:copper_rod>,
<item:createaddition:iron_rod>,
<item:createaddition:gold_rod>,
<item:createaddition:brass_rod>,
<item:immersiveengineering:stick_steel>,
<item:immersiveengineering:stick_aluminum>,
<item:vs_eureka:oak_ship_helm>,
<item:vs_eureka:engine>,
<item:vs_eureka:floater>,
<item:vs_eureka:balloon>,
<item:vs_eureka:anchor>,
<item:createaddition:festive_spool>,
<item:createdeco:cast_iron_ingot>,
<item:create:chute>,
<item:create:metal_bracket>,
<item:create:basin>,
<item:create:belt_connector>,
<item:create:water_wheel>,
<item:create:large_water_wheel>,
<item:immersiveengineering:waterwheel_segment>,
<item:create:schematicannon>,
<item:create:mechanical_crafter>,
<item:create:display_board>,
<item:create:super_glue>,
<item:create:mechanical_plough>,
<item:create:contraption_controls>,
<item:create:mechanical_drill>,
<item:create:cart_assembler>,
<item:create:hand_crank>,
<item:create:crushing_wheel>,
<item:create:millstone>,
<item:create:display_link>,
<item:firstaid:morphine>,
<item:firstaid:bandage>,
<item:firstaid:plaster>,
<item:create:mechanical_pump>,
<item:immersiveengineering:blastbrick>,
<item:immersiveengineering:component_electronic_adv>,
<item:immersiveengineering:component_electronic>,
<item:createaddition:capacitor>,
<item:create:electron_tube>,
<item:create_sa:portable_drill>,
<item:create_sa:brass_drill_head>,
<item:immersiveengineering:drill>,
<item:minecraft:enchanting_table>,
<item:createaddition:alternator>,
<item:createaddition:electric_motor>,
<item:minecraft:diamond_helmet>,
<item:minecraft:diamond_chestplate>,
<item:minecraft:diamond_leggings>,
<item:minecraft:diamond_boots>,
<item:minecraft:diamond_hoe>,
<item:immersiveengineering:light_engineering>,
<item:immersiveengineering:heavy_engineering>,
<item:minecraft:netherite_hoe>,
<item:minecraft:netherite_axe>,
<item:minecraft:netherite_pickaxe>,
<item:minecraft:netherite_shovel>,
<item:minecraft:netherite_sword>,
<item:minecraft:netherite_leggings>,
<item:minecraft:netherite_boots>,
<item:minecraft:netherite_chestplate>,
<item:minecraft:netherite_helmet>,
<item:minecraft:iron_boots>,
<item:minecraft:iron_leggings>,
<item:minecraft:iron_chestplate>,
<item:minecraft:iron_helmet>,
<item:create_sa:brass_leggings>,
<item:create_sa:brass_boots>,
<item:create_sa:brass_chestplate>,
<item:create_sa:brass_helmet>,
<item:create_sa:copper_boots>,
<item:create_sa:copper_leggings>,
<item:create_sa:copper_chestplate>,
<item:create_sa:copper_helmet>,
<item:minecraft:diamond_sword>,
<item:minecraft:diamond_shovel>,
<item:minecraft:diamond_axe>,
<item:minecraft:diamond_pickaxe>,
<item:minecraft:golden_boots>,
<item:minecraft:golden_leggings>,
<item:minecraft:golden_chestplate>,
<item:minecraft:golden_helmet>,
<item:immersiveengineering:fluid_pipe>,
<item:immersiveengineering:drill>,
<item:immersiveengineering:wire_electrum>,
<item:immersiveengineering:wire_aluminum>,
<item:immersiveengineering:wire_steel>,
<item:immersiveengineering:wire_lead>,
<item:immersiveengineering:component_iron>,
<item:create:mechanical_mixer>,
<item:minecraft:stone_sword>,
<item:minecraft:stone_shovel>,
<item:minecraft:stone_pickaxe>,
<item:minecraft:stone_axe>,
<item:minecraft:stone_hoe>,
<item:farmersdelight:rope>,
<item:immersiveengineering:wirecoil_structure_rope>,
<item:immersiveengineering:sawblade>,
<item:create_sa:copper_jetpack_chestplate>,
<item:create_sa:hydraulic_engine>,
<item:create:portable_fluid_interface>,
<item:create:spout>,
<item:create:hose_pulley>,
<item:create:precision_mechanism>,
<item:minecraft:glass>,
<item:farmersdelight:diamond_knife>,
<item:minecraft:flint_and_steel>,
<item:immersiveengineering:wirecutter>,
];

for item in recipesd {
    recipes.remove(item);
}



craftingTable.remove(<item:create:rose_quartz>);
<recipetype:create:mechanical_crafting>.remove(<item:alloyed:steel_helmet>);
<recipetype:create:mechanical_crafting>.remove(<item:alloyed:steel_chestplate>);
<recipetype:create:mechanical_crafting>.remove(<item:alloyed:steel_leggings>);
<recipetype:create:mechanical_crafting>.remove(<item:alloyed:steel_boots>);
<recipetype:create:mechanical_crafting>.remove(<item:alloyed:steel_sword>);
<recipetype:create:mechanical_crafting>.remove(<item:alloyed:steel_pickaxe>);
<recipetype:create:mechanical_crafting>.remove(<item:alloyed:steel_axe>);
<recipetype:create:mechanical_crafting>.remove(<item:alloyed:steel_shovel>);
<recipetype:create:mechanical_crafting>.remove(<item:alloyed:steel_hoe>);
<recipetype:create:mechanical_crafting>.remove(<item:alloyed:steel_fishing_rod>);
<recipetype:create:mechanical_crafting>.remove(<item:alloyed:steel_shears>);

craftingTable.remove(<item:minecraft:bread>);
<recipetype:immersiveengineering:alloy>.remove(<item:create:brass_ingot>);
craftingTable.remove(<item:immersiveengineering:plate_lead>);
JEI.hideIngredient(<item:kubejs:incomplete_mechanical_engine>);
craftingTable.remove(<item:immersiveengineering:dust_aluminum>);
craftingTable.remove(<item:immersiveengineering:dust_electrum>);
craftingTable.remove(<item:immersiveengineering:dust_constantan>);
<recipetype:create:pressing>.remove(<tag:items:forge:plates>);
craftingTable.remove(<tag:items:forge:plates>);
<recipetype:create:pressing>.remove(<item:createdeco:cast_iron_sheet>);
<recipetype:create:pressing>.remove(<item:createdeco:netherite_sheet>);
<recipetype:create:pressing>.remove(<item:alloyed:bronze_sheet>);
<recipetype:create:compacting>.remove(<fluid:createaddition:seed_oil>);
