import crafttweaker.item.IItemStack;

var durabilityArray = {

	//Wood tools troll
	<minecraft:wooden_sword> : 1,
	<minecraft:wooden_pickaxe> : 1,
	<minecraft:wooden_shovel> : 1,
	<minecraft:wooden_axe> : 1,


	//Give grass fiber mesh and regular mesh more uses
	<pickletweaks:grass_mesh> : 63
	<pickletweaks:mesh> : 127

} as int[IItemStack];

for item in durabilityArray {
	item.maxDamage = durabilityArray[item];
}