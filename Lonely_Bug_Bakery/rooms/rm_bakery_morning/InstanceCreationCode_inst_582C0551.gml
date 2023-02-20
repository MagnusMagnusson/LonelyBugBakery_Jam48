text = "Fewer Honey Muffins"


action = function(){
	var c = keyboard_check(vk_shift) ? 10 : 1;
	o_ctrl.honeyCake = max(0, o_ctrl.honeyCake - c);
}