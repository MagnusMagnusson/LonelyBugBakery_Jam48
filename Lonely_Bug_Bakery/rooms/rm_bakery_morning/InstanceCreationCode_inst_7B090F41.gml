getText = function(){
	var t = o_ctrl.spiceCake + o_ctrl.sweetTea + o_ctrl.iceTea;
	return "Tea: "+ string(o_ctrl.tea) + " - " + string(t) + " = " + string(o_ctrl.tea - t);
}