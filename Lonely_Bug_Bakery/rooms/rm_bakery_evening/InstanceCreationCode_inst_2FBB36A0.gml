text = "More Honey";

action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	if(o_store_manager.getTotalCost() + honeyCost * c <= o_ctrl.money){
		o_store_manager.honeyToBuy += c;
	}
}