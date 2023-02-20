text = "Less Honey Tea"



action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	o_ctrl.sweetTea = max(0, o_ctrl.sweetTea - c);
}