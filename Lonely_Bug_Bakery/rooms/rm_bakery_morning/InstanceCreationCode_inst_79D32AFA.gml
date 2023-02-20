text = "More Herbal Buns"

action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	if(o_ctrl.canAddMore(PRODUCT.spice_bread, c)){
		o_ctrl.spiceCake += c;
	}
}