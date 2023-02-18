tile = tile_get_random();
xx = 0;
yy = 0;
image_xscale = 0.5;
image_yscale = 0.5;

set_tile = function(_tile){
	tile = _tile;
	sprite_index = tile_get_sprite(tile);
}

set_tile(tile);
