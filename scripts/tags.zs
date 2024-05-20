#priority 99
/*
<tag:fluids:minecraft:long_fire_resistance>.add();
<tag:fluids:minecraft:long_fire_resistance>.add();

<tag:fluids:minecraft:fire_resistance>.add(<fluid:create:potion>.withTag({Potion: "minecraft:fire_resistance" as string}));
<tag:fluids:minecraft:fire_resistance>.add(<fluid:immersiveengineering:potion>.withTag({Potion: "minecraft:fire_resistance" as string}));*/

<tag:items:forge:wirecoils_uninsulated>.add([
<item:createaddition:gold_spool>,
<item:immersiveengineering:wirecoil_redstone>,
<item:immersiveengineering:wirecoil_steel>,
<item:immersiveengineering:wirecoil_copper>,
<item:createaddition:copper_spool>,
<item:immersiveengineering:wirecoil_electrum>,
]);

<tag:items:forge:wirecoils_insulated>.add([
    <item:immersiveengineering:wirecoil_electrum_ins>,
    <item:immersiveengineering:wirecoil_copper_ins>,
]);

<tag:items:forge:pure_silica_glass>.add([
<item:minecraft:glass>,
<item:create:vertical_framed_glass>,
<item:create:horizontal_framed_glass>,
<item:create:tiled_glass>,
<item:create:framed_glass>,
]);

<tag:items:forge:dusts>.add([
<item:kubejs:zinc_dust>,
<item:kubejs:bronze_dust>,
<item:kubejs:cast_iron_dust>,
<item:kubejs:mithril_dust>,
<item:kubejs:netherite_dust>,
<item:kubejs:pendorite_dust>,
<item:kubejs:brass_dust>,
<item:kubejs:glass_grit>,
<item:kubejs:silicon_dust>,
<item:kubejs:lime_dust>,
]);
<tag:fluids:forge:ethanol>.clear();
<tag:fluids:forge:ethanol>.add([<fluid:createaddition:bioethanol>]);
<tag:fluids:forge:plantoil>.clear();
<tag:fluids:forge:plantoil>.add(<fluid:createaddition:seed_oil>);
<tag:fluids:forge:methanol>.add(<fluid:immersiveengineering:plantoil>);
<tag:fluids:forge:redstone_acids>.add(<fluid:immersiveengineering:redstone_acid>);

<tag:items:forge:string>.add(<tag:items:forge:fiber_hemp>);

<tag:items:forge:subelectronic_components>.add([
    <item:immersiveengineering:electron_tube>,
    <item:create:electron_tube>,
    <item:kubejs:transistor>,
    <item:createaddition:capacitor>,
]);

<tag:items:forge:metal_grit>.add([
    <item:immersiveengineering:dust_iron>,
    <item:immersiveengineering:dust_steel>,
    <item:immersiveengineering:dust_electrum>,
    <item:immersiveengineering:dust_constantan>,
    <item:immersiveengineering:dust_nickel>,
    <item:immersiveengineering:dust_silver>,
    <item:immersiveengineering:dust_lead>,
    <item:immersiveengineering:dust_aluminum>,
    <item:immersiveengineering:dust_copper>,
    <item:kubejs:pendorite_dust>,
    <item:kubejs:netherite_dust>,
    <item:kubejs:zinc_dust>,
    <item:kubejs:mithril_dust>,
    <item:kubejs:cast_iron_dust>,
    <item:kubejs:bronze_dust>,
    <item:kubejs:brass_dust>,
    <item:immersiveengineering:dust_gold>,
]);

<tag:blocks:create:wrench_pickup>.add([
    <block:kubejs:flue_bottom_bricks>,
    <block:kubejs:flue_bricks>,
    <block:custommachinery:custom_machine_block>
]);

<tag:blocks:minecraft:mineable/pickaxe>.add([
    <block:kubejs:flue_bottom_bricks>,
    <block:kubejs:flue_bricks>,
    <block:custommachinery:custom_machine_block>
]);

<tag:items:earlymachinery:fuel/pit_kiln>.add([
    <item:minecraft:charcoal>,
    (<item:farmersdelight:straw> * 3)
]);
