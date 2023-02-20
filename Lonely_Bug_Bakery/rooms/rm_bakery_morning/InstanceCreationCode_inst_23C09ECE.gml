text = "More Ice-Tea"

action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	if(o_ctrl.canAddMore(PRODUCT.ice_tea, c)){
		o_ctrl.iceTea+=c;
	}
}