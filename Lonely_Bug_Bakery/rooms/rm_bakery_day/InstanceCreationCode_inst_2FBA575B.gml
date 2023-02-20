text = "More Tea";

action = function(){
	if(o_store_manager.getTotalCost() + teaCost <= o_ctrl.money){
		o_store_manager.teaToBuy++;
	}
}