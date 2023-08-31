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
	event.create('induction_mechanism').displayName("Induction Mechanism")
	event.create('arithmetic_mechanism').displayName('Arithmetic Mechanism')
	event.create('iron_bloom').displayName('Iron Bloom')
})

onEvent('block.registry', event => {
	// Register new blocks here
	// event.create('example_block').material('wood').hardness(1.0).displayName('Example Block')
})

// Listen to item tag event
onEvent('item.tags', event => {
	// You can create new tags the same way you add to existing, just give it a name
	event.add('forge:bars', '<item:minecraft:iron_bars>')
	event.add('forge:bars', '<item:createdeco:gold_bars>')
	event.add('forge:bars', '<item:createdeco:netherite_bars>')
	event.add('forge:bars', '<item:createdeco:andesite_bars>')
	event.add('forge:bars', '<item:createdeco:brass_bars>')
	event.add('forge:bars', '<item:createdeco:cast_iron_bars>')
	event.add('forge:bars', '<item:createdeco:polished_iron_bars>')
	event.add('forge:bars', '<item:createdeco:copper_bars>')
	event.add('forge:bars', '<item:createdeco:zinc_bars>')
	event.add('forge:bars', '<item:alloyed:steel_bars>')
  })