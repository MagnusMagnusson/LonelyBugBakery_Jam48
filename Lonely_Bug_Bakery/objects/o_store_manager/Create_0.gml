iceToBuy = 0;
teaToBuy = 0;
grainToBuy = 0;
honeyToBuy = 0;

getTotalCost = function(){
	return scr_get_cost(TILE.grain)
	+ scr_get_cost(TILE.ice)
	+ scr_get_cost(TILE.tea)
	+ scr_get_cost(TILE.honey)
}

confirmBuy = function(){
	o_ctrl.ice += iceToBuy;
	o_ctrl.tea += teaToBuy;
	o_ctrl.honey += honeyToBuy;
	o_ctrl.grain += grainToBuy;
	o_ctrl.money -= getTotalCost();
	iceToBuy = 0;
	teaToBuy = 0;
	grainToBuy = 0;
	honeyToBuy = 0;
	room_goto_next();
}