function scr_get_cost(tile){
	switch(tile){
		case TILE.grain : {
			return o_store_manager.grainToBuy * grainCost;
		}
		case TILE.tea : {
			return o_store_manager.teaToBuy * teaCost;
		}
		case TILE.ice : {
			return o_store_manager.iceToBuy * iceCost;
		}
		case TILE.honey : {
			return o_store_manager.honeyToBuy * honeyCost;
		}
	}
}