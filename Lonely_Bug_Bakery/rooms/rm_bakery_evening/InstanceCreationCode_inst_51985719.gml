text = "Less Ice";


action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	o_store_manager.iceToBuy = max(o_store_manager.iceToBuy - c, 0);
}