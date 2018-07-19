import crafttweaker.item.IItemStack;

var removeItems as IItemStack[] = [
	<minecraft:flint>,
	<pickletweaks:grass_mesh>
];

for item in removeItems {
	recipes.remove(item);
}


