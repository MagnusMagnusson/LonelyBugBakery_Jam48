text = "Less Tea";

action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	o_store_manager.teaToBuy = max(o_store_manager.teaToBuy - c, 0);
}