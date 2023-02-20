enum TILE {
	none,
	tea,
	ice,
	honey,
	grain,
	stress
}

enum PRODUCT {
	none,
	sweet_tea,
	ice_tea,
	spice_bread,
	honey_cake,
	honey_ice_cream,
	cold_bread,
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

function tile_get_product(){
	return [
		PRODUCT.sweet_tea,
		PRODUCT.ice_tea,
		PRODUCT.spice_bread,
		PRODUCT.honey_cake,
		PRODUCT.honey_ice_cream,
		PRODUCT.cold_bread,
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

function product_get_sprite(product){
	switch(product){
		case PRODUCT.none: return spr_antastatia;
		case PRODUCT.sweet_tea: return spr_sweet_tea;
		case PRODUCT.cold_bread: return spr_cold_bun;
		case PRODUCT.honey_ice_cream: return spr_ice_cream;
		case PRODUCT.ice_tea: return spr_ice_tea;
		case PRODUCT.honey_cake: return spr_honey_cake;
		case PRODUCT.spice_bread: return spr_spice_bread;
	}
}