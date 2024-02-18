// priority: 0

console.info('Hello, World! (You will only see this line once in console, during startup)')

onEvent('item.registry', event => {
	// Register new items here
	// event.create('example_item').displayName('Example Item')

	//Metal
	event.create('mithril_ingot').displayName('Mithril Ingot')
	event.create('mithril_plate').displayName('Mithril Sheet')
	event.create('hot_mithril_ingot').displayName('Hot Mithril Ingot')
	event.create('pig_iron').displayName('Pig Iron')
	event.create('iron_bloom').displayName('Iron Bloom')
	event.create('weak_netherite_ingot').displayName('Weak Netherite Ingot').tooltip('Used in the process of making Netherite').fireResistant(true)
	event.create('red_mud_ball').displayName("Red Mud Ball")

	//Mechanical components
		//Engines
	event.create('mechanical_engine').displayName('Kinetic Engine').texture('kubejs:item/mechanical/mechanical_engine')
	event.create('incomplete_mechanical_engine').displayName('Incomplete Kinetic Engine').texture('kubejs:item/mechanical/incomplete_mechanical_engine')
		//Mechanisms
	event.create('leverage_mechanism').displayName('Leverage Mechanism').texture('kubejs:item/mechanical/leverage_mechanism')
	event.create('clockwork_mechanism').displayName('Clockwork Mechanism').texture('kubejs:item/mechanical/clockwork_mechanism')
	event.create('induction_mechanism').displayName("Induction Component").texture('kubejs:item/mechanical/induction_mechanism')
	event.create('arithmetic_mechanism').displayName('Arithmetic Mechanism').texture('kubejs:item/mechanical/arithmetic_mechanism')
		//Gears
	event.create('large_gear').displayName('Large Gear').texture('kubejs:item/mechanical/large_gear')
	event.create('medium_gear').displayName('Medium Gear').texture('kubejs:item/mechanical/medium_gear')
	event.create('small_gear').displayName('Small Gear').texture('kubejs:item/mechanical/small_gear')
		//Casings
	event.create('mechanism_casing').displayName('Mechanism Casing').texture('kubejs:item/mechanical/mechanism_casing')
	event.create('advanced_mechanism_casing').displayName('Advanced Mechanism Casing').texture('kubejs:item/mechanical/advanced_mechanism_casing')
		//MISC
	event.create('leverage_components').displayName('Leverage Components').texture('kubejs:item/mechanical/leverage_components')
	event.create('mechanical_elbow').displayName('Mechanical Elbow').texture('kubejs:item/mechanical/mechanical_elbow')

	//Dusts
	event.create('lime_dust').displayName('Quicklime').texture('kubejs:item/dusts/lime_dust')
	event.create('brass_dust').displayName('Brass Grit').texture('kubejs:item/dusts/brass_dust')
	event.create('bronze_dust').displayName('Bronze Grit').texture('kubejs:item/dusts/bronze_dust')
	event.create('cast_iron_dust').displayName('Cast Iron Grit').texture('kubejs:item/dusts/cast_iron_dust')
	event.create('mithril_dust').displayName('Mithril Grit').texture('kubejs:item/dusts/mithril_dust')
	event.create('netherite_dust').displayName('Netherite Grit').texture('kubejs:item/dusts/netherite_dust').fireResistant(true)
	event.create('weak_netherite_dust').displayName('Weak Netherite Grit').texture('kubejs:item/dusts/weak_netherite_dust').fireResistant(true)
	event.create('crushed_raw_weak_netherite').displayName('Crushed Raw Weak Netherite').texture('kubejs:item/crushed_raw_weak_netherite').fireResistant(true)
	event.create('weak_netherite_nugget').displayName('Weak Netherite Nugget').texture('kubejs:item/weak_netherite_nugget').fireResistant(true)
	event.create('pendorite_dust').displayName('Pendorite Grit').texture('kubejs:item/dusts/pendorite_dust').fireResistant(true)
	event.create('zinc_dust').displayName('Zinc Grit').texture('kubejs:item/dusts/zinc_dust')
	event.create('silicon_dust').displayName("Silicon Dust").texture('kubejs:item/dusts/silicon_dust')
	event.create('glass_grit').displayName('Crushed Glass').texture('kubejs:item/dusts/glass_dust')
	event.create('acidic_glass_mixture').displayName('Acidic Glass Mixture').texture('kubejs:item/dusts/glass_acid_mix')

	//Aspects
	event.create('aspect_of_time').displayName('Aspect Of Time').texture('kubejs:item/aspects/aspect_of_time').maxStackSize(4).fireResistant(true).rarity('epic').glow(true)
	event.create('aspect_of_labour').displayName('Aspect Of Labour').texture('kubejs:item/aspects/aspect_of_labour').maxStackSize(4).fireResistant(true).rarity('epic').glow(true)
	event.create('aspect_of_metallurgy').displayName('Aspect Of Metallurgy').texture('kubejs:item/aspects/aspect_of_metallurgy').maxStackSize(4).fireResistant(true).rarity('epic').glow(true)
	event.create('aspect_of_nature').displayName('Aspect Of Nature').texture('kubejs:item/aspects/aspect_of_nature').maxStackSize(4).fireResistant(true).rarity('epic').glow(false)


	//MISC
	event.create('bolt').displayName('Metal Bolt')
	event.create('nail').displayName('Metal Nail')
	event.create('ingot_mold').displayName('Clay Ingot Mold')
	event.create('transistor').displayName('Transistor').texture('kubejs:item/transistor')
	event.create('silicon_boule').displayName('Silicon Boule').texture('kubejs:item/silicon_boule').maxStackSize(16)
	event.create('silicon_wafer').displayName('Silicon Wafer').texture('kubejs:item/silicon_wafer')
	event.create('basic_backboard').displayName('Basic Circuit Board').texture('kubejs:item/basic_backboard')
})


onEvent('block.registry', event => {
	// Register new blocks here
	// event.create('example_block').material('wood').hardness(1.0).displayName('Example Block')

	event.create("red_mud_block")
	.material("dirt")
	.hardness(1.2)
	.displayName("Red Mud Block")
	.textureAll("kubejs:block/red_mud_block")

	//Pit kiln
	event.create("pit_kiln_block_off")
	.material("dirt")
	.hardness(1.0)
	.displayName("Pit Kiln Dummy off")
	.texture("north", "kubejs:block/pit_kiln/pit_kiln_block_off")
	.texture("up", "kubejs:block/pit_kiln/pit_kiln_side")
	.texture("down", "kubejs:block/pit_kiln/pit_kiln_side")
	.texture("east", "kubejs:block/pit_kiln/pit_kiln_side")
	.texture("west", "kubejs:block/pit_kiln/pit_kiln_side")
	.texture("south", "kubejs:block/pit_kiln/pit_kiln_side")
	.noItem()

	event.create("pit_kiln_block_on")
	.material("dirt")
	.hardness(1.0)
	.displayName("Pit Kiln Dummy on")
	.texture("north", "kubejs:block/pit_kiln/pitkiln_on")
	.texture("up", "kubejs:block/pit_kiln/pit_kiln_side")
	.texture("down", "kubejs:block/pit_kiln/pit_kiln_side")
	.texture("east", "kubejs:block/pit_kiln/pit_kiln_side")
	.texture("west", "kubejs:block/pit_kiln/pit_kiln_side")
	.texture("south", "kubejs:block/pit_kiln/pit_kiln_side")
	.noItem()

	//Ores
	/*
	event.create("pyrite_ore")
	.material("stone")
	.hardness(1.0)
	.displayName("Pyrite Ore")
	.tagItem('forge:ores/iron')
	.tagItem('forge:sulfuric_ores/iron')
	.textureAll('kubejs:block/metal/pyrite_ore')

	event.create("deepslate_pyrite_ore")
	.material("stone")
	.hardness(1.0)
	.displayName("Deepslate Pyrite Ore")
	.tagItem('forge:iron_ore')
	.tagItem('forge:sulfuric_ore')
	.textureAll('kubejs:block/metal/deepslate_pyrite_ore')

	event.create("galena_ore")
	.material("stone")
	.hardness(1.0)
	.displayName("Galena Ore")
	.tagItem('forge:lead_ore')
	.tagItem('forge:sulfuric_ore')
	.textureAll('kubejs:block/metal/ore_galena')

	event.create("deepslate_galena_ore")
	.material("stone")
	.hardness(1.0)
	.displayName("Deepslate Galena Ore")
	.tagItem('forge:lead_ore')
	.tagItem('forge:sulfuric_ore')
	.textureAll('kubejs:block/metal/deepslate_ore_galena')

	event.create("chalcocite_ore")
	.material("stone")
	.hardness(1.0)
	.displayName("Chalcocite Ore")
	.tagItem('forge:ores/copper')
	.tagItem('forge:sulfuric_ores/iron')
	.textureAll('kubejs:block/metal/chalcocite_ore')

	event.create("deepslate_chalcocite_ore")
	.material("stone")
	.hardness(1.0)
	.displayName("Deepslate Chalcocite Ore")
	.tagItem('forge:ores/copper')
	.tagItem('forge:sulfuric_ores/copper')
	.textureAll('kubejs:block/metal/deepslate_chalcocite_ore')
	*/
	//Flue Furnace
	event.create("flue_bricks")
	.material("stone")
	.hardness(1.0)
	.displayName("Flue Bricks")
	.textureAll("kubejs:block/flue_furnace/flue_bricks")

	event.create("flue_bottom_bricks")
	.material("stone")
	.hardness(1.0)
	.displayName("Flue bottom Bricks")
	.texture("up", "kubejs:block/flue_furnace/flue_bricks")
	.texture("down", 'kubejs:block/flue_furnace/smooth_stone')
	.texture("east", "kubejs:block/flue_furnace/flue_bottom_bricks")
	.texture("west", "kubejs:block/flue_furnace/flue_bottom_bricks")
	.texture("north", "kubejs:block/flue_furnace/flue_bottom_bricks")
	.texture("south", "kubejs:block/flue_furnace/flue_bottom_bricks")

	event.create("flue_furnace_dummy_off")
	.material("stone")
	.hardness(1.0)
	.displayName("Flue Furnace Dummy Off")
	.texture('up', 'kubejs:block/flue_furnace/flue_bricks')
	.texture('down', 'kubejs:block/flue_furnace/smooth_stone')
	.texture('south', 'kubejs:block/flue_furnace/flue_bottom_bricks')
	.texture('north', 'kubejs:block/flue_furnace/flue_furnace_front')
	.texture('west', 'kubejs:block/flue_furnace/flue_bottom_bricks')
	.texture('east', 'kubejs:block/flue_furnace/flue_bottom_bricks')	
	.noItem()

	event.create("flue_furnace_dummy_on")
	.material("stone")
	.hardness(1.0)
	.displayName("Flue Furnace Dummy On")
	.texture('up', 'kubejs:block/flue_furnace/flue_bricks')
	.texture('down', 'kubejs:block/flue_furnace/smooth_stone')
	.texture('south', 'kubejs:block/flue_furnace/flue_bottom_bricks')
	.texture('north', 'kubejs:block/flue_furnace/flue_furnace_front_on')
	.texture('west', 'kubejs:block/flue_furnace/flue_bottom_bricks')
	.texture('east', 'kubejs:block/flue_furnace/flue_bottom_bricks')	
	.noItem()

	event.create("eee_dummy_off")
	.material("metal")
	.displayName("Electric Energy Extractor Dummy")
	.requiresTool(true)
	.texture('up', 'kubejs:block/eee/eee_off_connector')
	.texture('down', 'immersiveengineering:block/metal/storage_steel')
	.texture('south', 'kubejs:block/eee/eee_off_side')
	.texture('north', 'kubejs:block/eee/eee_off_top')
	.texture('west', 'kubejs:block/eee/eee_off_side')
	.texture('east', 'kubejs:block/eee/eee_off_side')
	.noItem()

	event.create("eee_dummy_on")
	.material("metal")
	.displayName("Electric Energy Extractor On Dummy")
	.requiresTool(true)
	.model('kubejs:block/eee_on')
	.transparent(true)
	.noItem()
})

onEvent('fluid.registry', event =>
{
	event.create('solder')  
    .stillTexture('kubejs:block/lava_still')
    .flowingTexture('kubejs:block/lava_flow')
    .color(0x8388A6)
    .displayName(`Solder`)
    .noBlock()

	event.create('red_mud')  
    .stillTexture('kubejs:block/lava_still')
    .flowingTexture('kubejs:block/lava_flow')
    .color(0x8a1f04)
    .displayName(`Red Mud`)
    .noBlock()
	//a really fuckin long id huh?
	event.create('acidic_glass_mixture_slurry')
	.stillTexture('kubejs:block/lava_still')
	.flowingTexture('kubejs:block/lava_flow')
	.color(0xc75d56)
	.displayName('Acidic Glass Mixture Slurry')
	.noBlock()

	event.create('phenol')
	.stillTexture('kubejs:block/water_still')
	.flowingTexture('kubejs:block/water_flow')
	.color(0xf5c022)
	.displayName('Phenol')

	event.create('divine_alloy')
	.stillTexture('kubejs:block/molten_still')
	.flowingTexture('kubejs:block/molten_flow')
	.color(0xc220f7)
	.displayName('Divine Alloy')
	.noBlock()
})

