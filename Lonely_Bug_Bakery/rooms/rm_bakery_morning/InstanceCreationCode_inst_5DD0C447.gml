text = "More Honey Muffin"


action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	if(o_ctrl.canAddMore(PRODUCT.honey_cake, c)){
		o_ctrl.honeyCake += c;
	}
}