text = "More Ice";

action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	if(o_store_manager.getTotalCost() + c*iceCost <= o_ctrl.money){
		o_store_manager.iceToBuy += c;
	}
}