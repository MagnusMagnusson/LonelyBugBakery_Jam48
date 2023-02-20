alarm[0] = room_speed/6;
/*
	sweetTeam = o_ctrl.sweetTea;
	iceTea = o_ctrl.iceTea;
	honeyCake = o_ctrl.honeyCake;
	honeyIce = o_ctrl.honeyIce;
	coldBread = o_ctrl.coldBread;
	spiceCake = o_ctrl.spiceCake;
*/

if(o_board.stop){
	var i = instance_create_layer(random(room_width), -100, "layer_tiles", o_fallProduct);
	var a = tile_get_product();
	var tileType = a[irandom(array_length(a) - 1)];
	var xx = 100;
	while(map[$ tileType] == 0 && xx > 100){
		xx = xx-1; 
		tileType = a[irandom(array_length(a) - 1)];
	}
	map[$ tileType] = map[$ tileType] - 1;
	i.sprite_index = product_get_sprite(tileType);
	fakeScore = max(fakeScore - 10, 0);
	if((t <= 0 || fakeScore == 0)){
		alarm[1] = room_speed * 5;
		alarm[0] = -1;
	}

}

