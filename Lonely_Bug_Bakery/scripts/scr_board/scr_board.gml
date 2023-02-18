function Board(_w,_h, _x, _y, tileSize) constructor{
	w = _w;
	h = _h;
	xx = _x;
	yy = _y;
	board = array_create(w);
	
	for(var i = 0; i < w; i++){
		board[i] = array_create(h, TILE.none);
	}
	
	static fill = function(tileCounts){
		var tiles = tile_get_array();
		var _list = ds_list_create();
		for(var t = 0; t < array_length(tiles); t++){
			var tile = tiles[t];
			var tileCount = tileCounts[$ tile];
			for(var i = 0; i < tileCount; i++){
				ds_list_add(_list, tile);
			}
		}
		ds_list_shuffle(_list);
	}
}