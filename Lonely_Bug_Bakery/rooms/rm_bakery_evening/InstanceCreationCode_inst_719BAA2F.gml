getText = function(){
	return string(o_store_manager.grainToBuy) + " x $" + string(grainCost) + " = $" +  string((o_store_manager.grainToBuy * grainCost)); 
}