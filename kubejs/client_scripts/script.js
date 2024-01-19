// priority: 0

console.info('Hello, World! (You will see this line every time client resources reload)')

onEvent('jei.hide.items', event => {
	// Hide items in JEI here
	// event.hide('minecraft:cobblestone')
})

//₀ ₁ ₂ ₃ ₄ ₅ ₆ ₇ ₈ ₉ ₊ ₋ ₌ ₍ ₎ ⁰ ¹ ² ³ ⁴ ⁵ ⁶ ⁷ ⁸ ⁹ ⁺ ⁻ ⁼ ⁽ ⁾

onEvent('item.tooltip', tooltip => {
	// §9 => solid
	// §e => liquid
	// §7 => gas
	// §d => super-critical
	tooltip.add(['minecraft:iron_ore', 'minecraft:deepslate_iron_ore'], '§9Fe₃O₄')
	tooltip.add(['kubejs:deepsleate_pyrite_ore', 'kubejs:pyrite_ore'], '§9FeS₂')
	tooltip.add(['minecraft:copper_ore', 'minecraft:deepslate_copper_ore'], '§9Cu₂CO₃(OH)₂')
})
