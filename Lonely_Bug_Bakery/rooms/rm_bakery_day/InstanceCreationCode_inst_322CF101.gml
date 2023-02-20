text = "-10 Cents"


action = function(){
	o_ctrl.iceTeaPrice = max(0.1, o_ctrl.iceTeaPrice - 0.1);
}