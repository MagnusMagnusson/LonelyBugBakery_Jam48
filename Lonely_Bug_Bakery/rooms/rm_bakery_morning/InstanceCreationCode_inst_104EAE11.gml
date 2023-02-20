getText = function(){
	return string(o_store_manager.honeyToBuy) + " x $" + string(honeyCost) + " = $" +  string((o_store_manager.honeyToBuy * honeyCost)); 
}