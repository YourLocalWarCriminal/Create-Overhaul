import mods.create.MillingManager;
import mods.create.DeployerApplicationManager;
import mods.create.MixingManager;

//variables
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
];

val screwdriver = <item:immersiveengineering:screwdriver>.reuse();
//press recipe(name, output, input, duration)
<recipetype:create:pressing>.addRecipe("mithrilplate", [<item:kubejs:mithril_plate> % 100], <item:kubejs:mithril_ingot> * 2, 200);
for i, item in ingots_press {
    <recipetype:create:pressing>.addRecipe("ingots_to_plates" + i, [plates_press[i]%100], ingots_press[i]*2, 200);
}
//millstone recipes(name,[outputs,input],time)
<recipetype:create:milling>.addRecipe("cinderflour", [<item:create:cinder_flour> % 100], <item:minecraft:netherrack>, 160);
//item application(name,output, block, held item, keep item? as bool)
<recipetype:create:item_application>.addRecipe("andesitecasing", [<item:create:andesite_casing> % 100], <tag:items:forge:treated_wood>, <item:create:andesite_alloy>, false);
<recipetype:create:item_application>.addRecipe("coppercasing", [<item:create:copper_casing> % 100], <tag:items:forge:treated_wood>, <item:create:copper_sheet>, false);
<recipetype:create:item_application>.addRecipe("brasscasing", [<item:create:brass_casing> % 100], <tag:items:forge:treated_wood>, <item:create:brass_sheet>, false);
<recipetype:create:item_application>.addRecipe("steelcasing", [<item:alloyed:steel_casing> % 100], <tag:items:forge:treated_wood>, <item:alloyed:steel_sheet>, false);
<recipetype:create:item_application>.addRecipe("siftinggravel", [<item:create:copper_nugget> % 25, <item:minecraft:flint> % 25], <item:minecraft:gravel>, <item:farmersdelight:safety_net>, true);
<recipetype:create:item_application>.addRecipe("sandsifting", [<item:create:copper_nugget> % 10, <item:byg:mud_ball> % 25, <item:minecraft:clay_ball> % 15], <tag:items:forge:sand>, <item:farmersdelight:safety_net>, true);
<recipetype:create:item_application>.addRecipe("item_drain", [<item:create:item_drain>], <item:create:copper_casing>, <tag:items:forge:bars>, false);
//deplyoer application(name,deployed onto item, the held item, output, keep held item as bool)

//mixer(name,heat,[output], [input], [fluid], time)
<recipetype:create:mixing>.addRecipe("rosequartz", <constant:create:heat_condition:none>, [<item:create:rose_quartz> % 100], [<item:minecraft:quartz>, <item:minecraft:redstone> * 8], [], 300);
<recipetype:create:mixing>.addRecipe("glass_mixer",<constant:create:heat_condition:heated>, [<item:minecraft:glass> * 2 % 100], [<item:minecraft:sand>, <item:minecraft:quartz>, <item:kubejs:lime_dust>], [], 600);
<recipetype:create:mixing>.addRecipe("glass_white_sand_mixing", <constant:create:heat_condition:heated>, [<item:minecraft:glass> % 100], [<item:byg:white_sand>, <item:kubejs:lime_dust>], [], 600);
//saw recipes(name,output,input,time)
<recipetype:create:cutting>.addRecipe("treatedsticks",<item:immersiveengineering:stick_treated> * 2 % 100 , <tag:items:forge:treated_wood>, 220);
for i, item in ingots {
    <recipetype:create:cutting>.addRecipe("ingots_to_rods" + i, rods[i]*2, ingots[i], 800);
}

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
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:minecraft:planks>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:minecraft:wooden_buttons>))
                                                      .addStep<mods.createtweaker.CuttingRecipe>((rb) => rb.duration(50))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:water> * 50)));
*/
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("precisionmechanism")
                                                      .transitionTo(<item:create:incomplete_precision_mechanism>)
                                                      .require(<item:kubejs:mechanical_engine>)
                                                      .loops(4)
                                                      .addOutput(<item:create:precision_mechanism>, 32)
                                                      .addOutput(<item:create:brass_nugget>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:cogwheel>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:alloyed:steel_nugget>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:electron_tube>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(screwdriver))
                                                      );

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("mechanical_engine")
                                                      .transitionTo(<item:kubejs:incomplete_mechanical_engine>)
                                                      .require(<item:minecraft:bowl>)
                                                      .loops(1)
                                                      .addOutput(<item:kubejs:mechanical_engine>, 32)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:cogwheel>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:component_iron>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:andesite_alloy>))
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
                                                      .transitionTo(<item:alloyed:steel_casing>)
                                                      .require(<tag:items:forge:treated_wood>)
                                                      .loops(12)
                                                      .addOutput(<item:alloyed:steel_casing>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:stick_steel>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:bolt>))
                                                      );


