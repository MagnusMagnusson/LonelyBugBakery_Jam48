board = new Board(12, 10, 640, 128, 128);
var f = {};
f[$ TILE.grain] = 10*2;
f[$ TILE.honey] = 10*2
f[$ TILE.ice] = 10*2;
f[$ TILE.tea] = 10*2;
f[$ TILE.stress] = 10;
board.fill(f)

i = 0;