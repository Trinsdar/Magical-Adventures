
#priority 1149
#loader contenttweaker

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.MaterialSystem;

import scripts.contenttweaker.base.materials;

var clusters as Material[] = [
	materials.mercury,
];

for material in clusters {
	material.registerPart("cluster");
}

var ores as Material[] = [
	materials.mercury,
];

for material in ores {
	var oreData as MaterialPartData = material.registerPart("ore").getData();
	oreData.addDataValue("variants", "minecraft:stone");
    oreData.addDataValue("hardness", "3");
    oreData.addDataValue("resistance", "15");
    oreData.addDataValue("harvestTool", "pickaxe");
    oreData.addDataValue("harvestLevel", "1");
    oreData.addDataValue("drops", "contenttweaker:material_part:3");
	

}

var oreSampleMaterials as Material[] = [
	materials.gem,
	materials.mercury
];

var oreSampleDrops as string[Material] = {
	materials.gem: "contenttweaker:random_gem",
	materials.mercury: "contenttweaker:material_part:3"
};

for material in oreSampleMaterials {
	var sampleData as MaterialPartData = material.registerPart("ore_sample").getData();
	sampleData.addDataValue("drops", oreSampleDrops[material]);
}





