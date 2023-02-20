text = "-10 Cents"

action = function(){
	o_ctrl.spiceCakePrice = max(0.1, o_ctrl.spiceCakePrice - 0.1);
}