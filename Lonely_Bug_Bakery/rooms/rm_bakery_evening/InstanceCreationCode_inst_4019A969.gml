text = "Less Honey";


action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	o_store_manager.honeyToBuy = max(o_store_manager.honeyToBuy - c, 0);
}