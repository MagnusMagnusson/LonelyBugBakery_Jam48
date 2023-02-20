text = "More Grain";
action = function(){
	if(o_store_manager.getTotalCost() + grainCost <= o_ctrl.money){
		o_store_manager.grainToBuy++;
	}
}