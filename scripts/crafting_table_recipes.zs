import crafttweaker.api.recipe.MirrorAxis;
import mods.jei.JEI;

//variables real quick cuz i aint wanna die
val nope = <item:minecraft:air>;
val screwdriver = <item:immersiveengineering:screwdriver>.reuse();
val hammer = <item:immersiveengineering:hammer>.reuse();
val wrench = <item:create:wrench>.reuse();
val wc = <item:immersiveengineering:wirecutter>.reuse();

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

craftingTable.addShaped("ie_fluid_pipe_recipe", <item:immersiveengineering:fluid_pipe> * 4, [
    [nope, <item:create:iron_sheet>, nope],
    [nope, <item:minecraft:iron_ingot>, nope],
    [nope, <item:create:iron_sheet>, nope],
]);

craftingTable.addShaped("furnace", <item:minecraft:furnace>,[
    [<item:minecraft:clay>, <item:minecraft:cobblestone>, <item:minecraft:clay>],
    [<item:minecraft:cobblestone>, <item:minecraft:campfire>, <item:minecraft:cobblestone>],
    [<item:minecraft:clay>, <item:minecraft:cobblestone>, <item:minecraft:clay>],
]);

craftingTable.addShaped("bfurnace", <item:minecraft:blast_furnace>,[
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_block>, <item:minecraft:copper_ingot>],
    [<item:minecraft:copper_ingot>, <item:minecraft:furnace>, <item:minecraft:copper_ingot>],
    [<item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>]
]);

craftingTable.addShaped("iron_m_comp", <item:immersiveengineering:component_iron>, [
    [nope, <item:minecraft:iron_ingot>, nope],
    [<item:minecraft:iron_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:iron_ingot>],
    [nope, <item:minecraft:iron_ingot>, nope],
]);

craftingTable.addShaped("alloybricks", <item:immersiveengineering:alloybrick> * 4, [
    [<item:minecraft:clay_ball>, <item:minecraft:stone>, <item:minecraft:clay_ball>],
    [<item:minecraft:sandstone>, <item:immersiveengineering:component_iron>, <item:minecraft:sandstone>],
    [<item:minecraft:clay_ball>, <item:minecraft:stone>, <item:minecraft:clay_ball>]
]);

craftingTable.addShaped("cokebricks", <item:immersiveengineering:cokebrick> * 3, [
    [<item:minecraft:sandstone>, <item:create:andesite_alloy>, <item:minecraft:sandstone>],
    [<item:create:andesite_alloy>, <item:immersiveengineering:component_iron>, <item:create:andesite_alloy>],
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
    [nope, <item:alloyed:steel_sheet>, nope],
    [<item:alloyed:steel_sheet>, <item:minecraft:netherrack>, <item:alloyed:steel_sheet>],
    [nope, <item:alloyed:steel_sheet>, nope]
]);

craftingTable.addShaped("mechanicaldrill", <item:create:mechanical_drill>, [
    [nope, <item:alloyed:steel_sheet>, nope],
    [<item:alloyed:steel_casing>, <item:createdeco:cast_iron_ingot>, <item:alloyed:steel_sheet>],
    [nope, <item:alloyed:steel_sheet>, nope]
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
    [<item:kubejs:mithril_plate>],
    [<item:create_sa:zinc_handle>]
]);

craftingTable.addShaped("mithrilshovel", <item:minecraft:diamond_shovel>, [
    [<item:kubejs:mithril_plate>],
    [<item:create_sa:zinc_handle>],
    [<item:create_sa:zinc_handle>],    
]);

craftingTable.addShaped("mithrilpickaxe", <item:minecraft:diamond_pickaxe>, [
    [<item:kubejs:mithril_plate>, <item:kubejs:mithril_plate>, <item:kubejs:mithril_plate>],
    [nope, <item:create_sa:zinc_handle>, nope],
    [nope, <item:create_sa:zinc_handle>, nope]
]);

craftingTable.addShapedMirrored("mithrilaxe", MirrorAxis.HORIZONTAL, <item:minecraft:diamond_axe>, [
    [<item:kubejs:mithril_plate>, <item:kubejs:mithril_plate>],
    [<item:kubejs:mithril_plate>, <item:create_sa:zinc_handle>],
    [nope, <item:create_sa:zinc_handle>]
]);

craftingTable.addShapedMirrored("mithrilhoe", MirrorAxis.HORIZONTAL, <item:minecraft:diamond_hoe>, [
    [<item:kubejs:mithril_plate>, <item:kubejs:mithril_plate>],
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

craftingTable.addShapeless("leverage_components", <item:kubejs:leverage_components>, [<item:kubejs:large_gear>, <item:kubejs:medium_gear>, <item:kubejs:large_gear>,<item:kubejs:small_gear>,<item:kubejs:mechanical_elbow>]);

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