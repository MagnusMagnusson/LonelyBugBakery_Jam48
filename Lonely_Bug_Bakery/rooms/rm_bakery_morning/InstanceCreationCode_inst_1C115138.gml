text = "-10 Cents"
action = function(){
	o_ctrl.coldBreadPrice = max(0.1, o_ctrl.coldBreadPrice - 0.1);
}