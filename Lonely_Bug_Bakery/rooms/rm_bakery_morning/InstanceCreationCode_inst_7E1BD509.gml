text = "More Cold Bread"

action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	if(o_ctrl.canAddMore(PRODUCT.cold_bread, c)){
		o_ctrl.coldBread += c;
	}
}