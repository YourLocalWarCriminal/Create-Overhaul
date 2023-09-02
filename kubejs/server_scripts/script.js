// priority: 0

settings.logAddedRecipes = true
settings.logRemovedRecipes = true
settings.logSkippedRecipes = false
settings.logErroringRecipes = true

console.info('Hello, World! (You will see this line every time server resources reload)')

// kubejs/server_scripts/example.js
// This is just an example script to show off multiple types of recipes and removal methods
// Supports /reload

// Listen to server recipe event

onEvent('recipes', event => {
	//event.recipes.create.filling('immersiveengineering:blastbrick', ['minecraft:potion', 'minecraft:bricks'])
	// If you use custom({json}) it will be using vanilla Json/datapack syntax. Must include "type": "mod:recipe_id"!
	// You can add recipe to any recipe handler that uses vanilla recipe system or isn't supported by KubeJS
	// You can copy-paste the json directly, but you can also make more javascript-y by removing quotation marks from keys
	// You can replace {item: 'x', count: 4} in result fields with Item.of('x', 4).toResultJson()
	// You can replace {item: 'x'} / {tag: 'x'} with Ingredient.of('x').toJson() or Ingredient.of('#x').toJson()
	// In this case, add Create's crushing recipe, Oak Sapling to Apple + 50% Carrot
	
	// Important! Create has integration already, so you don't need to use this. This is just an example for datapack recipes!
	// Note that not all mods format their jsons the same, often the key names ('ingredients', 'results', ect) are different. 
	// You should check inside the mod jar (mod.jar/data/modid/recipes/) for examples


	event.replaceInput({}, '#forge:plates/steel', 'alloyed:steel_sheet')
	event.replaceInput({}, '#forge:ingots/steel', 'alloyed:steel_ingot')
	
	// In all recipes, replace Stick with Oak Sapling in output items 
	//event.replaceOutput({}, 'minecraft:stick', 'minecraft:oak_sapling')
	
	// By default KubeJS will mirror and shrink recipes, which makes things like UU-Matter crafting (from ic2) harder to do as you have less shapes.
	// You can use noMirror() and noShrink() to stop this behaviour.
	/*
	event.shaped('9x minecraft:emerald', [
	  ' D ',
	  'D  ',
	  '   '
	], {
	  D: 'minecraft:diamond'
	}).noMirror().noShrink()
	*/
  })


onEvent('item.tags', event => {
	// Get the #forge:cobblestone tag collection and add Diamond Ore to it
	// event.get('forge:cobblestone').add('minecraft:diamond_ore')

	// Get the #forge:cobblestone tag collection and remove Mossy Cobblestone from it
	// event.get('forge:cobblestone').remove('minecraft:mossy_cobblestone')
	// You can create new tags the same way you add to existing, just give it a name
	event.add('forge:bars', 'minecraft:iron_bars')
	event.add('forge:bars', 'createdeco:gold_bars')
	event.add('forge:bars', 'createdeco:netherite_bars')
	event.add('forge:bars', 'createdeco:andesite_bars')
	event.add('forge:bars', 'createdeco:brass_bars')
	event.add('forge:bars', 'createdeco:cast_iron_bars')
	event.add('forge:bars', 'createdeco:polished_iron_bars')
	event.add('forge:bars', 'createdeco:copper_bars')
	event.add('forge:bars', 'createdeco:zinc_bars')
	event.add('forge:bars', 'alloyed:steel_bars')
})
