#priority 50

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.tag.MCTag;
import mods.immersiveengineering.MetalPress;

val nope = <item:minecraft:air>;


public function MetalRecipeMaker(name as string, ingot as IItemStack, plate as IItemStack, rod as IItemStack, wire as IItemStack, dust as IItemStack, block as IItemStack, nugget as IItemStack, raw as IItemStack, crushed as IItemStack, stone_type as IItemStack, ores as IItemStack[]) as void {
    val nope = <item:minecraft:air>;
    recipes.remove(ingot);

    if (wire != nope) {
        recipes.remove(wire);
        <recipetype:immersiveengineering:metal_press>.addRecipe(name + "_ingot_to_" + name + "_wires", ingot, <item:immersiveengineering:mold_wire>, 2400, wire * 3);
    }
    if (plate != nope) {
        recipes.remove(plate);
        <recipetype:create:pressing>.addRecipe(name + "_ingot_to_" + name + "plates_by_mechanical_press", [plate], ingot * 2, 200);
        <recipetype:immersiveengineering:metal_press>.addRecipe(name + "_ingot_to_" + name + "plates_by_metal_press", ingot, <item:immersiveengineering:mold_plate>, 2400, plate);
    }
    if (rod != nope) {
        recipes.remove(rod);
        <recipetype:create:cutting>.addRecipe(name + "_ingots_to_" + name + "_rods", [rod * 2], ingot, 800);
        <recipetype:immersiveengineering:metal_press>.addRecipe(name + "_ingot_to_" + name + "rods_by_metal_press", ingot, <item:immersiveengineering:mold_rod>, 2400, rod);

    }
    if (crushed != nope) {
        blastFurnace.removeByInput(crushed);
        <recipetype:create:crushing>.remove(crushed);
        //Crushed to ingot
        blastFurnace.addRecipe("crushed_" + name + "_to_" + name + "_ingot_by_bulk_blasting", ingot * 3, crushed * 4, 1.0, 300);
        <recipetype:immersiveengineering:arc_furnace>.addRecipe("crushed_" + name + "_to_" + name + "_ingot_by_arc_furnace", crushed * 3, [], 200, 10000, [ingot * 4]);
    }
    if (dust != nope) {
        <recipetype:create:crushing>.remove(dust);
        <recipetype:immersiveengineering:crusher>.remove(dust);
        //Ingot to grit
        <recipetype:create:crushing>.addRecipe(name + "_ingot_to_" + name + "_grit_by_crushing_wheel", [dust % 100, dust % 25], ingot * 3, 400);
        <recipetype:immersiveengineering:crusher>.addRecipe(name + "_ingot_to_by_crusher" + name + "_grit", ingot * 3, 3000, dust * 2, dust % 30, dust % 5);
        //Grit to ingot
        <recipetype:create:compacting>.addRecipe(name + "_grit_to_" + name + "_ingot", <constant:create:heat_condition:heated>, [ingot], [dust * 2], [], 100);
        blastFurnace.addRecipe(name + "_grit_to_" + name + "_ingot_by_bulk_blasting", ingot * 2, dust * 3, 1.0, 30);
        <recipetype:immersiveengineering:arc_furnace>.addRecipe(name + "_dust_to_" + name + "_ingot_by_arc_furnace", dust, [], 200, 10000, [ingot]);
        craftingTable.remove(dust);
    }
    if (raw != nope) {
        <recipetype:create:crushing>.remove(raw);
        //Raw to ingot
        blastFurnace.addRecipe("raw_" + name + "_to_" + name + "_ingot_by_bulk_blasting", ingot * 2, raw * 3, 1.0, 30);
    }
    if (nugget != nope) {
        <recipetype:create:crushing>.remove(nugget);
        //Nugget to ingot
        craftingTable.remove(nugget);
        <recipetype:create:compacting>.addRecipe(name + "_nugget_to_" + name + "_ingot", <constant:create:heat_condition:heated>, [ingot], [nugget * 10], [], 100);
        //Ingot to nuggets
        <recipetype:create:cutting>.addRecipe(name + "_ingot_to_" + name + "_nuggets", [nugget * 10], ingot, 8000);
    }
    if (block != nope) {
        craftingTable.remove(block);
        <recipetype:create:compacting>.remove(block);
        //Ingot to block
        <recipetype:create:compacting>.addRecipe(name + "_ingots_to_" + name + "_block", <constant:create:heat_condition:heated>, [block], [ingot * 10], [], 1000);
        //Block to ingot
        <recipetype:create:cutting>.addRecipe(name + "_block_to_" + name + "_ingots", [ingot * 10], block, 1600);
    }
    if ((dust != nope) && (crushed != nope)) {
        //Crushed to grit
        craftingTable.addShapeless("crushed_" + name + "_to_" + name + "_grit_by_hammer", dust * 2, [<item:immersiveengineering:hammer>.reuse(), crushed]);
        <recipetype:create:crushing>.addRecipe("crushed_" + name + "_to_" + name + "_grit_by_crushing_wheel", [dust * 2, dust % 50, dust % 15], crushed, 400);
        <recipetype:immersiveengineering:crusher>.addRecipe("crushed_" + name + "_to_by_crusher" + name + "_grit", crushed, 3000, dust * 2, (dust * 2) % 50, dust % 15);
    }
    if ((dust != nope) && (raw != nope)) {
        //Raw to grit
        craftingTable.addShapeless("raw_" + name + "_to_" + name + "_grit_by_hammer", dust * 2, [<item:immersiveengineering:hammer>.reuse(), raw]);
        <recipetype:create:crushing>.addRecipe("raw_" + name + "_to_" + name + "_grit_by_crushing_wheel", [dust * 2, dust % 50, dust % 15], raw, 400);
        <recipetype:immersiveengineering:crusher>.addRecipe("raw_" + name + "_to_by_crusher" + name + "_grit", raw, 3000, dust * 2, (dust * 2) % 50, dust % 15);
        if (stone_type != nope) {
            //stone type to raw and dust
            <recipetype:create:crushing>.addRecipe(name + "_stone_type_to_raw_" + name + "_by_crushing_wheel", [raw % 100, raw % 50, <item:create:experience_nugget> % 50], stone_type, 400);
            <recipetype:immersiveengineering:crusher>.addRecipe(name + "_stone_type_to_raw_" + name + "_by_crusher", stone_type, 3000, raw, raw % 50, <item:create:experience_nugget> % 50);
        }
    }
    if ((crushed != nope) && (nugget != nope)) {
        //Crushed to nugget
        <recipetype:create:splashing>.remove(nugget);
        craftingTable.addShapeless("nugget_" + name + "_to_" + name + "_ingot_by_crafting_table", dust * 5, [<item:farmersdelight:safety_net>.reuse(), crushed]);
        <recipetype:create:deploying>.addRecipe("nugget_" + name + "_to_" + name + "_ingot_by_deployer", crushed, <item:farmersdelight:safety_net>, [(nugget * 5) % 100, nugget % 35], true);
        <recipetype:create:splashing>.addRecipe("nugget_" + name + "_to_" + name + "_ingot_by_washing", [(nugget * 6) % 100, nugget % 75, nugget % 30, <item:minecraft:clay_ball> % 25], crushed, 200);
    }
    if (ores[0] != nope) {
        if (crushed != nope && dust != nope) {
            for i, ore in ores {
                <recipetype:create:crushing>.addRecipe(name + "_ore_to_crushed_" + name + "_by_crushing_wheel" + i, [(crushed * 2) % 100, crushed % 50, dust % 10, <item:immersiveengineering:dust_sulfur> % 10, <item:create:experience_nugget> % 75, <item:create:experience_nugget> % 25], ore, 400);
                <recipetype:immersiveengineering:crusher>.addRecipe("_ore_to_crushed_" + name + "_by_crusher" + i, ore, 3000, crushed * 3, crushed % 50, dust % 10, <item:immersiveengineering:dust_sulfur> % 10, <item:create:experience_nugget> % 75, <item:create:experience_nugget> % 25);
            }
        }
        else if (crushed != nope) {
            for i, ore in ores {
                <recipetype:create:crushing>.addRecipe(name + "_ore_to_crushed_" + name + "_by_crushing_wheel" + i, [(crushed * 2) % 100, crushed % 50, <item:immersiveengineering:dust_sulfur> % 10, <item:create:experience_nugget> % 75, <item:create:experience_nugget> % 25], ore, 400);
                <recipetype:immersiveengineering:crusher>.addRecipe("_ore_to_crushed_" + name + "_by_crusher" + i, ore, 3000, crushed * 3, crushed % 50, <item:immersiveengineering:dust_sulfur> % 10, <item:create:experience_nugget> % 75, <item:create:experience_nugget> % 25);
            }
        }
        else if (dust != nope) {
            for i, ore in ores {
                <recipetype:create:crushing>.addRecipe(name + "_ore_to_dust_" + name + "_by_crushing_wheel" + i, [(dust * 2) % 100, dust % 50, <item:immersiveengineering:dust_sulfur> % 10, <item:create:experience_nugget> % 75, <item:create:experience_nugget> % 25], ore, 400);
                <recipetype:immersiveengineering:crusher>.addRecipe("_ore_to_dust_" + name + "_by_crusher" + i, ore, 3000, dust * 3, dust % 50, <item:immersiveengineering:dust_sulfur> % 10, <item:create:experience_nugget> % 75, <item:create:experience_nugget> % 25);
            }
        }
    }
    if ((wire != nope) && (plate != nope)) {
        <recipetype:immersiveengineering:metal_press>.addRecipe(name + "_plate_to_" + name + "wires_by_metal_press", plate, <item:immersiveengineering:mold_wire>, 2400, wire * 2);
    }
    println("The MetalRecipeMaker function succesefuly processed the items of " + name);
}

//No compatible method found! => There are more or less items given then it is required

//MetalRecipeMaker("name", ingot, sheet/plate, rod, wire, dust/grit, block, nugget, raw ore, crushed, stone_type #replace thees with nope if missing, ores[] #[nope]) 

    MetalRecipeMaker("copper", <item:minecraft:copper_ingot>, <item:create:copper_sheet>, <item:createaddition:copper_rod>, <item:createaddition:copper_wire>, <item:immersiveengineering:dust_copper>, <item:minecraft:copper_block>, <item:create:copper_nugget>, <item:minecraft:raw_copper>, <item:create:crushed_raw_copper>, <item:create:veridium>,[<item:minecraft:copper_ore>, <item:minecraft:deepslate_copper_ore>]);

    MetalRecipeMaker("gold", <item:minecraft:gold_ingot>, <item:create:golden_sheet>, <item:createaddition:gold_rod>, <item:createaddition:gold_wire>, <item:immersiveengineering:dust_gold>, <item:minecraft:gold_block>, <item:minecraft:gold_nugget>, <item:minecraft:raw_gold>, <item:create:crushed_raw_gold>, <item:create:ochrum>, [<item:minecraft:gold_ore>, <item:minecraft:deepslate_gold_ore>, <item:minecraft:nether_gold_ore>, <item:byg:blue_nether_gold_ore>, <item:byg:brimstone_nether_gold_ore>]);

    MetalRecipeMaker("iron", <item:minecraft:iron_ingot>, <item:create:iron_sheet>, <item:immersiveengineering:stick_iron>, <item:createaddition:iron_wire>, <item:immersiveengineering:dust_iron>, <item:minecraft:iron_block>, <item:minecraft:iron_nugget>, nope, nope, nope, [nope]);

    MetalRecipeMaker("cast_iron", <item:createdeco:cast_iron_ingot>, <item:createdeco:cast_iron_sheet>, nope, nope, <item:kubejs:cast_iron_dust>, <item:createdeco:cast_iron_block>, <item:createdeco:cast_iron_nugget>, <item:minecraft:raw_iron>, <item:create:crushed_raw_iron>, <item:create:crimsite>, [<item:minecraft:iron_ore>, <item:minecraft:deepslate_iron_ore>]);

    MetalRecipeMaker("netherite", <item:minecraft:netherite_ingot>, <item:createdeco:netherite_sheet>, nope, nope, <item:kubejs:netherite_dust>, <item:minecraft:netherite_block>, <item:createdeco:netherite_nugget>, nope, nope, nope, [nope]);

    MetalRecipeMaker("weak_netherite", <item:kubejs:weak_netherite_ingot>, nope, nope, nope, <item:kubejs:weak_netherite_dust>, nope, <item:kubejs:weak_netherite_nugget>, <item:minecraft:netherite_scrap>, <item:kubejs:crushed_raw_weak_netherite>, nope, [<item:minecraft:ancient_debris>]);

    MetalRecipeMaker("nickel", <item:immersiveengineering:ingot_nickel>, <item:immersiveengineering:plate_nickel>, nope, nope, <item:immersiveengineering:dust_nickel>, <item:immersiveengineering:storage_nickel>, <item:immersiveengineering:nugget_nickel>, <item:immersiveengineering:raw_nickel>, <item:create:crushed_raw_nickel>, nope, [<item:immersiveengineering:ore_nickel>, <item:immersiveengineering:deepslate_ore_nickel>]);

    MetalRecipeMaker("aluminium", <item:immersiveengineering:ingot_aluminum>, <item:immersiveengineering:plate_aluminum>, <item:immersiveengineering:stick_aluminum>, <item:immersiveengineering:wire_aluminum>, nope, <item:immersiveengineering:storage_aluminum>, <item:immersiveengineering:nugget_aluminum>, nope, nope, nope, [nope]);

    MetalRecipeMaker("zinc", <item:create:zinc_ingot>, <item:createaddition:zinc_sheet>, nope, nope, <item:kubejs:zinc_dust>, <item:create:zinc_block>, <item:create:zinc_nugget>, <item:create:raw_zinc>, <item:create:crushed_raw_zinc>, nope, [<item:create:zinc_ore>, <item:create:deepslate_zinc_ore>]);

    MetalRecipeMaker("lead", <item:immersiveengineering:ingot_lead>, <item:immersiveengineering:plate_lead>, nope, <item:immersiveengineering:wire_lead>, <item:immersiveengineering:dust_lead>, <item:immersiveengineering:storage_lead>, <item:immersiveengineering:nugget_lead>, <item:immersiveengineering:raw_lead>, <item:create:crushed_raw_lead>, nope, [<item:immersiveengineering:ore_lead>, <item:immersiveengineering:deepslate_ore_lead>]);

    MetalRecipeMaker("steel", <item:alloyed:steel_ingot>, <item:alloyed:steel_sheet>, <item:immersiveengineering:stick_steel>, <item:immersiveengineering:wire_steel>, <item:immersiveengineering:dust_steel>, <item:immersiveengineering:storage_steel>, <item:alloyed:steel_nugget>, nope, nope, nope, [nope]);

    MetalRecipeMaker("constantan", <item:immersiveengineering:ingot_constantan>, <item:immersiveengineering:plate_constantan>, nope, nope, <item:immersiveengineering:dust_constantan>, <item:immersiveengineering:storage_constantan>, <item:immersiveengineering:nugget_constantan>, nope, nope, nope, [nope]);

//Other ore processing methods

//Aluminium
    //Ore to raw
    val bauxite_ores = [<item:immersiveengineering:ore_aluminum>, <item:immersiveengineering:deepslate_ore_aluminum>];
    <recipetype:immersiveengineering:crusher>.remove(<item:immersiveengineering:dust_aluminum>);
    for i, _ in bauxite_ores {
        <recipetype:immersiveengineering:crusher>.addRecipe("bauxite_ore_to_raw_bauxit_by_crusher" + i, _, 3000, <item:immersiveengineering:raw_aluminum> * 3, <item:immersiveengineering:dust_aluminum> % 5);
    }

    //Raw to red mud
    <tag:fluids:forge:water>.add(<fluid:minecraft:water>);
    <recipetype:create:mixing>.addRecipe("raw_bauxite_to_red_mud_by_heated_mixing", <constant:create:heat_condition:superheated>, [<fluid:kubejs:red_mud> * 100], [<item:immersiveengineering:raw_aluminum>], [<fluid:minecraft:water> * 500], 300);
    <recipetype:create:mixing>.addRecipe("raw_bauxite_block_to_red_mud_by_heated_mixing", <constant:create:heat_condition:superheated>, [<fluid:kubejs:red_mud> * 1000], [<item:immersiveengineering:raw_block_aluminum>], [<fluid:minecraft:water> * 2000], 300);
    <recipetype:immersiveengineering:mixer>.addRecipe("raw_bauxite_to_red_mud_by_mixer", <tag:fluids:forge:water>, [<item:immersiveengineering:raw_aluminum>], 200, <fluid:kubejs:red_mud>.fluid, 200);
    <recipetype:immersiveengineering:mixer>.addRecipe("raw_bauxite_block_to_red_mud_by_mixer", <tag:fluids:forge:water>, [<item:immersiveengineering:raw_block_aluminum>], 200, <fluid:kubejs:red_mud>.fluid, 2000);

    //Red mud to red mud balls
    <recipetype:create:filling>.addRecipe("red_mud_to_red_mud_balls", <item:kubejs:red_mud_ball>, nope, <fluid:kubejs:red_mud> * 250, 200);

    //Red mud balls to Alumina grit
    <recipetype:immersiveengineering:squeezer>.addRecipe("red_mud_block_to_alumina_grit_by_squeezer", <item:kubejs:red_mud_ball> * 3, 2000, <fluid:kubejs:red_mud> * 50, <item:immersiveengineering:dust_aluminum> * 4);
    <recipetype:create:compacting>.addRecipe("red_mud_block_to_alumina_grit_by_press", <constant:create:heat_condition:heated>, [<item:immersiveengineering:dust_aluminum> % 100, <item:immersiveengineering:dust_aluminum> % 40], [<item:kubejs:red_mud_ball>], [], 600);

    //Alumina grit to Alumina
    <recipetype:immersiveengineering:blast_furnace>.addRecipe("alumina_grit_to_alumina_by_blast_furnace", <item:immersiveengineering:dust_aluminum>, 1000, <item:create:crushed_raw_aluminum>);
    <recipetype:immersiveengineering:arc_furnace>.addRecipe("alumina_grit_to_alumina_by_arc_furnace", <item:immersiveengineering:dust_aluminum>, [], 200, 10000, [<item:create:crushed_raw_aluminum> * 5], nope);
