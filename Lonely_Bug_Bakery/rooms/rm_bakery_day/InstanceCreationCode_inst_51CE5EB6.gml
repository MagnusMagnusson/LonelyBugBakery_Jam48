getText = function(){
	var t = o_ctrl.honeyIce + o_ctrl.honeyCake + o_ctrl.sweetTea;
	return "Honey: "+ string(o_ctrl.honey) + " - " + string(t) + " = " + string(o_ctrl.honey - t);
}