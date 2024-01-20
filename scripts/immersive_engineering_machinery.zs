import mods.immersiveengineering.AlloySmelter;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

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
<recipetype:immersiveengineering:alloy>.addRecipe("silicon_boule", <item:kubejs:silicon_dust> * 32, <item:minecraft:glowstone_dust> * 16, 6000, <item:kubejs:silicon_boule>);

//blast furnace recipe(name, input, time, output, slag)
<recipetype:immersiveengineering:blast_furnace>.addRecipe("pig_iron_blasting", <item:minecraft:raw_iron>, 1200, <item:kubejs:pig_iron>, <item:immersiveengineering:slag>);
<recipetype:immersiveengineering:blast_furnace>.addRecipe("pig_iron_blasting_crushed", <item:create:crushed_raw_iron>, 1200, <item:kubejs:pig_iron>, <item:immersiveengineering:slag>);
<recipetype:immersiveengineering:blast_furnace>.addRecipe("pig_iron_blasting_dust", <item:immersiveengineering:dust_iron>, 1200, <item:kubejs:pig_iron>, <item:immersiveengineering:slag>);

//press recipes(name, input, mold, energy, output)

<recipetype:immersiveengineering:metal_press>.addRecipe("small_gear_press", <item:minecraft:iron_nugget>, <item:immersiveengineering:mold_gear>, 600, <item:kubejs:small_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("medium_gear_press", <item:minecraft:iron_ingot>, <item:immersiveengineering:mold_gear>, 1200, <item:kubejs:medium_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("large_gear_press", <item:create:iron_sheet>, <item:immersiveengineering:mold_gear>, 2400, <item:kubejs:large_gear>);

// Blueprint.addRecipe(name, blueprintCategory (string), inputs, output)

<recipetype:immersiveengineering:blueprint>.addRecipe("clockwork_mechanism2", "components", [
    <item:kubejs:mechanism_casing>, <item:kubejs:nail> * 6, <item:kubejs:large_gear> * 6, <item:minecraft:chain> * 4, 
    <item:immersiveengineering:component_iron> * 3, <item:immersiveengineering:screwdriver>], 
    <item:kubejs:clockwork_mechanism>);

//<recipetype:immersiveengineering:crusher>.addRecipe("name", input, energy, output, additionalOutput %, additionalOutput %)

val ingots_crusher = [
    <item:kubejs:mithril_ingot>,
    <item:create:brass_ingot>,
    <item:alloyed:bronze_ingot>,
    <item:createdeco:cast_iron_ingot>,
    <item:create:zinc_ingot>,
    <item:byg:pendorite_scraps>,
    <item:minecraft:netherite_scrap>,
];

val dusts = [
<item:kubejs:mithril_dust>,
<item:kubejs:brass_dust>,
<item:kubejs:bronze_dust>,
<item:kubejs:cast_iron_dust>,
<item:kubejs:zinc_dust>,
<item:kubejs:pendorite_dust>,
<item:kubejs:netherite_dust>,
];
/*
for i, item in ingots_crusher {
    <recipetype:immersiveengineering:crusher>.addRecipe("ingot_to_grit" + i, ingots_crusher[i], 3000, dusts[i]);
}*/

// Mixer.addRecipe(recipePath as string, fluidInput as MCTag, inputItems as IIngredientWithAmount[], energy as int, output as Fluid, amount as int)
<tag:fluids:forge:water>.add(<fluid:minecraft:water>);

<recipetype:immersiveengineering:mixer>.addRecipe("chocholate_by_mixer", <tag:fluids:forge:milk>, [<item:minecraft:cocoa_beans>, <item:minecraft:sugar>], 500, <fluid:create:chocolate>, 250);
<recipetype:immersiveengineering:mixer>.addRecipe("chocholate_melting_by_mixer", <tag:fluids:forge:air>, [<item:create:bar_of_chocolate>], 500, <fluid:create:chocolate>, 250);
<recipetype:immersiveengineering:mixer>.addRecipe("bioethanol_by_mixer", <tag:fluids:forge:air>, [<item:minecraft:sugar>, <item:create:cinder_flour>, <item:createaddition:biomass>], 500, <fluid:createaddition:bioethanol>, 125);
<recipetype:immersiveengineering:mixer>.addRecipe("tea_by_mixer", <tag:fluids:forge:water>, [<tag:items:minecraft:leaves>], 500, <fluid:create:tea>, 500);
<recipetype:immersiveengineering:mixer>.addRecipe("lava_by_mixer", <tag:fluids:forge:air>, [<tag:items:forge:cobblestone>], 500, <fluid:minecraft:lava>, 50);
<recipetype:immersiveengineering:mixer>.addRecipe("slime_fluid_by_mixer", <tag:fluids:forge:air>, [<tag:items:forge:slimeballs>], 500, <fluid:create_things_and_misc:slime>, 100);
<recipetype:immersiveengineering:mixer>.addRecipe("honey_by_mixer", <tag:fluids:forge:air>, [<item:minecraft:honey_block>], 500, <fluid:create:honey>, 1000);
// <recipetype:immersiveengineering:squeezer>.addRecipe(recipePath as string, input as IIngredientWithAmount, energy as int, itemOutput as IItemStack)

<recipetype:immersiveengineering:crusher>.addRecipe("crushed_glass", <tag:items:forge:pure_silica_glass>, 3000, <item:kubejs:glass_grit>);

// Sawmill.addRecipe(recipePath as string, input as IIngredient, energy as int, output as IItemStack, outputSecondaries as IItemStack[])

<recipetype:immersiveengineering:sawmill>.addRecipe("silicon_wafer_by_sawmill", <item:kubejs:silicon_boule>, 1000, <item:kubejs:silicon_wafer> * 4, [<item:kubejs:silicon_dust>*2]);
