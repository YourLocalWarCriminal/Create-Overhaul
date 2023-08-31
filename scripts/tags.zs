import crafttweaker.api.tag.MCTag;

val bars = [
<item:minecraft:iron_bars>,
<item:createdeco:netherite_bars>,
<item:createdeco:gold_bars>,
<item:createdeco:andesite_bars>,
<item:createdeco:brass_bars>,
<item:createdeco:cast_iron_bars>,
<item:createdeco:polished_iron_bars>,
<item:createdeco:copper_bars>,
<item:createdeco:zinc_bars>,
<item:alloyed:steel_bars>,
];

for i in bars{
    <tag:items:forge:bars>.add(i);
}