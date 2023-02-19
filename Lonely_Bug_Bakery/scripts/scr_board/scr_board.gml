function Board(_w,_h, _x, _y, tileSize) constructor{
	w = _w;
	h = _h;
	xoffset = _x;
	yoffset = _y;
	tSize = tileSize;
	board = array_create(w);
	renderBoard = array_create(w);
	reserve = ds_list_create();
	
	for(var i = 0; i < w; i++){
		board[i] = array_create(h, TILE.none);
		renderBoard[i] = array_create(h, undefined);
	}
	
	static destroy = function(){
		ds_list_destroy(reserve);
	}
	
	static fill = function(tileCounts){
		var tiles = tile_get_array();
		ds_list_empty(reserve);
		for(var t = 0; t < array_length(tiles); t++){
			var tile = tiles[t];
			var tileCount = tileCounts[$ tile];
			for(var i = 0; i < tileCount; i++){
				ds_list_add(reserve, tile);
			}
		}
		ds_list_shuffle(reserve);
		show_debug_message("before")
		show_debug_message(ds_list_size(reserve))
		update();
		show_debug_message("after")
		show_debug_message(ds_list_size(reserve))
	}
	
	static click = function(xx,yy){
		
	}
	
	static update = function(){
		fallDown();
		fallCenter();
	}
	
	static fallDown = function(){		
		show_debug_message("fallDown")
		for(var xx = 0; xx < w; xx++){
			for(var yy = 0; yy < h; yy++){
				if(yy == h - 1){
					if(board[xx][yy] == TILE.none && ds_list_size(reserve) > 0){
						var newTile = reserve[|0];
						ds_list_delete(reserve, 0);
						var inst = instance_create_layer(xoffset + xx * tSize, -tSize * 1.1, "layer_tiles", o_tile);
						inst.tile = newTile; 
						inst.sprite_index = tile_get_sprite(newTile);
						inst.xx = xx;
						inst.yy = yy;
						inst.xoffset = xoffset;
						inst.yoffset = yoffset;
						inst.board = self;
						
						board[xx][yy] = newTile;
						renderBoard[xx][yy] = inst;
						show_debug_message("Created new inst " + string(xx) + " - " + string(yy))
						yy = 0;
					}
				} else {
					if(board[xx][yy] == TILE.none && board[xx][yy + 1] != TILE.none){
						moveTile(xx, yy + 1, xx, yy);
						show_debug_message("Moved one down at" + string(xx) + " - " + string(yy))
						yy = 0;
					}
				}
			}
		}
	}
	
	static fallCenter = function(){
		show_debug_message("fallCenter")
		for(var xx = ceil(w / 2); xx < w - 1; xx++){
			if(board[xx][0] == TILE.none && board[xx + 1][0]){
				for(var yy = 0; yy < h; y++){
					moveTile(xx + 1, yy, xx, yy);
				}
				show_debug_message("Moved one left" + string(xx) + " - " + string(0))
				xx = ceil(w / 2);
			}
		}
		for(var xx = floor(w / 2); xx > 0; xx--){
			if(board[xx][0] == TILE.none && board[xx - 1][0]){
				for(var yy = 0; yy < h; y++){
					moveTile(xx - 1, yy, xx, yy);
				}
				show_debug_message("Moved one right" + string(xx) + " - " + string(0))
				xx = floor(w / 2);
			}
		}
	}
	
	static moveTile = function(xPrev, yPrev, xNew, yNew){				
		board[xNew][yNew] = board[xPrev][yPrev];
		renderBoard[xNew][yNew] = renderBoard[xPrev][yPrev];
		board[xPrev][yPrev] = TILE.none;
		renderBoard[xPrev][yPrev] = undefined;
		renderBoard[xNew][yNew].xx = xNew;
		renderBoard[xNew][yNew].yy = yNew;
	}
}