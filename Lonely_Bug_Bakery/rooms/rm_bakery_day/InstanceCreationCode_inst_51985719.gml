text = "Less Ice";


action = function(){
	o_store_manager.iceToBuy = max(o_store_manager.iceToBuy - 1, 0);
}