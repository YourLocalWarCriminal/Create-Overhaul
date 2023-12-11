// priority: 0

console.info('Hello, World! (You will only see this line once in console, during startup)')

onEvent('item.registry', event => {
	// Register new items here
	// event.create('example_item').displayName('Example Item')
	event.create('mechanical_engine').displayName('Kinetic Engine')
	event.create('incomplete_mechanical_engine').displayName('Incomplete Kinetic Engine')
	event.create('mithril_ingot').displayName('Mithril Ingot')
	event.create('mithril_plate').displayName('Mithril Sheet')
	event.create('hot_mithril_ingot').displayName('Hot Mithril Ingot')
	event.create('pig_iron').displayName('Pig Iron')
	event.create('lime_dust').displayName('Quicklime')
	event.create('mechanism_casing').displayName('Mechanism Casing')
	event.create('advanced_mechanism_casing').displayName('Advanced Mechanism Casing')
	event.create('mechanical_elbow').displayName('Mechanical Elbow')
	event.create('large_gear').displayName('Large Gear')
	event.create('medium_gear').displayName('Medium Gear')
	event.create('small_gear').displayName('Small Gear')
	event.create('bolt').displayName('Metal Bolt')
	event.create('nail').displayName('Metal Nail')
	event.create('leverage_components').displayName('Leverage Components')
	event.create('leverage_mechanism').displayName('Leverage Mechanism')
	event.create('clockwork_mechanism').displayName('Clockwork Mechanism')
	event.create('induction_mechanism').displayName("Induction Component")
	event.create('arithmetic_mechanism').displayName('Arithmetic Mechanism')
	event.create('iron_bloom').displayName('Iron Bloom')
	event.create('ingot_mold').displayName('Clay Ingot Mold')
})


onEvent('block.registry', event => {
	// Register new blocks here
	// event.create('example_block').material('wood').hardness(1.0).displayName('Example Block')
	event.create("pit_kiln_block_off")
	.material("dirt")
	.hardness(1.0)
	.displayName("Pit Kiln Dummy off")
	.texture("north", "kubejs:block/pit_kiln_block_off")
	.texture("up", "kubejs:block/pit_kiln_side")
	.texture("down", "kubejs:block/pit_kiln_side")
	.texture("east", "kubejs:block/pit_kiln_side")
	.texture("west", "kubejs:block/pit_kiln_side")
	.texture("south", "kubejs:block/pit_kiln_side")
	.noItem()

	event.create("pit_kiln_block_on")
	.material("dirt")
	.hardness(1.0)
	.displayName("Pit Kiln Dummy on")
	.texture("north", "kubejs:block/pitkilnon1")
	.texture("up", "kubejs:block/pit_kiln_side")
	.texture("down", "kubejs:block/pit_kiln_side")
	.texture("east", "kubejs:block/pit_kiln_side")
	.texture("west", "kubejs:block/pit_kiln_side")
	.texture("south", "kubejs:block/pit_kiln_side")
<<<<<<< Updated upstream
	.noItem()

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
=======
})

ItemEvents.modification(event => {
	event.modify("minecraft:iron_pickaxe", item => {
		item.maxDamage = 550
	})
>>>>>>> Stashed changes
})