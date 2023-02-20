text = "Bake!"

action = function(){
	o_ctrl.ice -= o_ctrl.usage(TILE.ice);
	o_ctrl.grain -= o_ctrl.usage(TILE.grain);
	o_ctrl.honey -= o_ctrl.usage(TILE.honey);
	o_ctrl.tea -= o_ctrl.usage(TILE.tea);
	room_goto_next();
}