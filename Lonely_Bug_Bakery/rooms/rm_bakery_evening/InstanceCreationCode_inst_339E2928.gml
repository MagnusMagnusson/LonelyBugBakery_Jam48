getText = function(){
	var tCost = scr_get_cost(TILE.grain) + scr_get_cost(TILE.tea) + scr_get_cost(TILE.honey) + scr_get_cost(TILE.ice);
	return "Total: $" + string(tCost) + " (Remaining : $" + string(o_ctrl.money - tCost) +")"
}