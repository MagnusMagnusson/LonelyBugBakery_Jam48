text = "More Honey Slush"


action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	if(o_ctrl.canAddMore(PRODUCT.honey_ice_cream,c)){
		o_ctrl.honeyIce+= c;
	}
}