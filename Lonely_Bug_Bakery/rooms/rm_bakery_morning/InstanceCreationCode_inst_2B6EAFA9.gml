text = "More Honey Tea"


action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	if(o_ctrl.canAddMore(PRODUCT.sweet_tea,c)){
		o_ctrl.sweetTea+=c;
	}
}