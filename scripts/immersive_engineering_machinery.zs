import mods.immersiveengineering.AlloySmelter;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import mods.immersiveengineering.Fermenter;
import mods.immersiveengineering.Mixer;

val nope = <item:minecraft:air>;

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
<recipetype:immersiveengineering:blast_furnace>.addRecipe("cast_iron_blasting", <item:createdeco:cast_iron_ingot>, 1200, <item:minecraft:iron_ingot>, <item:immersiveengineering:slag>);

<recipetype:immersiveengineering:blast_furnace>.addRecipe("pig_iron_blasting", <item:minecraft:iron_ingot>, 1200, <item:kubejs:pig_iron>, <item:immersiveengineering:slag>);

//press recipes(name, input, mold, energy, output)
<recipetype:immersiveengineering:metal_press>.addRecipe("small_gear_press", <item:minecraft:iron_nugget>, <item:immersiveengineering:mold_gear>, 600, <item:kubejs:small_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("medium_gear_press", <item:minecraft:iron_ingot>, <item:immersiveengineering:mold_gear>, 1200, <item:kubejs:medium_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("large_gear_press", <item:create:iron_sheet>, <item:immersiveengineering:mold_gear>, 2400, <item:kubejs:large_gear>);
<recipetype:immersiveengineering:metal_press>.addRecipe("mithril_plate", <item:kubejs:mithril_ingot>, <item:immersiveengineering:mold_plate>, 2400, <item:kubejs:mithril_plate>);
<recipetype:immersiveengineering:metal_press>.addRecipe("electrum_plate_to_wire", <item:immersiveengineering:plate_electrum>, <item:immersiveengineering:mold_wire>, 2400, <item:immersiveengineering:wire_electrum>*2);
<recipetype:immersiveengineering:metal_press>.addRecipe("electrum_ingot_to_wire", <item:immersiveengineering:ingot_electrum>, <item:immersiveengineering:mold_wire>, 2400, <item:immersiveengineering:wire_electrum>*3);

// Blueprint.addRecipe(name, blueprintCategory (string), inputs, output)

<recipetype:immersiveengineering:blueprint>.addRecipe("clockwork_mechanism2", "components", [
    <item:kubejs:mechanism_casing>, <item:kubejs:nail> * 6, <item:kubejs:large_gear> * 6, <item:minecraft:chain> * 4, 
    <item:immersiveengineering:component_iron> * 3, <item:immersiveengineering:screwdriver>], 
    <item:kubejs:clockwork_mechanism>);


// Mixer.addRecipe(recipePath as string, fluidInput as MCTag, inputItems as IIngredientWithAmount[], energy as int, output as Fluid, amount as int)
<tag:fluids:forge:water>.add(<fluid:minecraft:water>);
<tag:fluids:forge:nope>.add(<fluid:minecraft:empty>);
<tag:fluids:forge:bio_diesel>.add(<fluid:immersiveengineering:biodiesel>);
<tag:fluids:forge:phenol>.add(<fluid:kubejs:phenol>);
<tag:fluids:forge:phenolic_resin>.add(<fluid:immersiveengineering:phenolic_resin>);
<tag:fluids:forge:acetaldehyde>.add(<fluid:immersiveengineering:acetaldehyde>);


<recipetype:immersiveengineering:mixer>.addRecipe("chocholate_by_mixer", <tag:fluids:forge:milk>, [<item:minecraft:cocoa_beans>, <item:minecraft:sugar>], 500, <fluid:create:chocolate>, 250);
<recipetype:immersiveengineering:mixer>.addRecipe("chocholate_melting_by_mixer", <tag:fluids:forge:nope>, [<item:create:bar_of_chocolate>], 500, <fluid:create:chocolate>, 250);
<recipetype:immersiveengineering:mixer>.addRecipe("tea_by_mixer", <tag:fluids:forge:water>, [<tag:items:minecraft:leaves>], 500, <fluid:create:tea>, 500);
<recipetype:immersiveengineering:mixer>.addRecipe("lava_by_mixer", <tag:fluids:forge:nope>, [<tag:items:forge:cobblestone>], 500, <fluid:minecraft:lava>, 50);
<recipetype:immersiveengineering:mixer>.addRecipe("slime_fluid_by_mixer", <tag:fluids:forge:nope>, [<tag:items:forge:slimeballs>], 500, <fluid:create_things_and_misc:slime>, 100);
<recipetype:immersiveengineering:mixer>.addRecipe("honey_by_mixer", <tag:fluids:forge:nope>, [<item:minecraft:honey_block>], 500, <fluid:create:honey>, 1000);
<recipetype:immersiveengineering:mixer>.addRecipe("acidic_glass_mix", <tag:fluids:forge:redstone_acids>, [<item:kubejs:glass_grit> * 4], 500, <fluid:kubejs:acidic_glass_mixture_slurry>, 1000);

<recipetype:immersiveengineering:mixer>.addRecipe("bio_diesel_by_mixer", <tag:fluids:forge:ethanol>, [<tag:items:forge:dusts/lead>], 10000, <fluid:immersiveengineering:biodiesel>, 250);
<recipetype:immersiveengineering:mixer>.addRecipe("acetaldehyde", <tag:fluids:forge:ethanol>, [<tag:items:forge:dusts/silver>], 1000, <fluid:immersiveengineering:acetaldehyde>, 50);

// Squeezer.addRecipe(recipePath as string, input as IIngredientWithAmount, energy as int, fluidOutput as IFluidStack, itemOutput as IItemStack)

<recipetype:immersiveengineering:squeezer>.addRecipe("seedoil", <tag:items:forge:seeds>, 5000, <fluid:createaddition:seed_oil> * 100, <item:createaddition:biomass>);


// Crusher.addRecipe(recipePath as string, input as IIngredient, energy as int, mainOutput as IItemStack, additionalOutputs as Percentaged<IItemStack>[])

<recipetype:immersiveengineering:crusher>.addRecipe("crushed_glass", <tag:items:forge:pure_silica_glass>, 3000, <item:kubejs:glass_grit>);

// Sawmill.addRecipe(recipePath as string, input as IIngredient, energy as int, output as IItemStack, outputSecondaries as IItemStack[])

<recipetype:immersiveengineering:sawmill>.addRecipe("silicon_wafer_by_sawmill", <item:kubejs:silicon_boule>, 1000, <item:kubejs:silicon_wafer> * 4, [<item:kubejs:silicon_dust>*2]);

// Fermenter.addRecipe(recipePath as string, input as IIngredientWithAmount, energy as int, itemOutput as IItemStack, fluidOutput as IFluidStack)

<recipetype:immersiveengineering:fermenter>.addRecipe("seedoil_fermentation", <tag:items:forge:seeds>, 500, <item:createaddition:biomass>, <fluid:createaddition:seed_oil> * 150);
<recipetype:immersiveengineering:fermenter>.addRecipe("methanol_fermentation", <tag:items:minecraft:logs>, 500, <item:createaddition:biomass>, <fluid:immersiveengineering:plantoil> * 150);

//<recipetype:immersiveengineering:refinery>.addRecipe(recipePath as string, fluidInput1 as Many<MCTag>, fluidInput2 as Many<MCTag>, catalyst as IIngredient, energy as int, output as IFluidStack);

<recipetype:immersiveengineering:refinery>.addRecipe("bio_ethanol", <tag:fluids:forge:plantoil> * 15, <tag:fluids:forge:methanol> * 10, <tag:items:forge:dusts/coal_coke>, 1000, <fluid:createaddition:bioethanol> * 20);

<recipetype:immersiveengineering:refinery>.addRecipe("phenolyc_resin", <tag:fluids:forge:phenol> * 15, <tag:fluids:forge:acetaldehyde> * 10, <tag:items:forge:gems/quartz>, 1000, <fluid:immersiveengineering:phenolic_resin> * 20);

// ArcFurnace.addRecipe(recipePath as string, mainIngredient as IIngredientWithAmount, additives as IIngredientWithAmount[], time as int, energy as int, outputs as IItemStack[], slag as IItemStack)

<recipetype:immersiveengineering:arc_furnace>.addRecipe("mithril_alloy_kiln_silver_by_arc_furnace", nope, [<item:minecraft:diamond> * 1, <item:immersiveengineering:ingot_silver> * 1], 2000, 100000, [<item:kubejs:hot_mithril_ingot>]);

<recipetype:immersiveengineering:arc_furnace>.addRecipe("mithril_alloy_kiln_nickel_by_arc_furnace", nope, [<item:minecraft:diamond> * 1, <item:immersiveengineering:ingot_nickel> * 1], 2000, 100000, [<item:kubejs:hot_mithril_ingot>]);