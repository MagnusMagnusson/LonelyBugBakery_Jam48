var off = 0;
var xSep = 80;
var ySep = 100;
var pileSep = 300;


for(var i = 0; i < o_ctrl.honeyCake; i++){
	draw_sprite_ext(spr_honey_cake, 0, off + x + (i % 4) * xSep,y - (i div 4)*ySep,0.75,0.75, 0, c_white, 1);
}

off += pileSep;
for(var i = 0; i < o_ctrl.honeyIce; i++){
	draw_sprite_ext(spr_ice_cream, 0,off + x + (i % 4) * xSep,y - (i div 4)*ySep,0.75,0.75, 0, c_white, 1);
}

off += pileSep;
for(var i = 0; i < o_ctrl.sweetTea; i++){
	draw_sprite_ext(spr_sweet_tea, 0,off + x + (i % 4) * xSep,y - (i div 4)*ySep,0.75,0.75, 0, c_white, 1);
}

off += pileSep;
for(var i = 0; i < o_ctrl.coldBread; i++){
	draw_sprite_ext(spr_cold_bun, 0,off + x + (i % 4) * xSep,y - (i div 4)*ySep,0.75,0.75, 0, c_white, 1);
}

off += pileSep;
for(var i = 0; i < o_ctrl.spiceCake; i++){
	draw_sprite_ext(spr_spice_bread, 0,off + x + (i % 4) * xSep,y - (i div 4)*ySep,0.75,0.75, 0, c_white, 1);
}

off += pileSep;
for(var i = 0; i < o_ctrl.iceTea; i++){
	draw_sprite_ext(spr_ice_tea, 0,off + x + (i % 4) * xSep,y - (i div 4)*ySep,0.75,0.75, 0, c_white, 1);
}