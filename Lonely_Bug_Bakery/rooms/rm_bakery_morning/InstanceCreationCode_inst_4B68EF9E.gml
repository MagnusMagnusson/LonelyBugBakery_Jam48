text = "Less Honey Slush"


action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	o_ctrl.honeyIce = max(0, o_ctrl.honeyIce - c);
}