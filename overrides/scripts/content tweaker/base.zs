#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.MaterialBuilder;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;

    var gem = MaterialSystem.getMaterialBuilder().setName("Gem").setColor(65280).build();
    var end_gem = MaterialSystem.getMaterialBuilder().setName("End Gem").setColor(255).build();
    var nether_gem = MaterialSystem.getMaterialBuilder().setName("Nether Gem").setColor(16711680).build();

    var ore_types = ["ore", "poor_ore", "dense_ore"] as string[];

    var gem_ore = gem.registerParts(ore_types);
            for i, ore in gem_ore {
            var oreData = ore.getData();
            oreData.addDataValue("variants", "minecraft:stone");
            oreData.addDataValue("hardness", "3,3,3");
            oreData.addDataValue("resistance", "15,15,15");
            oreData.addDataValue("harvestTool", "pickaxe,pickaxe,pickaxe");
            oreData.addDataValue("harvestLevel", "2,2,2");
			oreData.addDataValue("drops", "contenttweaker:random_gem");
        }
    var end_gem_ore = end_gem.registerParts(ore_types);
            for i, ore in end_gem_ore {
            var oreData = ore.getData();
            oreData.addDataValue("variants", "minecraft:end_stone");
            oreData.addDataValue("hardness", "3,3,3");
            oreData.addDataValue("resistance", "15,15,15");
            oreData.addDataValue("harvestTool", "pickaxe,pickaxe,pickaxe");
            oreData.addDataValue("harvestLevel", "2,2,2");
			oreData.addDataValue("drops", "contenttweaker:end_random_gem");
        }
    var nether_gem_ore = nether_gem.registerParts(ore_types);
            for i, ore in nether_gem_ore {
            var oreData = ore.getData();
            oreData.addDataValue("variants", "minecraft:netherrack");
            oreData.addDataValue("hardness", "3,3,3");
            oreData.addDataValue("resistance", "15,15,15");
            oreData.addDataValue("harvestTool", "pickaxe,pickaxe,pickaxe");
            oreData.addDataValue("harvestLevel", "2,2,2");
			oreData.addDataValue("drops", "contenttweaker:nether_random_gem");
        }