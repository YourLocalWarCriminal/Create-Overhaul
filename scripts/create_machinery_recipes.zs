import mods.create.MillingManager;
import mods.create.DeployerApplicationManager;
import mods.create.MixingManager;
import crafttweaker.api.recipe.BlastFurnaceRecipeManager;
import mods.create.MechanicalCrafterManager;
import mods.create.EmptyingManager;
import mods.create.CompactingManager;

//variables

val nope = <item:minecraft:air>;

val rods = [
    <item:createaddition:brass_rod>,
    <item:immersiveengineering:stick_steel>,
    <item:immersiveengineering:stick_aluminum>,
    <item:createaddition:copper_rod>,
    <item:createaddition:iron_rod>,
    <item:createaddition:gold_rod>,
];

val ingots = [
    <item:create:brass_ingot>,
    <item:alloyed:steel_ingot>,
    <item:immersiveengineering:ingot_aluminum>,
    <item:minecraft:copper_ingot>,
    <item:minecraft:iron_ingot>,
    <item:minecraft:gold_ingot>,
];
//this is separate cuz im lazy and i dont want to rearrange everything
val ingots_press = [
    <item:minecraft:copper_ingot>,
    <item:minecraft:iron_ingot>,
    <item:minecraft:gold_ingot>,
    <item:immersiveengineering:ingot_aluminum>,
    <item:immersiveengineering:ingot_lead>,
    <item:immersiveengineering:ingot_silver>,
    <item:immersiveengineering:ingot_nickel>,
    <item:immersiveengineering:ingot_constantan>,
    <item:immersiveengineering:ingot_electrum>,
    <item:alloyed:bronze_ingot>,
    <item:create:brass_ingot>,
    <item:create:zinc_ingot>,
    <item:alloyed:steel_ingot>,
    <item:minecraft:netherite_ingot>,
    <item:immersiveengineering:ingot_uranium>,
    <item:createdeco:cast_iron_ingot>,
    <item:create:experience_nugget>,
    <item:create:polished_rose_quartz>,
];

val plates_press = [
    <item:create:copper_sheet>,
    <item:create:iron_sheet>,
    <item:create:golden_sheet>,
    <item:immersiveengineering:plate_aluminum>,
    <item:immersiveengineering:plate_lead>,
    <item:immersiveengineering:plate_silver>,
    <item:immersiveengineering:plate_nickel>,
    <item:immersiveengineering:plate_constantan>,
    <item:immersiveengineering:plate_electrum>,
    <item:alloyed:bronze_sheet>,
    <item:create:brass_sheet>,
    <item:createaddition:zinc_sheet>,
    <item:alloyed:steel_sheet>,
    <item:createdeco:netherite_sheet>,
    <item:immersiveengineering:plate_uranium>,
    <item:createdeco:cast_iron_sheet>,
    <item:create_things_and_misc:experience_sheet>,
    <item:create_things_and_misc:rose_quartz_sheet>,
];

val screwdriver = <item:immersiveengineering:screwdriver>.reuse();
//<recipetype:create:pressing>.addRecipe(name, output, input, duration)
<recipetype:create:pressing>.addRecipe("mithrilplate", [<item:kubejs:mithril_plate> % 100], <item:kubejs:mithril_ingot> * 2, 200);
/*for i, item in ingots_press {
    <recipetype:create:pressing>.addRecipe("ingots_to_plates" + i, [plates_press[i]*0], ingots_press[i]*2, 200);
}*/
// CompactingManager.addRecipe(name as string, heat as HeatCondition, outputs as IFluidStack[], itemInputs as IIngredientWithAmount[], fluidInputs as FluidIngredient[], duration as int) 
// CompactingManager.addRecipe(name as string, heat as HeatCondition, outputs as Percentaged<IItemStack>[], itemInputs as IIngredientWithAmount[], fluidInputs as FluidIngredient[], duration as int)

<recipetype:create:compacting>.addRecipe('slurry_to_mix', <constant:create:heat_condition:none>, [(<item:kubejs:acidic_glass_mixture> * 2) % 100], [nope], [<fluid:kubejs:acidic_glass_mixture_slurry> * 250], 300);
<recipetype:create:compacting>.addRecipe('sturdy_block', <constant:create:heat_condition:superheated>, [<item:create_things_and_misc:sturdy_sheet_block> % 100], [<item:create:sturdy_sheet> * 10], [], 1200);
<recipetype:create:compacting>.addRecipe('phenol', <constant:create:heat_condition:superheated>, [<fluid:kubejs:phenol> * 10], [], [<fluid:immersiveengineering:creosote> * 20], 60);


// FillingManager.addRecipe(name, output, inputContainer, inputFluid, duration);
<recipetype:create:filling>.addRecipe("blast_brick", <item:immersiveengineering:blastbrick> * 3, <item:minecraft:bricks> * 3, <fluid:create:potion>.withTag({Potion: "minecraft:long_fire_resistance" as string}) * 250, 200);
<recipetype:create:filling>.addRecipe("blast_brick2", <item:immersiveengineering:blastbrick> * 3, <item:minecraft:bricks> * 3, <fluid:immersiveengineering:potion>.withTag({Potion: "minecraft:long_fire_resistance" as string}) * 250, 200);
<recipetype:create:filling>.addRecipe("redstone_wire", <item:immersiveengineering:wirecoil_redstone>, <item:immersiveengineering:wirecoil_structure_steel>, <fluid:immersiveengineering:redstone_acid> * 5, 20);

// BlastFurnaceRecipeManager.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);

//millstone recipes(name,[outputs],input,time)
<recipetype:create:milling>.addRecipe("cinderflour", [<item:create:cinder_flour> % 100], <item:minecraft:netherrack>, 160);
<recipetype:create:milling>.addRecipe("blaze_powder", [<item:minecraft:blaze_powder> * 2 % 25,], <tag:items:forge:rods/blaze>, 320);

//item application(name,output, block, held item, keep item? as bool)
<recipetype:create:item_application>.addRecipe("andesitecasing", [<item:create:andesite_casing> % 100], <tag:items:forge:treated_wood>, <item:create:andesite_alloy>, false);
<recipetype:create:item_application>.addRecipe("siftinggravel", [<item:create:copper_nugget> % 25, <item:minecraft:flint> % 25], <item:minecraft:gravel>, <item:farmersdelight:safety_net>, true);
<recipetype:create:item_application>.addRecipe("sandsifting", [<item:create:copper_nugget> % 10, <item:byg:mud_ball> % 25, <item:minecraft:clay_ball> % 15], <tag:items:forge:sand>, <item:farmersdelight:safety_net>, true);
<recipetype:create:item_application>.addRecipe("item_drain", [<item:create:item_drain>], <item:create:copper_casing>, <tag:items:forge:bars>, false);
<recipetype:create:item_application>.addRecipe("portable_interface3", [<item:create:portable_fluid_interface>], <item:create:portable_storage_interface>, <item:create:copper_casing>, true);
<recipetype:create:item_application>.addRecipe("portable_interface4", [<item:create:portable_storage_interface>], <item:create:portable_fluid_interface>, <item:create:andesite_casing>, true);
<recipetype:create:item_application>.addRecipe("valve", [<item:create:fluid_valve>], <item:create:fluid_pipe>, <item:create:shaft>, false);
<recipetype:create:item_application>.addRecipe("mechanical_pump", [<item:create:mechanical_pump>], <item:create:fluid_pipe>, <item:create_sa:hydraulic_engine>, false);
<recipetype:create:item_application>.addRecipe("spout", [<item:create:spout>], <item:create:fluid_tank>, <item:create_sa:hydraulic_engine>, false);
<recipetype:create:item_application>.addRecipe("clockwork_bearing2", [<item:create:clockwork_bearing>], <item:create:mechanical_bearing>, <item:kubejs:clockwork_mechanism>, false);

<recipetype:create:item_application>.addRecipe("hose_pulley", [<item:create:elevator_pulley>], <item:create:hose_pulley>, <item:create:brass_casing>, true);
<recipetype:create:item_application>.addRecipe("hose_pulley2", [<item:create:rope_pulley>], <item:create:hose_pulley>, <item:create:andesite_casing>, true);
<recipetype:create:item_application>.addRecipe("rope_pulley", [<item:create:elevator_pulley>], <item:create:rope_pulley>, <item:create:brass_casing>, true);
<recipetype:create:item_application>.addRecipe("rope_pulley2", [<item:create:hose_pulley>], <item:create:rope_pulley>, <item:create:copper_casing>, true);
<recipetype:create:item_application>.addRecipe("elevator_pulley", [<item:create:hose_pulley>], <item:create:elevator_pulley>, <item:create:copper_casing>, true);
<recipetype:create:item_application>.addRecipe("elevator_pulley2", [<item:create:rope_pulley>], <item:create:elevator_pulley>, <item:create:andesite_casing>, true);

<recipetype:create:item_application>.addRecipe("bottom_flue_brick", [<item:kubejs:flue_bottom_bricks>], <item:minecraft:smooth_stone_slab>, <item:kubejs:flue_bricks>, false);

<recipetype:create:item_application>.addRecipe("sail_application", [<item:create:white_sail>], <item:create:sail_frame>, <item:minecraft:white_wool>, false);

//deplyoer application(name,deployed onto item, the held item, output, keep held item as bool)
//mixer(name,heat,[output], [input], [inputFluid], time)
<recipetype:create:mixing>.addRecipe("rosequartz", <constant:create:heat_condition:none>, [<item:create:rose_quartz> % 100], [<item:minecraft:quartz>, <item:minecraft:redstone> * 8], [<fluid:immersiveengineering:redstone_acid> * 100], 300);
<recipetype:create:mixing>.addRecipe("glass_mixer",<constant:create:heat_condition:heated>, [<item:minecraft:glass> * 2 % 100], [<item:minecraft:sand>, <item:minecraft:quartz>, <item:kubejs:lime_dust>], [], 600);
<recipetype:create:mixing>.addRecipe("glass_white_sand_mixing", <constant:create:heat_condition:heated>, [<item:minecraft:glass> % 100], [<item:byg:white_sand>, <item:kubejs:lime_dust>], [], 600);
<recipetype:create:mixing>.addRecipe("redstone_acid", <constant:create:heat_condition:none>, [<fluid:immersiveengineering:redstone_acid> * 500], [<item:minecraft:redstone>*4], [<fluid:minecraft:water> * 500]);
<recipetype:create:mixing>.addRecipe("netherite_ingot", <constant:create:heat_condition:superheated>, [<item:minecraft:netherite_ingot>], [<item:minecraft:netherite_scrap>*4, <tag:items:forge:ingots/gold>*4], [], 1200);
<recipetype:create:mixing>.addRecipe("solder", <constant:create:heat_condition:superheated>, [<fluid:kubejs:solder> * 100], [<item:create:zinc_ingot>, <item:minecraft:iron_ingot>], [], 300);
<recipetype:create:mixing>.addRecipe("acidic_glass_mix_to_silicon", <constant:create:heat_condition:heated>, [<item:kubejs:silicon_dust>], [<item:kubejs:lime_dust> * 1, <item:kubejs:acidic_glass_mixture>], [], 600);
<recipetype:create:mixing>.addRecipe("divine_alloy", <constant:create:heat_condition:superheated>, [<fluid:kubejs:divine_alloy> * 1000], [<item:minecraft:gold_ingot> * 4, <item:create:brass_ingot> * 4,<item:byg:pendorite_ingot> * 4,<item:minecraft:netherite_ingot> * 4,<item:alloyed:steel_ingot> * 4,<item:immersiveengineering:ingot_uranium> * 4,<item:kubejs:mithril_ingot> * 4,<item:immersiveengineering:ingot_silver> * 4]);
//saw recipes(name,output,input,time)
<recipetype:create:cutting>.addRecipe("treatedsticks",<item:immersiveengineering:stick_treated> * 2 % 100 , <tag:items:forge:treated_wood>, 220);
<recipetype:create:cutting>.addRecipe("silicon_wafer_by_mechanical_saw", <item:kubejs:silicon_wafer> * 4, <item:kubejs:silicon_boule>, 1200);
/*for i, item in ingots {
    <recipetype:create:cutting>.addRecipe("ingots_to_rods" + i, rods[i]*2, ingots[i], 800);
}*/

<recipetype:create:cutting>.addRecipe("bolt", <item:kubejs:bolt>*2, <item:immersiveengineering:stick_iron>, 400);
<recipetype:create:cutting>.addRecipe("nail", <item:kubejs:nail>*2, <item:create:iron_sheet>, 400);
<recipetype:create:cutting>.addRecipe("nailsteel", <item:kubejs:nail>*4, <item:alloyed:steel_sheet>, 400);  
<recipetype:create:cutting>.addRecipe("boltsteel", <item:kubejs:bolt>*4, <item:immersiveengineering:stick_steel>, 400);  

// MechanicalCrafterManager.addRecipe(name, output, ingredients[][]);

<recipetype:create:mechanical_crafting>.addRecipe("crushing_wheel", <item:create:crushing_wheel>, [
    [<tag:items:forge:plates/steel>,  <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <tag:items:forge:plates/steel>],
    [<item:minecraft:smooth_stone>, <item:immersiveengineering:stick_steel>, <item:immersiveengineering:stick_treated>, <item:immersiveengineering:stick_steel>, <item:minecraft:smooth_stone>],
    [<item:minecraft:smooth_stone>, <item:immersiveengineering:stick_treated>, <item:create:shaft>, <item:immersiveengineering:stick_treated>, <item:minecraft:smooth_stone>],
    [<item:minecraft:smooth_stone>, <item:immersiveengineering:stick_steel>, <item:immersiveengineering:stick_treated>, <item:immersiveengineering:stick_steel>, <item:minecraft:smooth_stone>],
    [<tag:items:forge:plates/steel>,  <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <tag:items:forge:plates/steel>]
]);

<recipetype:create:mechanical_crafting>.addRecipe("alternator", <item:createaddition:alternator>, [
    [<item:kubejs:bolt>, <item:alloyed:steel_sheet>, <item:alloyed:steel_sheet>, <item:alloyed:steel_sheet>, <item:kubejs:bolt>],
    [<item:alloyed:steel_sheet>, <item:createaddition:capacitor>, <item:kubejs:induction_mechanism>, <item:createaddition:capacitor>, <item:alloyed:steel_sheet>],
    [<item:alloyed:steel_sheet>, <item:kubejs:induction_mechanism>, <item:create:shaft>, <item:kubejs:induction_mechanism>, <item:alloyed:steel_sheet>],
    [<item:alloyed:steel_sheet>, <item:immersiveengineering:coil_hv>, <item:kubejs:induction_mechanism>, <item:immersiveengineering:coil_hv>, <item:alloyed:steel_sheet>],
    [<item:kubejs:bolt>, <item:alloyed:steel_sheet>, <item:alloyed:steel_sheet>, <item:alloyed:steel_sheet>, <item:kubejs:bolt>],
]);

<recipetype:create:mechanical_crafting>.addRecipe("motor", <item:createaddition:electric_motor>, [
    [<item:kubejs:bolt>, <item:alloyed:bronze_sheet>, <item:alloyed:bronze_sheet>, <item:alloyed:bronze_sheet>, <item:kubejs:bolt>],
    [<item:alloyed:bronze_sheet>, <item:immersiveengineering:wirecoil_copper>, <item:create:shaft>, <item:immersiveengineering:wirecoil_copper>, <item:alloyed:bronze_sheet>],
    [<item:alloyed:bronze_sheet>, <item:createaddition:capacitor>, <item:immersiveengineering:dust_coke>, <item:createaddition:capacitor>, <item:alloyed:bronze_sheet>],
    [<item:alloyed:bronze_sheet>, <item:kubejs:induction_mechanism>, <item:immersiveengineering:wirecoil_copper>, <item:kubejs:induction_mechanism>, <item:alloyed:bronze_sheet>],
    [<item:kubejs:bolt>, <item:alloyed:bronze_sheet>, <item:alloyed:bronze_sheet>, <item:alloyed:bronze_sheet>, <item:kubejs:bolt>],
]);

<recipetype:create:mechanical_crafting>.addRecipe("light_engineering_block", <item:immersiveengineering:light_engineering> * 3, [
    [nope, <item:immersiveengineering:plate_nickel>, <item:immersiveengineering:plate_nickel>, <item:immersiveengineering:plate_nickel>, nope],
    [<item:immersiveengineering:plate_nickel>, <item:kubejs:mechanical_elbow>, <item:immersiveengineering:component_electronic>, <item:kubejs:mechanical_elbow>, <item:immersiveengineering:plate_nickel>],
    [<item:immersiveengineering:plate_nickel>, <item:kubejs:arithmetic_mechanism>, <item:alloyed:steel_casing>, <item:kubejs:induction_mechanism>, <item:immersiveengineering:plate_nickel>],
    [<item:immersiveengineering:plate_nickel>, <item:create:fluid_pipe>, <item:immersiveengineering:coil_hv>, <item:create:fluid_pipe>, <item:immersiveengineering:plate_nickel>],
    [nope, <item:immersiveengineering:plate_nickel>, <item:immersiveengineering:plate_nickel>, <item:immersiveengineering:plate_nickel>, nope],
]);

<recipetype:create:mechanical_crafting>.addRecipe("heavy_engineering_block", <item:immersiveengineering:heavy_engineering> * 5, [
    [nope, <item:alloyed:steel_sheet>, <tag:items:forge:plates/aluminum>, <item:alloyed:steel_sheet>, nope],
    [<item:alloyed:steel_sheet>, <item:immersiveengineering:fluid_pipe>, <item:create:precision_mechanism>, <item:immersiveengineering:fluid_pipe>, <item:alloyed:steel_sheet>],
    [<tag:items:forge:plates/aluminum>, <item:immersiveengineering:component_electronic>, <item:immersiveengineering:light_engineering>, <item:immersiveengineering:component_electronic>, <tag:items:forge:plates/aluminum>],
    [<item:alloyed:steel_sheet>, <item:kubejs:mechanical_engine>, <item:immersiveengineering:component_electronic_adv>, <item:kubejs:mechanical_engine>, <item:alloyed:steel_sheet>],
    [nope, <item:alloyed:steel_sheet>, <tag:items:forge:plates/aluminum>, <item:alloyed:steel_sheet>, nope]
]);

//sequenced ASSembly(trust me this was ass to figure out)(name,output(transitionTo), input(require), loops, Outher Outputs(addOutput), addStep)
/*A blank crafting recipe
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("precisionmechanism")
                                                      .transitionTo(<item:create:large_cogwheel>)
                                                      .require(<item:create:andesite_alloy>)
                                                      .loops(3)
                                                      .addOutput(<item:create:large_cogwheel> * 6, 32)
                                                      .addOutput(<item:create:andesite_alloy>, 2)
                                                      .addOutput(<item:minecraft:andesite>, 1)
                                                      .addOutput(<item:create:cogwheel>, 1)
                                                      .addOutput(<item:minecraft:stick>, 1)
                                                      .addOutput(<item:minecraft:iron_nugget>, 1)
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(50))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:minecraft:planks>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:minecraft:wooden_buttons>))
                                                      .addStep<mods.createtweaker.CuttingRecipe>((rb) => rb.duration(50))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:water> * 50)));
*/
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("precisionmechanism")
                                                      .transitionTo(<item:create:incomplete_precision_mechanism>)
                                                      .require(<item:kubejs:clockwork_mechanism>)
                                                      .loops(1)
                                                      .addOutput(<item:create:precision_mechanism>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:large_gear>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:component_steel>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(300))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:electron_tube>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:electron_tube>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(300))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("mechanical_engine")
                                                      .transitionTo(<item:kubejs:incomplete_mechanical_engine>)
                                                      .require(<item:kubejs:mechanism_casing>)
                                                      .loops(1)
                                                      .addOutput(<item:kubejs:mechanical_engine>, 32)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:large_gear>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:large_gear>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:medium_gear>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(50))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("hydraulic_engine")
                                                      .transitionTo(<item:create_sa:incomplete_hydraulic_engine>)
                                                      .require(<item:kubejs:mechanical_engine>)
                                                      .loops(2)
                                                      .addOutput(<item:create_sa:hydraulic_engine>, 32)
                                                      .addOutput(<item:create:copper_nugget>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:large_cogwheel>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:fluid_pipe>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:copper_sheet>))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("coolmithril")
                                                      .transitionTo(<item:kubejs:hot_mithril_ingot>)
                                                      .require(<item:kubejs:hot_mithril_ingot>)
                                                      .loops(10)
                                                      .addOutput(<item:kubejs:mithril_ingot>, 32)
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:water> * 100))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:createaddition:seed_oil> * 100))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("steel_casing")
                                                      .transitionTo(<item:immersiveengineering:treated_wood_horizontal>)
                                                      .require(<tag:items:forge:treated_wood>)
                                                      .loops(12)
                                                      .addOutput(<item:alloyed:steel_casing>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:stick_steel>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:bolt>))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("fluid_tank")
                                                      .transitionTo(<item:create:copper_casing>)
                                                      .require(<item:create:copper_casing>)
                                                      .loops(4)
                                                      .addOutput(<item:create:fluid_tank>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:glass_panes>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(500))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("pipe2")
                                                      .transitionTo(<item:create:copper_sheet>)
                                                      .require(<tag:items:forge:plates/copper>)
                                                      .loops(4)
                                                      .addOutput(<item:create:fluid_pipe>, 1)
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(200))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("smart_pipe2")
                                                      .transitionTo(<item:create:fluid_pipe>)
                                                      .require(<item:create:fluid_pipe>)
                                                      .loops(1)
                                                      .addOutput(<item:create:smart_fluid_pipe>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:brass_sheet>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(200))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(200))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:attribute_filter>))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("leverage_mechanism2")
                                                      .transitionTo(<item:kubejs:leverage_mechanism>)
                                                      .require(<item:kubejs:mechanical_engine>)
                                                      .loops(1)
                                                      .addOutput(<item:kubejs:leverage_mechanism>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:leverage_components>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(200))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(200))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(200))
                                                      );
                                                      
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("advanced_mechanism_casing")
                                                      .transitionTo(<item:kubejs:advanced_mechanism_casing>)
                                                      .require(<tag:items:forge:plates/cast_iron>)
                                                      .loops(2)
                                                      .addOutput(<item:kubejs:advanced_mechanism_casing>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:rods/iron>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(500))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:ingots/brass>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(500))
                                                      );
 
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("clockwork_mechanism")
                                                      .transitionTo(<item:kubejs:clockwork_mechanism>)
                                                      .require(<item:kubejs:advanced_mechanism_casing>)
                                                      .loops(2)
                                                      .addOutput(<item:kubejs:clockwork_mechanism>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:component_iron>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(200))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:nail>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:large_gear>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:medium_gear>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:chain>))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("component_iron")
                                                      .transitionTo(<item:immersiveengineering:component_iron>)
                                                      .require(<tag:items:forge:rods/copper>)
                                                      .loops(2)
                                                      .addOutput(<item:immersiveengineering:component_iron>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:small_gear>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:medium_gear>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:plates/iron>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(350))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("steam_engine")
                                                      .transitionTo(<item:create:fluid_valve>)
                                                      .require(<item:create:fluid_valve>)
                                                      .loops(4)
                                                      .addOutput(<item:create_sa:steam_engine>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:small_gear>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:plates/brass>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:medium_gear>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(500))
                                                      );
                                                      
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("steam_engine2")
                                                      .transitionTo(<item:alloyed:steel_casing>)
                                                      .require(<item:alloyed:steel_casing>)
                                                      .loops(1)
                                                      .addOutput(<item:create:steam_engine>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:fluid_pipe>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(200))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create_sa:steam_engine>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(200))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:mechanical_elbow>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:mechanical_elbow>))
                                                      );                                                      

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("component_steel")
                                                      .transitionTo(<item:immersiveengineering:component_steel>)
                                                      .require(<item:immersiveengineering:component_iron>)
                                                      .loops(2)
                                                      .addOutput(<item:immersiveengineering:component_steel>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:medium_gear>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:large_gear>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:plates/steel>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(700))
                                                      );
                
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("brass_hand")
                                                      .transitionTo(<item:create:brass_hand>)
                                                      .require(<tag:items:forge:storage_blocks/brass>)
                                                      .loops(12)
                                                      .addOutput(<item:create:brass_hand>, 1)
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100000))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("deployer")
                                                      .transitionTo(<item:create:deployer>)
                                                      .require(<item:create:andesite_casing>)
                                                      .loops(1)
                                                      .addOutput(<item:create:deployer>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:clockwork_mechanism>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:component_steel>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:chain>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:shaft>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:brass_hand>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(300))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("electron_tube")
                                                      .transitionTo(<item:create:polished_rose_quartz>)
                                                      .require(<item:create:polished_rose_quartz>)
                                                      .loops(1)
                                                      .addOutput(<item:create:electron_tube> * 2, 1)
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:immersiveengineering:redstone_acid> * 100))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:golden_sheet>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:zinc_sheet>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100)));

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("vacuum_tube")
                                                      .transitionTo(<item:create:electron_tube>)
                                                      .require(<item:create:electron_tube>)
                                                      .loops(1)
                                                      .addOutput(<item:immersiveengineering:electron_tube> * 3, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:wirecoil_copper>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:gold_rod>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:copper_rod>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:stick_steel>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100)));

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("arithmetic_mechanism")
                                                      .transitionTo(<item:kubejs:clockwork_mechanism>)
                                                      .require(<item:kubejs:clockwork_mechanism>)
                                                      .loops(1)
                                                      .addOutput(<item:kubejs:arithmetic_mechanism>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:electron_tube>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:copper_wire>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:component_steel>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:gold_wire>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100)));           

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("induction_component")
                                                      .transitionTo(<item:kubejs:basic_backboard>)
                                                      .require(<item:kubejs:basic_backboard>)
                                                      .loops(1)
                                                      .addOutput(<item:kubejs:induction_mechanism>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:coil_mv>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create_sa:copper_magnet>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:large_gear>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:component_steel>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:copper_wire>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:copper_wire>)));

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("magnet")
                                                      .transitionTo(<item:create_sa:copper_magnet>)
                                                      .require(<item:createaddition:brass_rod>)
                                                      .loops(1)
                                                      .addOutput(<item:create_sa:copper_magnet> * 3, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:netherite_dust>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:netherite_dust>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100)));

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("sulfur")
                                                      .transitionTo(<item:immersiveengineering:dust_sulfur>)
                                                      .require(<item:kubejs:netherite_dust>)
                                                      .loops(9)
                                                      .addOutput(<item:immersiveengineering:dust_sulfur>, 2)
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(200))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:blaze_powder>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(200)));                                                      


<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("anchor")
                                                      .transitionTo(<item:vs_eureka:anchor>)
                                                      .require(<tag:items:forge:storage_blocks/cast_iron>)
                                                      .loops(25)
                                                      .addOutput(<item:vs_eureka:anchor>, 1)
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(400))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("brass_casing")
                                                      .transitionTo(<item:immersiveengineering:treated_wood_horizontal>)
                                                      .require(<tag:items:forge:treated_wood>)
                                                      .loops(4)
                                                      .addOutput(<item:create:brass_casing>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:brass_rod>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:brass_rod>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:brass_rod>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:brass_rod>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:alloyed:bronze_sheet>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(200))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(200)));

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("capacitor")
                                                      .transitionTo(<item:immersiveengineering:stick_steel>)
                                                      .require(<item:immersiveengineering:stick_steel>)
                                                      .loops(1)
                                                      .addOutput(<item:createaddition:capacitor> * 2, 1)
                                                      .addStep<mods.createtweaker.CuttingRecipe>((rb) => rb.duration(50))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createdeco:zinc_sheet>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(50))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:copper_sheet>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(50))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:paper>)));

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("accumulator")
                                                      .transitionTo(<item:create:brass_casing>)
                                                      .require(<item:create:brass_casing>)
                                                      .loops(1)
                                                      .addOutput(<item:createaddition:modular_accumulator>, 1)
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:immersiveengineering:redstone_acid> * 750))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:iron_rod>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:copper_rod>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:alloyed:bronze_sheet>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:alloyed:bronze_sheet>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:alloyed:bronze_sheet>)));

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("electronic_component")
                                                      .transitionTo(<item:kubejs:basic_backboard>)
                                                      .require(<item:kubejs:basic_backboard>)
                                                      .loops(2)
                                                      .addOutput(<item:immersiveengineering:component_electronic>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:electron_tube>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:electron_tube>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:capacitor>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:coil_mv>))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:kubejs:solder> * 200))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("rs_engineering")
                                                      .transitionTo(<item:alloyed:steel_casing>)
                                                      .require(<item:alloyed:steel_casing>)
                                                      .loops(1)
                                                      .addOutput(<item:immersiveengineering:rs_engineering>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:component_electronic>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:component_electronic>))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:kubejs:solder> * 500))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:capacitor>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:capacitor>))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:kubejs:solder> * 200))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:sheetmetal_steel>))
                                                      );                                                      

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("basic_backboard")
                                                      .transitionTo(<item:immersiveengineering:slab_treated_wood_horizontal>)
                                                      .require(<item:immersiveengineering:slab_treated_wood_horizontal>)
                                                      .loops(1)
                                                      .addOutput(<item:kubejs:basic_backboard>, 1)
                                                      .addStep<mods.createtweaker.CuttingRecipe>((rb) => rb.duration(50))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:create_things_and_misc:slime> * 100))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:copper_sheet>))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:create_things_and_misc:slime> * 100))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(50))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("transistor")
                                                      .transitionTo(<item:kubejs:silicon_wafer>)
                                                      .require(<item:kubejs:silicon_wafer>)
                                                      .loops(1)
                                                      .addOutput(<item:kubejs:transistor>*2, 1)
                                                      .addStep<mods.createtweaker.CuttingRecipe>((rb) => rb.duration(50))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:immersiveengineering:redstone_acid> * 200))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:brass_rod>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:rods/aluminum>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:brass_rod>))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:kubejs:solder> * 250))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("advanced_electronic_component")
                                                      .transitionTo(<item:immersiveengineering:component_electronic>)
                                                      .require(<item:immersiveengineering:component_electronic>)
                                                      .loops(3)
                                                      .addOutput(<item:immersiveengineering:component_electronic_adv>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:transistor>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:electron_tube>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:electron_tube>))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:kubejs:solder> * 250))
                                                      );                                                      

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("plastic_circuit_board")
                                                      .transitionTo(<item:immersiveengineering:plate_duroplast>)
                                                      .require(<item:immersiveengineering:plate_duroplast>)
                                                      .loops(1)
                                                      .addOutput(<item:immersiveengineering:circuit_board>, 1)
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:create_things_and_misc:slime> * 100))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:copper_sheet>))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:create_things_and_misc:slime> * 100))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:plate_electrum>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:plate_duroplast>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(50))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:immersiveengineering:redstone_acid> * 300))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("logic_circuit")
                                                      .transitionTo(<item:immersiveengineering:circuit_board>)
                                                      .require(<item:immersiveengineering:circuit_board>)
                                                      .loops(1)
                                                      .addOutput(<item:immersiveengineering:logic_circuit>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:component_electronic>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:component_electronic>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:capacitor>))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:kubejs:solder> * 250))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:capacitor>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:component_electronic_adv>))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:kubejs:solder> * 250))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("heatengine")
                                                      .transitionTo(<item:kubejs:mechanical_engine>)
                                                      .require(<item:kubejs:mechanical_engine>)
                                                      .loops(1)
                                                      .addOutput(<item:create_sa:heat_engine>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:blaze_burner>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:sturdy_sheet>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:alloyed:steel_sheet>))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:kubejs:solder> * 500))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:sturdy_sheet>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:tnt>))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("basic_bullet")
                                                      .transitionTo(<item:immersiveengineering:empty_casing>)
                                                      .require(<item:immersiveengineering:empty_casing>)
                                                      .loops(1)
                                                      .addOutput(<item:cgm:basic_bullet>,1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:nugget_lead>))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("advanced_bullet")
                                                      .transitionTo(<item:immersiveengineering:empty_casing>)
                                                      .require(<item:immersiveengineering:empty_casing>)
                                                      .loops(1)
                                                      .addOutput(<item:cgm:advanced_bullet>,1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:alloyed:steel_nugget>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:alloyed:steel_nugget>))
                                                      );
                                                    
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("shell")
                                                      .transitionTo(<item:immersiveengineering:empty_shell>)
                                                      .require(<item:immersiveengineering:empty_shell>)
                                                      .loops(1)
                                                      .addOutput(<item:cgm:shell>,1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:metal_grit>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:metal_grit>))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("missile")
                                                      .transitionTo(<item:immersiveengineering:plate_aluminum>)
                                                      .require(<item:immersiveengineering:plate_aluminum>)
                                                      .loops(1)
                                                      .addOutput(<item:cgm:missile>,1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:plate_aluminum>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(50))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:tnt>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create_sa:heat_engine>))
                                                      );                                                      

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("grenade")
                                                      .transitionTo(<item:minecraft:glass_bottle>)
                                                      .require(<item:minecraft:glass_bottle>)
                                                      .loops(1)
                                                      .addOutput(<item:cgm:grenade>,1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:metal_grit>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:metal_grit>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:metal_grit>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:string>))
                                                      );                                                      

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("stun_grenade")
                                                      .transitionTo(<item:minecraft:glass_bottle>)
                                                      .require(<item:minecraft:glass_bottle>)
                                                      .loops(1)
                                                      .addOutput(<item:cgm:stun_grenade>,1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:glowstone_dust>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:glowstone_dust>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:string>))
                                                      );                 

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("light_bulb")
                                                      .transitionTo(<item:immersiveengineering:electron_tube>)
                                                      .require(<item:immersiveengineering:electron_tube>)
                                                      .loops(3)
                                                      .addOutput(<item:immersiveengineering:light_bulb>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:wirecoil_steel>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(200))
                                                      );                                                                                                   

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("radiator_block")
                                                      .transitionTo(<item:immersiveengineering:sheetmetal_steel>)
                                                      .require(<item:immersiveengineering:sheetmetal_steel>)
                                                      .loops(6)
                                                      .addOutput(<item:immersiveengineering:radiator>, 1)
                                                      .addStep<mods.createtweaker.CuttingRecipe>((rb) => rb.duration(60))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:kubejs:solder> * 75))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:plates/lead>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(70))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("garden_cloche")
                                                      .transitionTo(<item:alloyed:steel_casing>)
                                                      .require(<item:alloyed:steel_casing>)
                                                      .loops(1)
                                                      .addOutput(<item:immersiveengineering:cloche>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:fluid_tank>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:component_steel>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:glass>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:glass>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:light_bulb>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:wirecoil_steel>)));