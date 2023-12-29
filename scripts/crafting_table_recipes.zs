import crafttweaker.api.recipe.MirrorAxis;
import mods.jei.JEI;

//variables real quick cuz i aint wanna die
val nope = <item:minecraft:air>;
val screwdriver = <item:immersiveengineering:screwdriver>.reuse();
val hammer = <item:immersiveengineering:hammer>.reuse();
val wrench = <item:create:wrench>.reuse();
val chisel = <item:rechiseled:chisel>.reuse();
val wc = <item:immersiveengineering:wirecutter>.reuse();
val glue = <item:create:super_glue>.reuse();
val nail = <item:kubejs:nail>;
val shaft = <item:create:shaft>;

val helmets = [
    <item:minecraft:iron_helmet>,
    <item:minecraft:golden_helmet>,
    <item:create_sa:brass_helmet>,
    <item:create_sa:copper_helmet>,
];

val chestplates = [
      <item:minecraft:iron_chestplate>,
    <item:minecraft:golden_chestplate>,
    <item:create_sa:brass_chestplate>,
    <item:create_sa:copper_chestplate>,
];

val leggings = [
      <item:minecraft:iron_leggings>,
    <item:minecraft:golden_leggings>,
    <item:create_sa:brass_leggings>,
    <item:create_sa:copper_leggings>,
];

val boots = [
    <item:minecraft:iron_boots>,
    <item:minecraft:golden_boots>,
    <item:create_sa:brass_boots>,
    <item:create_sa:copper_boots>,
];

val plates = [
    <item:create:iron_sheet>,
<item:create:golden_sheet>,
<item:create:brass_sheet>,
<item:create:copper_sheet>,
];


//adding crafting table recipes

craftingTable.addShaped("hammer", <item:immersiveengineering:hammer>, [
    [nope, <item:createdeco:cast_iron_ingot>, <item:farmersdelight:rope>],
    [nope, <tag:items:forge:rods/wooden>, <item:createdeco:cast_iron_ingot>],
    [<tag:items:forge:rods/wooden>, nope, nope],
]);

craftingTable.addShaped("ie_fluid_pipe_recipe", <item:immersiveengineering:fluid_pipe> * 4, [
    [nope, <item:create:iron_sheet>, nope],
    [nope, <item:minecraft:iron_ingot>, nope],
    [nope, <item:create:iron_sheet>, nope],
]);

craftingTable.addShaped("alloybricks", <item:immersiveengineering:alloybrick> * 4, [
    [<item:minecraft:terracotta>, <item:minecraft:stone>, <item:minecraft:terracotta>],
    [<item:minecraft:sandstone>, <item:minecraft:copper_ingot>, <item:minecraft:sandstone>],
    [<item:minecraft:terracotta>, <item:minecraft:stone>, <item:minecraft:terracotta>]
]);

craftingTable.addShaped("cokebricks", <item:immersiveengineering:cokebrick> * 3, [
    [<item:minecraft:sandstone>, <item:create:andesite_alloy>, <item:minecraft:sandstone>],
    [<item:create:andesite_alloy>, <item:minecraft:charcoal>, <item:create:andesite_alloy>],
    [<item:minecraft:sandstone>, <item:create:andesite_alloy>, <item:minecraft:sandstone>]
]);

for i,items in helmets {
    craftingTable.addShaped("helmets" + i, helmets[i], [
        [plates[i], plates[i], plates[i]],
        [plates[i], nope, plates[i]],
    ]);
}

for i,items in chestplates {
    craftingTable.addShaped("chestplates" + i, chestplates[i], [
        [plates[i], nope, plates[i]],
        [plates[i], plates[i], plates[i]],
        [plates[i], plates[i], plates[i]]
    ]);
}

for i,items in leggings {
    craftingTable.addShaped("leggings" + i, leggings[i], [
        [plates[i], plates[i], plates[i]],
        [plates[i], nope, plates[i]],
        [plates[i], nope, plates[i]]
    ]);
}

for i,items in boots {
    craftingTable.addShaped("boots" + i, boots[i], [
        [plates[i], nope, plates[i]],
        [plates[i], nope, plates[i]]
    ]);
}

craftingTable.addShaped("chute", <item:create:chute> * 2, [
    [nope, <item:createdeco:cast_iron_sheet>, nope],
    [nope, <item:createdeco:cast_iron_ingot>, nope],
    [nope, <item:createdeco:cast_iron_sheet>, nope]
]);

craftingTable.addShaped("basin", <item:create:basin>, [
    [<item:createdeco:cast_iron_ingot>, nope, <item:createdeco:cast_iron_ingot>],
    [<item:createdeco:cast_iron_ingot>, <item:createdeco:cast_iron_ingot>, <item:createdeco:cast_iron_ingot>]
]);

craftingTable.addShaped("metalbracket", <item:create:metal_bracket>, [
    [<item:createaddition:iron_rod>, <item:createaddition:iron_rod>, <item:createaddition:iron_rod>],
    [<item:createdeco:cast_iron_ingot>, <item:create:andesite_alloy>, <item:createdeco:cast_iron_ingot>]
]);

craftingTable.addShaped("blazeburner", <item:create:empty_blaze_burner>, [
    [nope, <item:immersiveengineering:plate_steel>, nope],
    [<item:immersiveengineering:plate_steel>, <item:minecraft:netherrack>, <item:immersiveengineering:plate_steel>],
    [nope, <item:immersiveengineering:plate_steel>, nope]
]);

craftingTable.addShaped("mechanicaldrill", <item:create:mechanical_drill>, [
    [nope, <item:immersiveengineering:plate_steel>, nope],
    [<item:alloyed:steel_casing>, <item:createdeco:cast_iron_ingot>, <item:immersiveengineering:plate_steel>],
    [nope, <item:immersiveengineering:plate_steel>, nope]
]);

craftingTable.addShaped("whisk", <item:create:whisk>, [
    [nope, <item:immersiveengineering:ingot_lead>, nope],
    [<item:immersiveengineering:plate_lead>, <item:immersiveengineering:ingot_lead>, <item:immersiveengineering:plate_lead>],
    [nope, <item:immersiveengineering:plate_lead>, nope]
]);

craftingTable.addShaped("propeller", <item:create:propeller>, [
    [nope, <item:immersiveengineering:plate_lead>, nope],
    [<item:immersiveengineering:plate_lead>, <item:immersiveengineering:ingot_lead>, <item:immersiveengineering:plate_lead>],
    [nope, <item:immersiveengineering:plate_lead>, nope]
]);

craftingTable.addShaped("waterwheelsegment", <item:immersiveengineering:waterwheel_segment>, [
    [<item:minecraft:stick>, <tag:items:minecraft:planks>, <item:minecraft:stick>],
    [<tag:items:minecraft:planks>, <item:minecraft:stick>, <tag:items:minecraft:planks>]
]);

craftingTable.addShaped("waterwheel", <item:create:water_wheel>, [
    [nope, <item:immersiveengineering:waterwheel_segment>, nope],
    [<item:immersiveengineering:waterwheel_segment>, <item:create:shaft>, <item:immersiveengineering:waterwheel_segment>],
    [nope, <item:immersiveengineering:waterwheel_segment>, nope]
]);

craftingTable.addShaped("bigwaterwheel", <item:create:large_water_wheel>, [
    [nope, <item:immersiveengineering:waterwheel_segment>, nope],
    [<item:immersiveengineering:waterwheel_segment>, <item:create:water_wheel>, <item:immersiveengineering:waterwheel_segment>],
    [nope, <item:immersiveengineering:waterwheel_segment>, nope]
]);

craftingTable.addShaped("millstone", <item:create:millstone>, [
    [nope, <item:minecraft:stone>, nope],
    [<item:create:andesite_alloy>, <item:create:cogwheel>, <item:create:andesite_alloy>],
    [nope, <item:minecraft:stone>, nope]    
]);

craftingTable.addShapeless("bandagefabric", <item:firstaid:bandage>, [<item:immersiveengineering:hemp_fabric>]);
craftingTable.addShapeless("plasterfabric", <item:firstaid:plaster> * 3, [<item:immersiveengineering:hemp_fabric>]);

craftingTable.addShapedMirrored("stoneaxe", MirrorAxis.HORIZONTAL, <item:minecraft:stone_axe>, [
    [<item:minecraft:flint>, <item:minecraft:flint>, nope],
    [<item:minecraft:flint>, <item:minecraft:stick>, <item:farmersdelight:rope>],
    [nope, <item:minecraft:stick>, nope]
]);

craftingTable.addShapedMirrored("stoneshovel", MirrorAxis.HORIZONTAL, <item:minecraft:stone_shovel>, [
    [nope, <item:minecraft:flint>, nope],
    [<item:farmersdelight:rope>, <item:minecraft:stick>, nope],
    [nope, <item:minecraft:stick>, nope]
]);

craftingTable.addShapedMirrored("stonehoe", MirrorAxis.HORIZONTAL, <item:minecraft:stone_hoe>, [
    [<item:minecraft:flint>, <item:minecraft:flint>, nope],
    [<item:farmersdelight:rope>, <item:minecraft:stick>, nope],
    [nope, <item:minecraft:stick>, nope]
]);

craftingTable.addShapeless("ropestraw", <item:farmersdelight:rope>, [
    <item:farmersdelight:straw>,
    <item:farmersdelight:straw>,
    <item:farmersdelight:straw>,
    <item:farmersdelight:straw>,
    <item:farmersdelight:straw>,
    <item:farmersdelight:straw>,
    <item:farmersdelight:straw>,
    <item:farmersdelight:straw>,
]);

craftingTable.addShapeless("ropehemp", <item:farmersdelight:rope> * 2, [
    <item:immersiveengineering:hemp_fiber>,
    <item:immersiveengineering:hemp_fiber>,
    <item:immersiveengineering:hemp_fiber>,
    <item:immersiveengineering:hemp_fiber>,
    <item:immersiveengineering:hemp_fiber>,
    <item:immersiveengineering:hemp_fiber>,
    <item:immersiveengineering:hemp_fiber>,
    <item:immersiveengineering:hemp_fiber>,
]);

craftingTable.addShaped("ropecoil", <item:immersiveengineering:wirecoil_structure_rope> * 2, [
    [nope, <item:farmersdelight:rope>, nope],
    [<item:farmersdelight:rope>,<item:minecraft:stick>, <item:farmersdelight:rope>],
    [nope, <item:farmersdelight:rope>, nope],
]);

craftingTable.addShaped("mithrilsword", <item:minecraft:diamond_sword>, [
    [<item:kubejs:mithril_plate>],
    [<item:kubejs:mithril_ingot>],
    [<item:create_sa:zinc_handle>]
]);

craftingTable.addShaped("mithrilshovel", <item:minecraft:diamond_shovel>, [
    [<item:kubejs:mithril_plate>],
    [<item:create_sa:zinc_handle>],
    [<item:create_sa:zinc_handle>],    
]);

craftingTable.addShaped("mithrilpickaxe", <item:minecraft:diamond_pickaxe>, [
    [<item:kubejs:mithril_ingot>, <item:kubejs:mithril_plate>, <item:kubejs:mithril_ingot>],
    [nope, <item:create_sa:zinc_handle>, nope],
    [nope, <item:create_sa:zinc_handle>, nope]
]);

craftingTable.addShapedMirrored("mithrilaxe", MirrorAxis.HORIZONTAL, <item:minecraft:diamond_axe>, [
    [<item:kubejs:mithril_ingot>, <item:kubejs:mithril_ingot>],
    [<item:kubejs:mithril_plate>, <item:create_sa:zinc_handle>],
    [nope, <item:create_sa:zinc_handle>]
]);

craftingTable.addShapedMirrored("mithrilhoe", MirrorAxis.HORIZONTAL, <item:minecraft:diamond_hoe>, [
    [<item:kubejs:mithril_plate>, <item:kubejs:mithril_ingot>],
    [nope, <item:create_sa:zinc_handle>],
    [nope, <item:create_sa:zinc_handle>]
]);

craftingTable.addShaped("mithrilknife", <item:farmersdelight:diamond_knife>, [
    [<item:kubejs:mithril_plate>],
    [<item:create_sa:zinc_handle>]
]);

craftingTable.addShaped("sawblade", <item:immersiveengineering:sawblade>, [
    [<item:minecraft:iron_nugget>, <item:minecraft:iron_ingot>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_ingot>, hammer, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_nugget>, <item:minecraft:iron_ingot>, <item:minecraft:iron_nugget>],
]);

craftingTable.addShapedMirrored("mechanicalsaw", MirrorAxis.HORIZONTAL, <item:create:mechanical_saw>, [
    [<item:kubejs:mechanical_engine>, <item:create:shaft>, <item:kubejs:mechanical_engine>],
    [hammer, <item:create:andesite_casing>],
    [nope, <item:immersiveengineering:sawblade>],
]);

craftingTable.addShaped("hydraulicengine", <item:create_sa:hydraulic_engine>, [
    [<item:create:fluid_pipe>, <item:create:large_cogwheel>, <item:create:fluid_pipe>],
    [<item:create:copper_sheet>, <item:kubejs:mechanical_engine>, <item:create:copper_sheet>],
    [<item:create:fluid_pipe>, <item:create:large_cogwheel>, <item:create:fluid_pipe>],
]);

craftingTable.addShaped("diamond_helmet", <item:minecraft:diamond_helmet>, [
    [<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>],
    [<item:minecraft:diamond>, <item:minecraft:iron_helmet>, <item:minecraft:diamond>]
]);

craftingTable.addShaped("diamond_chestplate", <item:minecraft:diamond_chestplate>, [
    [<item:minecraft:diamond>, <item:minecraft:iron_chestplate>, <item:minecraft:diamond>],
    [<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>],
    [<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>]
]);

craftingTable.addShaped("diamond_leggings", <item:minecraft:diamond_leggings>, [
    [<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>],
    [<item:minecraft:diamond>, <item:minecraft:iron_leggings>, <item:minecraft:diamond>],
    [<item:minecraft:diamond>, nope, <item:minecraft:diamond>]
]);

craftingTable.addShaped("diamond_boots", <item:minecraft:diamond_boots>, [
    [<item:minecraft:diamond>, <item:minecraft:iron_boots>, <item:minecraft:diamond>],
    [<item:minecraft:diamond>, nope, <item:minecraft:diamond>]
]);

craftingTable.addShapeless("flint_and_mithril", <item:minecraft:flint_and_steel>, [
    <item:minecraft:flint>, <item:kubejs:mithril_ingot>
]);

craftingTable.addShaped("wirecutters", <item:immersiveengineering:wirecutter>, [
    [<item:immersiveengineering:stick_treated>, <item:minecraft:iron_ingot>, <item:minecraft:shears>],
    [nope, <item:immersiveengineering:treated_wood_horizontal>, <item:minecraft:iron_ingot>],
    [nope, nope, <item:immersiveengineering:stick_treated>],
]);

craftingTable.addShaped("large_gear", <item:kubejs:large_gear>, [
    [<item:minecraft:iron_ingot>, <item:createdeco:cast_iron_ingot>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_nugget>, wc, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_ingot>, <item:createdeco:cast_iron_ingot>, <item:minecraft:iron_ingot>],
]);

craftingTable.addShaped("medium_gear", <item:kubejs:medium_gear>, [
    [<item:createdeco:cast_iron_nugget>, <item:minecraft:iron_ingot>, <item:createdeco:cast_iron_nugget>],
    [<item:createdeco:cast_iron_ingot>, wc, <item:createdeco:cast_iron_ingot>],
    [<item:createdeco:cast_iron_nugget>, <item:minecraft:iron_ingot>, <item:createdeco:cast_iron_nugget>],
]);

craftingTable.addShaped("small_gear", <item:kubejs:small_gear>, [
    [nope, <item:minecraft:iron_ingot>, nope],
    [<item:createdeco:cast_iron_nugget>, wc, <item:createdeco:cast_iron_nugget>],
    [nope, <item:minecraft:iron_ingot>, nope],
]);

craftingTable.addShaped("mechanism_casing", <item:kubejs:mechanism_casing>, [
    [<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>],
    [<item:immersiveengineering:treated_wood_horizontal>, nope, <item:immersiveengineering:treated_wood_horizontal>],
    [<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>, <item:minecraft:stone_button>]
]);

craftingTable.addShaped("kinetic_engine", <item:kubejs:mechanical_engine>, [
    [<item:kubejs:large_gear>, <item:kubejs:medium_gear>, <item:kubejs:large_gear>],
    [<item:kubejs:small_gear>, <item:kubejs:medium_gear>, <item:kubejs:small_gear>],
    [hammer, <item:kubejs:mechanism_casing>, screwdriver]
]);

craftingTable.addShapeless("leverage_components", <item:kubejs:leverage_components>, [<item:kubejs:large_gear>, <item:kubejs:medium_gear>, <item:kubejs:large_gear>,<item:kubejs:small_gear>, <item:kubejs:mechanical_elbow>]);

craftingTable.addShaped("press", <item:create:mechanical_press>, [
    [<item:kubejs:mechanical_engine>, <item:create:shaft>, <item:kubejs:mechanical_engine>],
    [<item:kubejs:leverage_mechanism>, <item:create:andesite_casing>, <item:kubejs:leverage_mechanism>],
    [screwdriver, <item:minecraft:iron_block>, hammer]
]);

craftingTable.addShapedMirrored("mechanical_elbow", MirrorAxis.HORIZONTAL, <item:kubejs:mechanical_elbow>,[
    [<item:createaddition:iron_rod>, <item:createaddition:iron_rod>, <item:kubejs:large_gear>],
    [nope, <item:kubejs:bolt>, <item:createaddition:iron_rod>],
    [nope, nope, <item:createaddition:iron_rod>]
]);

craftingTable.addShaped("copper_casing", <item:create:copper_casing>, [
    [<item:create:copper_sheet>, nope, <item:create:copper_sheet>],
    [<item:create:copper_sheet>, <item:create:industrial_iron_block>, <item:create:copper_sheet>],
    [<item:create:copper_sheet>, nope, <item:create:copper_sheet>]
]);

craftingTable.addShaped("pipe", <item:create:fluid_pipe>, [
    [nope, <tag:items:immersiveengineering:tools/hammers>, nope],
    [<item:kubejs:nail>, <item:create:copper_sheet>, <item:kubejs:nail>],
    [nope, wc, nope]
]);

craftingTable.addShaped("smart_pipe", <item:create:smart_fluid_pipe>, [
    [<item:kubejs:nail>, <item:create:attribute_filter>, <item:kubejs:nail>],
    [<item:create:brass_sheet>, <item:create:fluid_pipe>, <item:create:brass_sheet>],
    [nope, <tag:items:immersiveengineering:tools/hammers>, nope]
]);

craftingTable.addShaped("hose_pulley3", <item:create:hose_pulley>, [
    [nope, <item:create:copper_casing>, nope],
    [nope, <item:immersiveengineering:cushion>, nope],
    [nope, <item:create:copper_sheet>, nope]
]);

craftingTable.addShaped("fluid_tank2", <item:create:fluid_tank>, [
    [<item:kubejs:bolt>, <tag:items:forge:glass_panes>, <item:kubejs:bolt>],
    [<tag:items:forge:glass_panes>, <item:create:copper_casing>, <tag:items:forge:glass_panes>],
    [<tag:items:immersiveengineering:tools/hammers>, <tag:items:forge:glass_panes>, <item:immersiveengineering:screwdriver>]
]);

craftingTable.addShaped("component_iron", <item:immersiveengineering:component_iron>, [
    [<item:kubejs:medium_gear>, <tag:items:immersiveengineering:tools/hammers>, <item:kubejs:small_gear>],
    [<item:kubejs:small_gear>, <tag:items:forge:rods/copper>, <item:kubejs:medium_gear>],
    [<tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>]
]);

craftingTable.addShaped("gearbox", <item:create:gearbox>, [
    [<item:create:shaft>, <item:kubejs:large_gear>, <item:kubejs:small_gear>],
    [<item:kubejs:medium_gear>, <item:create:andesite_casing>, <item:create:shaft>],
    [<item:kubejs:large_gear>, <item:kubejs:small_gear>, <item:kubejs:medium_gear>]
]);

craftingTable.addShaped("mechanical_bearing", <item:create:mechanical_bearing>, [
    [<item:kubejs:nail>, <item:immersiveengineering:hammer>, <item:kubejs:nail>],
    [<item:immersiveengineering:component_iron>, <item:create:andesite_casing>, <item:create:shaft>],
    [<item:kubejs:large_gear>, <item:kubejs:medium_gear>, <item:kubejs:large_gear>]
]);

craftingTable.addShapeless("portable_interface1", <item:create:portable_storage_interface>, [<item:create:portable_fluid_interface>]);
craftingTable.addShapeless("portable_interface2", <item:create:portable_fluid_interface>, [<item:create:portable_storage_interface>]);
craftingTable.addShapeless("portable_fluid_interface", <item:create:portable_fluid_interface>, [<item:create:copper_casing>, <item:create:fluid_pipe>]);

craftingTable.addShaped("steel_block", <item:immersiveengineering:storage_steel>, [
    [<item:alloyed:steel_ingot>, <item:alloyed:steel_ingot>, <item:alloyed:steel_ingot>],
    [<item:alloyed:steel_ingot>, <item:alloyed:steel_ingot>, <item:alloyed:steel_ingot>],
    [<item:alloyed:steel_ingot>, <item:alloyed:steel_ingot>, <item:alloyed:steel_ingot>]
]);

craftingTable.addShaped("bayonet", <item:immersiveengineering:toolupgrade_revolver_bayonet>, [
    [<item:createaddition:copper_wire>, <item:alloyed:steel_sword>],
    [<item:alloyed:steel_ingot>, <item:createaddition:copper_wire>]
]);

craftingTable.addShaped("ie_crafting_table", <item:immersiveengineering:craftingtable>, [
    [<tag:items:forge:treated_wood_slab>, <item:minecraft:crafting_table>, <tag:items:forge:treated_wood_slab>],
    [<item:create:shaft>, <item:kubejs:nail>, <item:create:shaft>],
    [<item:create:shaft>, <item:createdeco:cast_iron_ingot>, <item:create:shaft>] 
]);

craftingTable.addShaped("ie_table", <item:immersiveengineering:workbench>, [
    [<item:kubejs:bolt>, <item:immersiveengineering:component_iron>, nope],
    [<item:immersiveengineering:craftingtable>, <tag:items:forge:treated_wood_slab>, <tag:items:forge:treated_wood_slab>],
    [<item:immersiveengineering:treated_fence>, <item:kubejs:nail>, <item:immersiveengineering:treated_fence>]
]);

craftingTable.addShaped("iron_sword", <item:minecraft:iron_sword>, [
    [<item:minecraft:iron_ingot>],
    [<item:create:iron_sheet>],
    [<item:immersiveengineering:stick_treated>]
]);

craftingTable.addShaped("iron_shovel", <item:minecraft:iron_shovel>, [
    [<item:create:iron_sheet>],
    [<item:immersiveengineering:stick_treated>],
    [<item:immersiveengineering:stick_treated>]
]);

craftingTable.addShaped("iron_pickaxe", <item:minecraft:iron_pickaxe>, [
    [<item:minecraft:iron_ingot>, <item:create:iron_sheet>, <item:minecraft:iron_ingot>],
    [nope, <item:immersiveengineering:stick_treated>, nope],
    [nope, <item:immersiveengineering:stick_treated>, nope]
]);

craftingTable.addShapedMirrored("iron_axe", MirrorAxis.HORIZONTAL, <item:minecraft:iron_axe>, [
    [<item:minecraft:iron_ingot>, <item:create:iron_sheet>],
    [<item:minecraft:iron_ingot>, <item:immersiveengineering:stick_treated>],
    [nope, <item:immersiveengineering:stick_treated>]
]);

craftingTable.addShapedMirrored("iron_hoe", MirrorAxis.HORIZONTAL, <item:minecraft:iron_hoe>, [
    [<item:minecraft:iron_ingot>, <item:create:iron_sheet>],
    [nope, <item:immersiveengineering:stick_treated>],
    [nope, <item:immersiveengineering:stick_treated>],
]);

craftingTable.addShaped("iron_knife", <item:farmersdelight:iron_knife>, [
    [<item:create:iron_sheet>],
    [<item:immersiveengineering:stick_treated>]
]);
craftingTable.addShapeless("gearbox2", <item:create:gearbox>, [<item:create:vertical_gearbox>]);
craftingTable.addShapeless("clockwork_bearing", <item:create:clockwork_bearing>, [<item:create:mechanical_bearing>, <item:kubejs:clockwork_mechanism>]);

val pies = [
<item:minecraft:pumpkin_pie>,
<item:byg:blueberry_pie>,
<item:byg:crimson_berry_pie>,
<item:byg:nightshade_berry_pie>
];

val berries = [
<item:farmersdelight:pumpkin_slice>,
<item:byg:blueberries>,
<item:byg:crimson_berries>,
<item:byg:nightshade_berries>
];

for i, pi in pies {
    craftingTable.addShaped("pie" + i, pies[i], [
        [<tag:items:forge:eggs>, <tag:items:forge:milk/milk_bottle>, <tag:items:forge:eggs>],
        [berries[i], berries[i], berries[i]],
        [<item:minecraft:sugar>, <item:farmersdelight:pie_crust>, <item:minecraft:sugar>]
]);
}

craftingTable.addShaped("deployer", <item:create:deployer>, [
    [<item:immersiveengineering:hammer>,<item:create:brass_hand>,<tag:items:forge:tools/wrench>],
    [<item:create:shaft>,<item:immersiveengineering:component_steel>,<item:minecraft:chain>],
    [<item:kubejs:clockwork_mechanism>,<item:create:andesite_casing>,<item:kubejs:clockwork_mechanism>]
]);

craftingTable.addShaped("component_steel", <item:immersiveengineering:component_steel>, [
    [<item:kubejs:large_gear>, <tag:items:immersiveengineering:tools/hammers>, <item:kubejs:medium_gear>],
    [<item:kubejs:medium_gear>, <item:immersiveengineering:component_iron>, <item:kubejs:large_gear>],
    [<tag:items:forge:plates/steel>, <tag:items:forge:plates/steel>, <tag:items:forge:plates/steel>]
]);

craftingTable.addShapeless("clay_ingot_mold", <item:kubejs:ingot_mold>, [<item:rechiseled:chisel>, <tag:items:forge:clay>, <tag:items:forge:clay>]);

craftingTable.remove(<item:rechiseled:chisel>);

craftingTable.addShaped("chisel_recipe", <item:rechiseled:chisel>, [
    [nope, <item:farmersdelight:rope>, <item:createdeco:cast_iron_ingot>],
    [nope, <item:createdeco:cast_iron_ingot>, <item:farmersdelight:rope>], 
    [<tag:items:forge:rods>, nope, nope]
]);

craftingTable.addShaped("pitkiln", <item:custommachinery:custom_machine_item>.withTag({machine: "earlymachinery:pitkiln" as string}), [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<item:minecraft:coarse_dirt>, <item:minecraft:clay>, <item:minecraft:coarse_dirt>],
    [<item:minecraft:coarse_dirt>, <item:farmersdelight:straw_bale>, <item:minecraft:coarse_dirt>]
]);

craftingTable.addShaped("smallgear_cheap", <item:kubejs:small_gear>*2,[
    [nope, wc, nope],
    [<item:createdeco:cast_iron_nugget>, <item:create:iron_sheet>, <item:createdeco:cast_iron_nugget>],
]);

craftingTable.addShaped("mediumgear_cheap", <item:kubejs:medium_gear>*2, [
    [nope, <item:minecraft:iron_nugget>, wc],
    [<item:createdeco:cast_iron_nugget>, <item:createdeco:cast_iron_sheet>, <item:createdeco:cast_iron_nugget>],
    [nope, <item:minecraft:iron_nugget>, nope]
]);

craftingTable.addShaped("largegear_cheap", <item:kubejs:large_gear>*2, [
    [nope, <item:create:iron_sheet>, wc],
    [<item:minecraft:iron_nugget>, <item:createdeco:cast_iron_sheet>, <item:minecraft:iron_nugget>],
    [nope, <item:create:iron_sheet>, nope]
]);

craftingTable.addShaped("flue_furnace", <item:custommachinery:custom_machine_item>.withTag({machine: "earlymachinery:flue_furnace" as string}), [
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>],
    [<item:minecraft:copper_ingot>, <item:kubejs:flue_bottom_bricks>, <item:minecraft:copper_ingot>],
    [chisel, <item:minecraft:copper_ingot>, hammer]
]);

craftingTable.addShaped("oven", <item:minecraft:furnace>, [
    [<item:minecraft:cobblestone>, <item:createdeco:cast_iron_block>, <item:minecraft:cobblestone>],
    [<item:minecraft:cobblestone>, <item:custommachinery:custom_machine_item>.withTag({machine: "earlymachinery:pitkiln" as string}), <item:minecraft:cobblestone>],
    [<item:createdeco:cast_iron_ingot>, <item:createdeco:cast_iron_block>, <item:createdeco:cast_iron_ingot>]
]);

craftingTable.addShaped("mechanical_crafter_recipe", <item:create:mechanical_crafter>*2, [
    [<item:create:cogwheel>, <item:create:brass_casing>, <item:create:cogwheel>],
    [<item:create:precision_mechanism>, <item:immersiveengineering:craftingtable>, <item:kubejs:arithmetic_mechanism>],
    [<item:create:cogwheel>, <item:create:brass_casing>, <item:create:cogwheel>],
]);

craftingTable.addShaped("rolling_mill", <item:createaddition:rolling_mill>, [
    [nail, shaft, nail],
    [<item:kubejs:leverage_mechanism>, shaft, <item:kubejs:clockwork_mechanism>],
    [hammer, <item:alloyed:steel_casing>, wrench],
]);

craftingTable.addShaped("enchanting_table", <item:minecraft:enchanting_table>, [
    [<item:create:polished_rose_quartz>, <item:minecraft:book>, <item:create:polished_rose_quartz>],
    [hammer, <item:create:brass_block>, glue],
    [<item:create:polished_rose_quartz>, <item:minecraft:crying_obsidian>, <item:create:polished_rose_quartz>],
]);