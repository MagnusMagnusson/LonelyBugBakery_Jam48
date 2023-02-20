getText = function(){
	return string(o_store_manager.iceToBuy) + " x $" + string(iceCost) + " = $" +  string((o_store_manager.iceToBuy * iceCost)); 
}