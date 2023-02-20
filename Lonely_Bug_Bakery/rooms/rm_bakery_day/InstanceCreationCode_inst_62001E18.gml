getText = function(){
	return "Grain : " + string(o_store_manager.grainToBuy) + " + "+ string(o_ctrl.grain) + " = " +  string(o_store_manager.grainToBuy + o_ctrl.grain);
}