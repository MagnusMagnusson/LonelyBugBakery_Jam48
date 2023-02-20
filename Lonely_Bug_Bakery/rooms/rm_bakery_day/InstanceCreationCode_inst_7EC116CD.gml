getText = function(){
	return string(o_store_manager.teaToBuy) + " x $" + string(teaCost) + " = $" +  string((o_store_manager.teaToBuy * teaCost)); 
}