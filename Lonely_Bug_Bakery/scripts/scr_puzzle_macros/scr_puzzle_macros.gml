enum TILE {
	none,
	tea,
	ice,
	honey,
	grain,
	stress
}

function tile_get_array(){
	return [
		TILE.tea,
		TILE.ice,
		TILE.honey,
		TILE.grain,
		TILE.stress
	];
}

function tile_get_random(){
	var tiles = tile_get_array();
	var i = irandom(array_length(tiles) - 2);
	return tiles[i];
}

function tile_get_sprite(tile){
	switch(tile){
		case TILE.none: return undefined;
		case TILE.tea: return spr_tea;
		case TILE.grain: return spr_grain;
		case TILE.honey: return spr_honey;
		case TILE.ice: return spr_ice;
		case TILE.stress: return spr_stress;
	}
}