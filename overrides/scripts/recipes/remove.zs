import crafttweaker.item.IItemStack;

var removeItems as IItemStack[] = [
	<minecraft:flint>
];

for item in removeItems {
	recipes.remove(item);
}


