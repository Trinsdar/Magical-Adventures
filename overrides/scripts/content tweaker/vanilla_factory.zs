#priority 1150
#loader contenttweaker

import mods.contenttweaker.World;
import crafttweaker.player.IPlayer;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

	var randomGem = VanillaFactory.createItem("random_gem");
	var netherRandomGem = VanillaFactory.createItem("nether_random_gem");
	var endRandomGem = VanillaFactory.createItem("end_random_gem");
	randomGem.glowing = true;
	randomGem.itemRightClick = function(stack, world, player, hand) {
	print("entering function 1");
    if(!world.remote){
    print("start doing stuff 1");
    player.give(<item:silentgems:gem>.definition.makeStack(world.getWorldTime() % 16));
    }
    print("leaving function 1");
    stack.shrink(1);
    return "Success";
	};
	randomGem.register();
	netherRandomGem.glowing = true;
	netherRandomGem.itemRightClick = function(stack, world, player, hand) {
	print("entering function 2");
	if(!world.remote){
	print("start doing stuff 2");
    player.give(<item:silentgems:gem>.definition.makeStack((world.getWorldTime() % 16) + 16));
    }
    print("leaving function 2");
    stack.shrink(1);
    return "Success";
	};
	netherRandomGem.register();
	endRandomGem.glowing = true;
	endRandomGem.itemRightClick = function(stack, world, player, hand) {
	print("entering function 3");
    if(!world.remote){
    print("start doing stuff 3");
    player.give(<item:silentgems:gem>.definition.makeStack((world.getWorldTime() % 16) + 32));
    }
    print("leaving function 3");
    stack.shrink(1);
    return "Success";
	};
	endRandomGem.register();