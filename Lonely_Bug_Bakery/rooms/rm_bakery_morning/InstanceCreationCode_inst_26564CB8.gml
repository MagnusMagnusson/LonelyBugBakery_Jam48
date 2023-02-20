text = "Less Grain";

action = function(){
	o_store_manager.grainToBuy = max(o_store_manager.grainToBuy - 1, 0);
}