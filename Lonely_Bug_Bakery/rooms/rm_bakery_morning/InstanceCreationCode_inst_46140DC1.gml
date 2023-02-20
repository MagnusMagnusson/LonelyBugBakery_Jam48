text = "Less Cold Bread"


action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	o_ctrl.coldBread = max(0, o_ctrl.coldBread - c);
}