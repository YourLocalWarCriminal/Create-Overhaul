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
	event.create('netherite_dust').displayName('Netherite Grit').texture('kubejs:item/dusts/netherite_dust')
	event.create('pendorite_dust').displayName('Pendorite Grit').texture('kubejs:item/dusts/pendorite_dust')
	event.create('zinc_dust').displayName('Zinc Grit').texture('kubejs:item/dusts/zinc_dust')

	//MISC
	event.create('bolt').displayName('Metal Bolt')
	event.create('nail').displayName('Metal Nail')
	event.create('ingot_mold').displayName('Clay Ingot Mold')
})


onEvent('block.registry', event => {
	// Register new blocks here
	// event.create('example_block').material('wood').hardness(1.0).displayName('Example Block')

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
	event.create("pyrite_ore")
	.material("stone")
	.hardness(1.0)
	.displayName("Pyrite Ore")
	.tagItem('forge:ores/iron')
	.tagItem('forge:sulfuric_ores/iron')
	.textureAll('kubejs:block/metal/pyrite_ore')

	event.create("deepsleate_pyrite_ore")
	.material("stone")
	.hardness(1.0)
	.displayName("Deepsleate Pyrite Ore")
	.tagItem('forge:iron_ore')
	.tagItem('forge:sulfuric_ore')
	.textureAll('kubejs:block/metal/deepsleate_pyrite_ore')

	event.create("galena_ore")
	.material("stone")
	.hardness(1.0)
	.displayName("Galena Ore")
	.tagItem('forge:lead_ore')
	.tagItem('forge:sulfuric_ore')
	.textureAll('kubejs:block/metal/ore_galena')

	event.create("deepsleate_galena_ore")
	.material("stone")
	.hardness(1.0)
	.displayName("Deepsleate Galena Ore")
	.tagItem('forge:lead_ore')
	.tagItem('forge:sulfuric_ore')
	.textureAll('kubejs:block/metal/deepsleate_ore_galena')

	event.create("chalcocite_ore")
	.material("stone")
	.hardness(1.0)
	.displayName("Chalcocite Ore")
	.tagItem('forge:ores/copper')
	.tagItem('forge:sulfuric_ores/iron')
	.textureAll('kubejs:block/metal/chalcocite_ore')

	event.create("deepsleate_chalcocite_ore")
	.material("stone")
	.hardness(1.0)
	.displayName("Deepsleate Chalcocite Ore")
	.tagItem('forge:ores/copper')
	.tagItem('forge:sulfuric_ores/copper')
	.textureAll('kubejs:block/metal/deepsleate_chalcocite_ore')

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
})