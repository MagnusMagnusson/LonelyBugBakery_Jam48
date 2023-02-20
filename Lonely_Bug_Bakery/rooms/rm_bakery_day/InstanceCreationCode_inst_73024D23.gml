text = "More Ice";

action = function(){
	if(o_store_manager.getTotalCost() + iceCost <= o_ctrl.money){
		o_store_manager.iceToBuy++;
	}
}