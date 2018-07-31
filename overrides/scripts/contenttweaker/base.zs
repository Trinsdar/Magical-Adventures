
#priority 1150
#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.MaterialBuilder;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;

static materials as Material[string] = {
    "mercury": MaterialSystem.getMaterialBuilder().setName("Mercury").setColor(16185078).build(),
    //"lithium": MaterialSystem.getMaterialBuilder().setName("Lithium").setColor(13681552).build(),
    "gem" : MaterialSystem.getMaterialBuilder().setName("Gem").setColor(65280).build(),
    "end_gem" : MaterialSystem.getMaterialBuilder().setName("End Gem").setColor(255).build(),
    "nether_gem" : MaterialSystem.getMaterialBuilder().setName("Nether Gem").setColor(16711680).build()

};

    var gem = MaterialSystem.getMaterialBuilder().setName("Gem").setColor(65280).build();
    var end_gem = MaterialSystem.getMaterialBuilder().setName("End Gem").setColor(255).build();
    var nether_gem = MaterialSystem.getMaterialBuilder().setName("Nether Gem").setColor(16711680).build();

    var ore_types = ["ore"] as string[];

    var gem_ore = gem.registerParts(ore_types);
            for i, ore in gem_ore {
            var oreData = ore.getData();
            oreData.addDataValue("variants", "minecraft:stone");
            oreData.addDataValue("hardness", "3");
            oreData.addDataValue("resistance", "15");
            oreData.addDataValue("harvestTool", "pickaxe");
            oreData.addDataValue("harvestLevel", "2");
            oreData.addDataValue("drops", "contenttweaker:random_gem");
        }
    var end_gem_ore = end_gem.registerParts(ore_types);
            for i, ore in end_gem_ore {
            var oreData = ore.getData();
            oreData.addDataValue("variants", "minecraft:end_stone");
            oreData.addDataValue("hardness", "3");
            oreData.addDataValue("resistance", "15");
            oreData.addDataValue("harvestTool", "pickaxe");
            oreData.addDataValue("harvestLevel", "2");
            oreData.addDataValue("drops", "contenttweaker:end_random_gem");
        }
    var nether_gem_ore = nether_gem.registerParts(ore_types);
            for i, ore in nether_gem_ore {
            var oreData = ore.getData();
            oreData.addDataValue("variants", "minecraft:netherrack");
            oreData.addDataValue("hardness", "3");
            oreData.addDataValue("resistance", "15");
            oreData.addDataValue("harvestTool", "pickaxe");
            oreData.addDataValue("harvestLevel", "2");
            oreData.addDataValue("drops", "contenttweaker:nether_random_gem");
        }
		
