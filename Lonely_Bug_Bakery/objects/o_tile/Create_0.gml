tile = TILE.ice;
xx = 1;
yy = 0;
xoffset = 0;
yoffset = 0;
board = undefined;
image_xscale = 0.5;
image_yscale = 0.5;

set_tile = function(_tile){
	tile = _tile;
	sprite_index = tile_get_sprite(tile);
}

set_tile(tile);
disableMovement = 0;