text = "-10 Cents"

action = function(){
	o_ctrl.honeyCakePrice = max(0.1, o_ctrl.honeyCakePrice - 0.1);
}