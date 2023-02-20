board = new Board(12, 10, 640, 128, 128);
var f = {};

f[$ TILE.grain] = 2*o_ctrl.usage(TILE.grain);
f[$ TILE.honey] = 2*o_ctrl.usage(TILE.honey);
f[$ TILE.ice] = 2*o_ctrl.usage(TILE.ice);
f[$ TILE.tea] = 2*o_ctrl.usage(TILE.tea);
t = o_ctrl.usage(TILE.grain) + o_ctrl.usage(TILE.honey) + o_ctrl.usage(TILE.ice) + o_ctrl.usage(TILE.tea)
f[$ TILE.stress] = floor(t * 0.2);
board.fill(f)
