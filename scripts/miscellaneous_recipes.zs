import mods.farmersdelight.CuttingBoard;

<item:alloyed:bronze_ingot>.addTooltip("Now made with Amethyst!");
<item:farmersdelight:safety_net>.addTooltip("Can be used for Sifting Purposes");

//smithing recipes(name,output,inputA,inputB)

val steel_tools = [
<item:alloyed:steel_axe>,
<item:alloyed:steel_sword>,
<item:alloyed:steel_shovel>,
<item:alloyed:steel_hoe>,
<item:alloyed:steel_pickaxe>,
];

val netherite_tools = [
<item:minecraft:netherite_axe>,
<item:minecraft:netherite_sword>,
<item:minecraft:netherite_shovel>,
<item:minecraft:netherite_hoe>,
<item:minecraft:netherite_pickaxe>,
];

for i,item in steel_tools {
    <recipetype:minecraft:smithing>.addRecipe("steel_to_netherite" + i, netherite_tools[i], steel_tools[i], <item:minecraft:netherite_ingot>);
}

val netherite_armour = [
<item:minecraft:netherite_helmet>,
<item:minecraft:netherite_chestplate>,
<item:minecraft:netherite_leggings>,
<item:minecraft:netherite_boots>,
];

val steel_armour = [
<item:alloyed:steel_helmet>,
<item:alloyed:steel_chestplate>,
<item:alloyed:steel_leggings>,
<item:alloyed:steel_boots>,
];

for i,item in steel_armour {
    <recipetype:minecraft:smithing>.addRecipe("steel_to_netherite_armour" + i, netherite_armour[i], steel_armour[i], <item:minecraft:netherite_ingot>);
}

<recipetype:minecraft:smithing>.addRecipe("qualitytoolhandle", <item:create_sa:zinc_handle>, <item:immersiveengineering:stick_treated>, <item:create:zinc_ingot>);
<recipetype:minecraft:smithing>.addRecipe("leverage_mechanism", <item:kubejs:leverage_mechanism>, <item:kubejs:mechanical_engine>, <item:kubejs:leverage_components>);
//blasting recipes(name,output,input,xp,time)
<recipetype:minecraft:blasting>.addRecipe("ironsmelt", <item:createdeco:cast_iron_ingot>, <item:minecraft:raw_iron>, 0.7, 140);
<recipetype:minecraft:blasting>.addRecipe("ironsmeltcrushed", <item:createdeco:cast_iron_ingot>, <item:create:crushed_raw_iron>, 0.7, 140);
<recipetype:minecraft:blasting>.addRecipe("ironsmeltgrit", <item:createdeco:cast_iron_ingot>, <item:immersiveengineering:dust_iron>, 0.7, 140);
<recipetype:minecraft:blasting>.addRecipe("zincsmelt", <item:create:zinc_ingot>, <item:create:raw_zinc>, 0.6, 140);
<recipetype:minecraft:blasting>.addRecipe("zincsmeltcrushed", <item:create:zinc_ingot>, <item:create:crushed_raw_zinc>, 0.6, 140);
<recipetype:minecraft:blasting>.addRecipe("castiron", <item:minecraft:iron_ingot>, <item:createdeco:cast_iron_ingot>, 0.0, 200);
<recipetype:minecraft:blasting>.addRecipe("logcharcoal", <item:minecraft:charcoal>, <tag:items:minecraft:logs_that_burn>, 0.0, 600);
//furnace recipes(name, output, input, xp, time)
<recipetype:minecraft:smelting>.addRecipe("burninglime", <item:kubejs:lime_dust>, <item:create:limestone>, 0.3, 300);

// campfire.addRecipe(name, output, input, xp, cookTime)

campfire.addRecipe("stone_slab_smelting", <item:minecraft:stone_slab>, <item:minecraft:cobblestone_slab>, 0.8, 90);

