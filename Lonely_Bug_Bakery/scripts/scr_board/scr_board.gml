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
	
	static deconstructor = function(){
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
		var cluster = getCluster(board[xx][yy], xx, yy);
		var _x, _y;
		_x = 0;
		_y = 0;
		var pow = array_length(cluster);
		if(array_length(cluster) > 1){
			for(var i = 0; i < array_length(cluster); i++){
				cord = cluster[i];
				var inst = renderBoard[cord.xx][cord.yy];
				board[cord.xx][cord.yy] = TILE.none;
				renderBoard[cord.xx][cord.yy] = undefined;
				_x = getRealCords_x(cord.xx);
				_y = getRealCords_y(cord.yy);
				instance_destroy(inst);
					
				with(o_tile){
					motion_add(point_direction(_x, _y, x, y), (0.5 * pow * pow * other.tSize) / point_distance(_x, _y, x, y));
					disableMovement = 10;
				}
			}
			if(pow > 3){
				o_board_wall_r.hspeed = pow*pow*2;
				o_board_wall_l.hspeed = -(pow*pow*2);
				o_board_wall_b.vspeed = pow*pow*2;
				o_board_wall_b.hspeed = 0;
			}
			update();
		}
		return false;
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
						yy = -1;
					}
				} else {
					if(board[xx][yy] == TILE.none && board[xx][yy + 1] != TILE.none){
						moveTile(xx, yy + 1, xx, yy);
						show_debug_message("Moved one down at" + string(xx) + " - " + string(yy))
						yy = -1;
					}
				}
			}
		}
	}
	
	static fallCenter = function(){
		show_debug_message("fallCenter")
		for(var xx = ceil(w / 2); xx < w - 1; xx++){
			if(board[xx][0] == TILE.none && board[xx + 1][0]){
				for(var yy = 0; yy < h; yy++){
					if(board[xx + 1, yy] != TILE.none){
						moveTile(xx + 1, yy, xx, yy);
					}
				}
				show_debug_message("Moved one left" + string(xx) + " - " + string(0))
				xx = ceil(w / 2)-1;
			}
		}
		for(var xx = floor(w / 2); xx > 0; xx--){
			if(board[xx][0] == TILE.none && board[xx - 1][0]){
				for(var yy = 0; yy < h; yy++){
					if(board[xx - 1, yy] != TILE.none){
						moveTile(xx - 1, yy, xx, yy);
					}
				}
				show_debug_message("Moved one right" + string(xx) + " - " + string(0))
				xx = floor(w / 2)+1;
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

	static getCluster = function(tileType, xx,yy, done = []){
		for(var i = 0; i < array_length(done); i++){
			if(done[i].xx == xx && done[i].yy == yy){
				return done;
			}
		}
		
		array_push(done, {"xx" : xx,"yy" : yy});
		if(xx > 0){
			if(board[xx - 1][yy] == tileType){
				getCluster(tileType, xx - 1, yy, done);
			}
		}
		if(xx < w - 1){
			if(board[xx + 1][yy] == tileType){
				getCluster(tileType, xx + 1, yy, done);
			}
		}
		if(yy > 0){
			if(board[xx][yy - 1] == tileType){
				getCluster(tileType, xx, yy - 1, done);
			}
		}
		if(yy < h - 1){
			if(board[xx][yy + 1] == tileType){
				getCluster(tileType, xx, yy + 1, done);
			}
		}
		return done;
	}

	static getRealCords_x = function(xx){
		return xoffset + xx * tSize;
	}
		
	static getRealCords_y = function(yy){
		return (yoffset + (h - 1) * tSize) - yy * tSize;
	}
}