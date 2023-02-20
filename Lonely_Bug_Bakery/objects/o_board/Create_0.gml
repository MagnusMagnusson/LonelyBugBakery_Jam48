board = new Board(12, 10, 640, 128, 128);
var f = {};

f[$ TILE.grain] = 5 + 2*o_ctrl.usage(TILE.grain);
f[$ TILE.honey] = 5 + 2*o_ctrl.usage(TILE.honey);
f[$ TILE.ice] = 5 + 2*o_ctrl.usage(TILE.ice);
f[$ TILE.tea] = 5 + 2*o_ctrl.usage(TILE.tea);
t = o_ctrl.usage(TILE.grain) + o_ctrl.usage(TILE.honey) + o_ctrl.usage(TILE.ice) + o_ctrl.usage(TILE.tea)

if(t == 0){
	o_ctrl.finishPuzzle();
	exit;
}
if(o_ctrl.usage(TILE.grain) <= 5){
	t += 15;
}
if(o_ctrl.usage(TILE.tea) <= 5){
	t += 15;
}
if(o_ctrl.usage(TILE.honey) <= 5){
	t += 15;
}
if(o_ctrl.usage(TILE.ice) <= 5){
	t += 15;
}
f[$ TILE.stress] = 5 + ceil(t * 0.33);
board.fill(f)

timer = room_speed * 60 * 3;
quality = 0;
stop = false;