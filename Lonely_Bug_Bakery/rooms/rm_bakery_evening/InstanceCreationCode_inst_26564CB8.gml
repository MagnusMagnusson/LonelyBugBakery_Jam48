text = "Less Grain";

action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	o_store_manager.grainToBuy = max(o_store_manager.grainToBuy - c, 0);
}