import mods.immersiveengineering.AlloySmelter;


val plates = [
    <item:create:copper_sheet>,
    <item:create:iron_sheet>,
    <item:create:golden_sheet>,
    <item:alloyed:steel_sheet>,
    <item:createdeco:cast_iron_sheet>,
    <item:createdeco:netherite_sheet>,
    <item:kubejs:mithril_plate>,
    <item:create_things_and_misc:experience_sheet>,
    <item:create_things_and_misc:rose_quartz_sheet>,
];

val ingots = [
    <item:minecraft:copper_ingot>,
    <item:minecraft:iron_ingot>,
    <item:minecraft:gold_ingot>,
    <item:alloyed:steel_ingot>,
    <item:createdeco:cast_iron_ingot>,
    <item:minecraft:netherite_ingot>,
    <item:kubejs:mithril_ingot>,
    <item:create:experience_nugget>,
    <item:create:polished_rose_quartz>,
];

//alloy kiln recipes (name, inputA,inputB,time,output)

<recipetype:immersiveengineering:alloy>.addRecipe("andesitealloy", <item:minecraft:andesite>, <item:minecraft:iron_nugget>, 600, <item:create:andesite_alloy>);
<recipetype:immersiveengineering:alloy>.addRecipe("andesitealloyzinc", <item:minecraft:andesite>, <item:create:zinc_nugget>, 600, <item:create:andesite_alloy>);

<recipetype:immersiveengineering:alloy>.addRecipe("leadsmelting", <item:immersiveengineering:raw_lead>, <item:create:cinder_flour>, 240, <item:immersiveengineering:ingot_lead>);
<recipetype:immersiveengineering:alloy>.addRecipe("leadsmeltingcrushed", <item:create:crushed_raw_lead>, <item:create:cinder_flour>, 240, <item:immersiveengineering:ingot_lead>);
<recipetype:immersiveengineering:alloy>.addRecipe("leadsmeltingdust", <item:immersiveengineering:dust_lead>, <item:create:cinder_flour>, 240, <item:immersiveengineering:ingot_lead>);
<recipetype:immersiveengineering:alloy>.addRecipe("mithril_alloy_kiln_silver", <item:minecraft:diamond>, <item:immersiveengineering:ingot_silver>, 1200, <item:kubejs:hot_mithril_ingot>);
<recipetype:immersiveengineering:alloy>.addRecipe("mithril_alloy_kiln_nickel", <item:minecraft:diamond>, <item:immersiveengineering:ingot_nickel>, 1200, <item:kubejs:hot_mithril_ingot>);
<recipetype:immersiveengineering:alloy>.addRecipe("pig_iron_refining", <item:kubejs:pig_iron>, <item:kubejs:lime_dust>, 600, <item:alloyed:steel_ingot>);
<recipetype:immersiveengineering:alloy>.addRecipe("glass", <item:kubejs:lime_dust>, <item:byg:white_sand>, 900, <item:minecraft:glass>);
//blast furnace recipe(name, input, time, output, slag)
<recipetype:immersiveengineering:blast_furnace>.addRecipe("pig_iron_blasting", <item:minecraft:raw_iron>, 1200, <item:kubejs:pig_iron>, <item:immersiveengineering:slag>);
<recipetype:immersiveengineering:blast_furnace>.addRecipe("pig_iron_blasting_crushed", <item:create:crushed_raw_iron>, 1200, <item:kubejs:pig_iron>, <item:immersiveengineering:slag>);
<recipetype:immersiveengineering:blast_furnace>.addRecipe("pig_iron_blasting_dust", <item:immersiveengineering:dust_iron>, 1200, <item:kubejs:pig_iron>, <item:immersiveengineering:slag>);
//press recipes(name, input, mold, energy, output)
for i, item in ingots {
    <recipetype:immersiveengineering:metal_press>.addRecipe("ingots_to_sheets" + i, ingots[i], <item:immersiveengineering:mold_plate>, 2400, plates[i]);
}

<recipetype:immersiveengineering:metal_press>.addRecipe("small_gear_press", <item:minecraft:iron_nugget>, <item:immersiveengineering:mold_gear>, 600, <item:kubejs:small_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("medium_gear_press", <item:minecraft:iron_ingot>, <item:immersiveengineering:mold_gear>, 1200, <item:kubejs:medium_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("large_gear_press", <item:create:iron_sheet>, <item:immersiveengineering:mold_gear>, 2400, <item:kubejs:large_gear>);

// Blueprint.addRecipe(name, blueprintCategory (string), inputs, output)

<recipetype:immersiveengineering:blueprint>.addRecipe("clockwork_mechanism2", "components", [
    <item:kubejs:mechanism_casing>, <item:kubejs:nail> * 6, <item:kubejs:large_gear> * 6, <item:minecraft:chain> * 4, 
    <item:immersiveengineering:component_iron> * 3, <item:immersiveengineering:screwdriver>], 
    <item:kubejs:clockwork_mechanism>);