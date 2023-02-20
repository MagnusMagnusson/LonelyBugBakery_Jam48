text = "Less Ice-Tea"



action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	o_ctrl.iceTea = max(0, o_ctrl.iceTea - c);
}