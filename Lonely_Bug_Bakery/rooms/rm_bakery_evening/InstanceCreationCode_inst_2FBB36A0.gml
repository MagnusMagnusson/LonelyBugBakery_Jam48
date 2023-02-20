text = "More Honey";

action = function(){
	if(o_store_manager.getTotalCost() + honeyCost <= o_ctrl.money){
		o_store_manager.honeyToBuy++;
	}
}