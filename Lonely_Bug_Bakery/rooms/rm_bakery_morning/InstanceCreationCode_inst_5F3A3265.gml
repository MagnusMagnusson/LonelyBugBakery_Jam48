text = "Fewer Herbal Buns"


action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	o_ctrl.spiceCake = max(0, o_ctrl.spiceCake - c);
}