import mods.create.MillingManager;
import mods.create.DeployerApplicationManager;
import mods.create.MixingManager;

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
//press recipe(name, output, input, duration)
<recipetype:create:pressing>.addRecipe("mithrilplate", [<item:kubejs:mithril_plate> % 100], <item:kubejs:mithril_ingot> * 2, 200);
for i, item in ingots_press {
    <recipetype:create:pressing>.addRecipe("ingots_to_plates" + i, [plates_press[i]%100], ingots_press[i]*2, 200);
}

// FillingManager.addRecipe(name, output, inputContainer, inputFluid, duration);
<recipetype:create:filling>.addRecipe("blast_brick", <item:immersiveengineering:blastbrick> * 3, <item:minecraft:bricks> * 3, <fluid:create:potion>.withTag({Potion: "minecraft:long_fire_resistance" as string}) * 250, 200);
<recipetype:create:filling>.addRecipe("blast_brick2", <item:immersiveengineering:blastbrick> * 3, <item:minecraft:bricks> * 3, <fluid:immersiveengineering:potion>.withTag({Potion: "minecraft:long_fire_resistance" as string}) * 250, 200);

//millstone recipes(name,[outputs],input,time)
<recipetype:create:milling>.addRecipe("cinderflour", [<item:create:cinder_flour> % 100], <item:minecraft:netherrack>, 160);
//item application(name,output, block, held item, keep item? as bool)
<recipetype:create:item_application>.addRecipe("andesitecasing", [<item:create:andesite_casing> % 100], <tag:items:forge:treated_wood>, <item:create:andesite_alloy>, false);
<recipetype:create:item_application>.addRecipe("brasscasing", [<item:create:brass_casing> % 100], <tag:items:forge:treated_wood>, <item:create:brass_sheet>, false);
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
//deplyoer application(name,deployed onto item, the held item, output, keep held item as bool)


//mixer(name,heat,[output], [input], [inputFluid], time)
<recipetype:create:mixing>.addRecipe("rosequartz", <constant:create:heat_condition:none>, [<item:create:rose_quartz> % 100], [<item:minecraft:quartz>, <item:minecraft:redstone> * 8], [], 300);
<recipetype:create:mixing>.addRecipe("glass_mixer",<constant:create:heat_condition:heated>, [<item:minecraft:glass> * 2 % 100], [<item:minecraft:sand>, <item:minecraft:quartz>, <item:kubejs:dusts/lime_dust>], [], 600);
<recipetype:create:mixing>.addRecipe("glass_white_sand_mixing", <constant:create:heat_condition:heated>, [<item:minecraft:glass> % 100], [<item:byg:white_sand>, <item:kubejs:dusts/lime_dust>], [], 600);
<recipetype:create:mixing>.addRecipe("redstone_acid", <constant:create:heat_condition:none>, [<fluid:immersiveengineering:redstone_acid> * 500], [<item:minecraft:redstone>*4], [<fluid:minecraft:water> * 500]);
<recipetype:create:mixing>.addRecipe("netherite_ingot", <constant:create:heat_condition:superheated>, [<item:minecraft:netherite_ingot>], [<item:minecraft:netherite_scrap>*4, <tag:items:forge:ingots/gold>*4], []);

//saw recipes(name,output,input,time)
<recipetype:create:cutting>.addRecipe("treatedsticks",<item:immersiveengineering:stick_treated> * 2 % 100 , <tag:items:forge:treated_wood>, 220);
for i, item in ingots {
    <recipetype:create:cutting>.addRecipe("ingots_to_rods" + i, rods[i]*2, ingots[i], 800);
}

<recipetype:create:cutting>.addRecipe("bolt", <item:kubejs:bolt>*1, <item:createaddition:iron_rod>, 400);
<recipetype:create:cutting>.addRecipe("nail", <item:kubejs:nail>*2, <item:create:iron_sheet>, 400);
<recipetype:create:cutting>.addRecipe("nailsteel", <item:kubejs:nail>*4, <item:alloyed:steel_sheet>, 400);  
<recipetype:create:cutting>.addRecipe("boltsteel", <item:kubejs:bolt>*2, <item:immersiveengineering:stick_steel>, 400);       

// MechanicalCrafterManager.addRecipe(name, output, ingredients[][]);

<recipetype:create:mechanical_crafting>.addRecipe("crushing_wheel", <item:create:crushing_wheel>, [
    [nope, nope, <item:kubejs:nail>, nope, <item:kubejs:nail>, nope, nope],
    [nope, <tag:items:forge:plates/steel>,  <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <tag:items:forge:plates/steel>, nope],
    [<item:kubejs:nail>, <item:minecraft:smooth_stone>, <item:immersiveengineering:stick_steel>, <item:immersiveengineering:stick_treated>, <item:immersiveengineering:stick_steel>, <item:minecraft:smooth_stone>, <item:kubejs:nail>],
    [nope, <item:minecraft:smooth_stone>, <item:immersiveengineering:stick_treated>, <item:create:shaft>, <item:immersiveengineering:stick_treated>, <item:minecraft:smooth_stone>, nope],
    [<item:kubejs:nail>, <item:minecraft:smooth_stone>, <item:immersiveengineering:stick_steel>, <item:immersiveengineering:stick_treated>, <item:immersiveengineering:stick_steel>, <item:minecraft:smooth_stone>, <item:kubejs:nail>],
    [nope, <tag:items:forge:plates/steel>,  <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <tag:items:forge:plates/steel>, nope],
    [nope, nope, <item:kubejs:nail>, nope, <item:kubejs:nail>, nope, nope]
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
                                                      .transitionTo(<item:create_sa:steam_engine>)
                                                      .require(<item:create:fluid_valve>)
                                                      .loops(4)
                                                      .addOutput(<item:create_sa:steam_engine>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:small_gear>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:plates/brass>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:medium_gear>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(500))
                                                      );
                                                      
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("steam_engine2")
                                                      .transitionTo(<item:create:copper_casing>)
                                                      .require(<item:create:copper_casing>)
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
                                                      .addOutput(<item:create:electron_tube>, 1)
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:immersiveengineering:redstone_acid> * 100))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:golden_sheet>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:zinc_sheet>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100)));

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("vacuum_tube")
                                                      .transitionTo(<item:minecraft:glass_pane>)
                                                      .require(<item:minecraft:glass_pane>)
                                                      .loops(1)
                                                      .addOutput(<item:immersiveengineering:electron_tube>, 1)
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
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:electron_tube>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:electron_tube>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:copper_wire>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:component_steel>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:gold_wire>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(100)));           

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("induction_component")
                                                      .transitionTo(<item:immersiveengineering:treated_wood_horizontal>)
                                                      .require(<tag:items:forge:treated_wood>)
                                                      .loops(1)
                                                      .addOutput(<item:kubejs:induction_mechanism>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:coil_lv>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create_sa:copper_magnet>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:large_gear>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:component_steel>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:belt_connector>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:copper_wire>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createaddition:copper_wire>)));
