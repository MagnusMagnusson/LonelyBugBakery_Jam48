text = "Less Tea";

action = function(){
	o_store_manager.teaToBuy = max(o_store_manager.teaToBuy - 1, 0);
}