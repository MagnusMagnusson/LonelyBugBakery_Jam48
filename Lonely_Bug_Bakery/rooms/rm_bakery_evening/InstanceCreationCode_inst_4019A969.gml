text = "Less Honey";


action = function(){
	o_store_manager.honeyToBuy = max(o_store_manager.honeyToBuy - 1, 0);
}