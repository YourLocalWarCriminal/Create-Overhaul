#priority 50

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.tag.MCTag;

val nope = <item:minecraft:air>;

    /*
    "template": {
        "ingot": [] as IItemStack[],
        "ore": [] as IItemStack[],
        "dust": [] as IItemStack[]
        "plate": [] as IItemStack[]
        "wire": [] as IItemStack[]
        "block": [] as IItemStack[]
        "rod": [] as IItemStack[]
        "raw": [] as IItemStack[]
        "raw_block": [] as IItemStack[],
    },
    */

public val metalObjects = {
    "copper": {
        "ingot": [<item:minecraft:copper_ingot>],
        "ore": [<item:minecraft:copper_ore>, <item:minecraft:deepslate_copper_ore>],
        "dust": [<item:immersiveengineering:dust_copper>],
        "plate": [<item:create:copper_sheet>],
        "wire": [<item:createaddition:copper_wire>],
        "block": [<item:minecraft:copper_block>],
        "rod": [<item:createaddition:copper_rod>],
        "raw": [<item:minecraft:raw_copper>],
        "raw_block": [<item:minecraft:raw_copper_block>]
    },
    "iron": {
        "ingot": [<item:minecraft:iron_ingot>],
        "ore": [] as IItemStack[],
        "dust": [<item:immersiveengineering:dust_iron>],
        "plate": [<item:create:iron_sheet>],
        "wire": [<item:createaddition:iron_wire>],
        "block": [<item:minecraft:iron_block>],
        "rod": [<item:immersiveengineering:stick_iron>],
        "raw": [] as IItemStack[],
        "raw_block": [<item:minecraft:raw_iron_block>]
    },
    "cast_iron": {
        "ingot": [] as IItemStack[],
        "ore": [] as IItemStack[],
        "dust": [] as IItemStack[],
        "plate": [] as IItemStack[],
        "wire": [] as IItemStack[],
        "block": [] as IItemStack[],
        "rod": [] as IItemStack[],
        "raw": [] as IItemStack[],
        "raw_block": [] as IItemStack[]
    },
    "gold": {
        "ingot": [<item:minecraft:gold_ingot>],
        "ore": [<item:minecraft:gold_ore>, <item:minecraft:deepslate_gold_ore>, <item:minecraft:nether_gold_ore>],
        "dust": [<item:immersiveengineering:dust_gold>],
        "plate": [<item:create:golden_sheet>],
        "wire": [<item:createaddition:gold_wire>],
        "block": [<item:minecraft:gold_block>], 
        "rod": [<item:createaddition:gold_rod>],
        "raw": [<item:minecraft:raw_gold>],
        "raw_block": [<item:minecraft:raw_gold_block>]
    },
    "steel": {
        "ingot": [<item:alloyed:steel_ingot>],
        "ore": [] as IItemStack[],
        "dust": [<item:immersiveengineering:dust_steel>],
        "plate": [<item:alloyed:steel_sheet>],
        "wire": [<item:immersiveengineering:wire_steel>],
        "block": [<item:alloyed:steel_block>],
        "rod": [<item:immersiveengineering:stick_steel>],
        "raw": [] as IItemStack[],
        "raw_block": [] as IItemStack[]
    },
    "netherite": {
        "ingot": [<item:minecraft:netherite_ingot>],
        "ore": [<item:minecraft:ancient_debris>],
        "dust": [<item:kubejs:netherite_dust>],
        "plate": [<item:createdeco:netherite_sheet>],
        "wire": [] as IItemStack[],
        "block": [<item:minecraft:netherite_block>],
        "rod": [] as IItemStack[],
        "raw": [<item:minecraft:netherite_scrap>],
        "raw_block": [] as IItemStack[]
    },
    "mithril": {
        "ingot": [<item:kubejs:mithril_ingot>],
        "ore": [] as IItemStack[],
        "dust": [<item:kubejs:mithril_dust>],
        "plate": [<item:kubejs:mithril_plate>],
        "wire": [] as IItemStack[],
        "block": [] as IItemStack[],
        "rod": [] as IItemStack[],
        "raw": [] as IItemStack[],
        "raw_block": [] as IItemStack[]
    },
    "polished_rose_quartz":{
        "ingot": [<item:create:polished_rose_quartz>],
        "ore": [] as IItemStack[],
        "dust": [] as IItemStack[],
        "plate": [<item:create_things_and_misc:rose_quartz_sheet>],
        "wire": [] as IItemStack[],
        "block": [] as IItemStack[],
        "rod": [] as IItemStack[],
        "raw": [] as IItemStack[],
        "raw_block": [] as IItemStack[]
    },
    "electrum": {
        "ingot": [<item:immersiveengineering:ingot_electrum>],
        "ore": [] as IItemStack[],
        "dust": [<item:immersiveengineering:dust_electrum>],
        "plate": [<item:immersiveengineering:plate_electrum>],
        "wire": [<item:immersiveengineering:wire_electrum>],
        "block": [<item:immersiveengineering:storage_electrum>],
        "rod": [] as IItemStack[],
        "raw": [] as IItemStack[],
        "raw_block": [] as IItemStack[]
    },
    "aluminium": {
        "ingot": [<item:immersiveengineering:ingot_aluminum>],
        "ore": [<item:immersiveengineering:ore_aluminum>, <item:immersiveengineering:deepslate_ore_aluminum>],
        "dust": [<item:immersiveengineering:dust_aluminum>],
        "plate": [<item:immersiveengineering:plate_aluminum>],
        "wire": [<item:immersiveengineering:wire_aluminum>],
        "block": [<item:immersiveengineering:storage_aluminum>],
        "rod": [<item:immersiveengineering:stick_aluminum>],
        "raw": [<item:immersiveengineering:raw_aluminum>],
        "raw_block": [<item:immersiveengineering:raw_block_aluminum>]
    },
    "lead": {
        "ingot": [<item:immersiveengineering:ingot_lead>],
        "ore": [<item:immersiveengineering:ore_lead>, <item:immersiveengineering:deepslate_ore_lead>],
        "dust": [<item:immersiveengineering:dust_lead>],
        "plate": [<item:immersiveengineering:plate_lead>],
        "wire": [<item:immersiveengineering:wire_lead>],
        "block": [<item:immersiveengineering:storage_lead>],
        "rod": [] as IItemStack[],
        "raw": [<item:immersiveengineering:raw_lead>],
        "raw_block": [<item:immersiveengineering:raw_block_lead>]
    },
    "experiance": {
        "ingot": [<item:create:experience_nugget>],
        "ore": [] as IItemStack[],
        "dust": [] as IItemStack[],
        "plate": [<item:create_things_and_misc:experience_sheet>],
        "wire": [] as IItemStack[],
        "block": [<item:create:experience_block>],
        "rod": [] as IItemStack[], 
        "raw":  [] as IItemStack[],
        "raw_block": [] as IItemStack[]
    }
};

println("The load of metalObjects array was succesful");

public function MetalRecipeMaker(name as string, ingot as IItemStack, plate as IItemStack, rod as IItemStack, wire as IItemStack, dust as IItemStack, block as IItemStack, nugget as IItemStack, raw as IItemStack, crushed as IItemStack, stone_type as IItemStack, ores as IItemStack[]) as void {
    val nope = <item:minecraft:air>;
    blastFurnace.remove(ingot);
    <recipetype:immersiveengineering:arc_furnace>.remove(ingot);
    <recipetype:create:pressing>.remove(ingot);

    if (wire != nope) {
        <recipetype:immersiveengineering:metal_press>.remove(wire);
        <recipetype:immersiveengineering:metal_press>.addRecipe(name + "_ingot_to_" + name + "wires", ingot, <item:immersiveengineering:mold_wire>, 2400, wire * 3);
    }
    if (plate != nope) {
        <recipetype:create:pressing>.remove(plate);
        <recipetype:immersiveengineering:metal_press>.remove(plate);
        <recipetype:create:pressing>.addRecipe(name + "_ingot_to_" + name + "plates_by_rolling_mill", [plate], ingot * 2, 200);
        <recipetype:immersiveengineering:metal_press>.addRecipe(name + "_ingot_to_" + name + "plates_by_metal_press", ingot, <item:immersiveengineering:mold_plate>, 2400, plate);
    }
    if (rod != nope) {
        <recipetype:create:cutting>.remove(rod);
        <recipetype:immersiveengineering:metal_press>.remove(rod);
        <recipetype:create:cutting>.addRecipe(name + "_ingots_to_" + name + "_rods", [rod * 2], ingot, 800);
        <recipetype:immersiveengineering:metal_press>.addRecipe(name + "_ingot_to_" + name + "rods_by_metal_press", ingot, <item:immersiveengineering:mold_rod>, 2400, rod);

    }
    if (crushed != nope) {
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
        //Raw to ingot
        blastFurnace.addRecipe("raw_" + name + "_to_" + name + "_ingot_by_bulk_blasting", ingot * 2, raw * 3, 1.0, 30);
    }
    if (nugget != nope) {
        //Nugget to ingot
        <recipetype:create:compacting>.addRecipe(name + "_nugget_to_" + name + "_ingot", <constant:create:heat_condition:heated>, [ingot], [nugget * 8], [], 100);
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
        craftingTable.addShapeless("nugget_" + name + "_to_" + name + "_ingot_by_crafting_table", dust * 5,[<item:farmersdelight:safety_net>.reuse(), crushed]);
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
    println("The MetalRecipeMaker function succesefuly processed the items of " + name);
}

//No compatible method found! => There are more or less items given then it is required

//MetalRecipeMaker("name", ingot, sheet/plate, rod, wire, dust/grit, block, nugget, raw ore, stone_type #replace thees with nope if missing, ores[] #[nope]) 

MetalRecipeMaker("copper", <item:minecraft:copper_ingot>, <item:create:copper_sheet>, <item:createaddition:copper_rod>, <item:createaddition:copper_wire>, <item:immersiveengineering:dust_copper>, <item:minecraft:copper_block>, <item:create:copper_nugget>, <item:minecraft:raw_copper>, <item:create:crushed_raw_copper>, <item:create:veridium>,[<item:minecraft:copper_ore>, <item:minecraft:deepslate_copper_ore>]);

MetalRecipeMaker("gold", <item:minecraft:gold_ingot>, <item:create:golden_sheet>, <item:createaddition:gold_rod>, <item:createaddition:gold_wire>, <item:immersiveengineering:dust_gold>, <item:minecraft:gold_block>, <item:minecraft:gold_nugget>, <item:minecraft:raw_gold>, <item:create:crushed_raw_gold>, <item:create:ochrum>, [<item:minecraft:gold_ore>, <item:minecraft:deepslate_gold_ore>, <item:minecraft:nether_gold_ore>]);

MetalRecipeMaker("iron", <item:minecraft:iron_ingot>, <item:create:iron_sheet>, <item:immersiveengineering:stick_iron>, <item:createaddition:iron_wire>, <item:immersiveengineering:dust_iron>, <item:minecraft:iron_block>, <item:minecraft:iron_nugget>, nope, nope, nope, [nope]);

MetalRecipeMaker("cast_iron", <item:createdeco:cast_iron_ingot>, <item:createdeco:cast_iron_sheet>, nope, nope, <item:kubejs:cast_iron_dust>, <item:createdeco:cast_iron_block>, <item:createdeco:cast_iron_nugget>, <item:minecraft:raw_iron>, <item:create:crushed_raw_iron>, <item:create:crimsite>, [<item:minecraft:iron_ore>, <item:minecraft:deepslate_iron_ore>]);

MetalRecipeMaker("netherite", <item:minecraft:netherite_ingot>, <item:createdeco:netherite_sheet>, nope, nope, <item:kubejs:netherite_dust>, <item:minecraft:netherite_block>, <item:createdeco:netherite_nugget>, nope, nope, nope, [nope]);

MetalRecipeMaker("weak_netherite", <item:kubejs:weak_netherite_ingot>, nope, nope, nope, <item:kubejs:weak_netherite_dust>, nope, <item:kubejs:weak_netherite_nugget>, <item:minecraft:netherite_scrap>, <item:kubejs:crushed_raw_weak_netherite>, nope, [<item:minecraft:ancient_debris>]);