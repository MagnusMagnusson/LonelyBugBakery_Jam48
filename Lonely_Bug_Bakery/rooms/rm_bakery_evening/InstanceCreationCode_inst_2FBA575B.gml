text = "More Tea";

action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	if(o_store_manager.getTotalCost() + c*teaCost <= o_ctrl.money){
		o_store_manager.teaToBuy += c;
	}
}