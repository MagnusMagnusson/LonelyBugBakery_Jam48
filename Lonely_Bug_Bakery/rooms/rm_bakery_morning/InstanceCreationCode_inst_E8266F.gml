getText = function(){
	var t = o_ctrl.honeyCake + o_ctrl.coldBread + o_ctrl.spiceCake;
	return "Grain: "+ string(o_ctrl.grain) + " - " + string(t) + " = " + string(o_ctrl.grain - t);
}