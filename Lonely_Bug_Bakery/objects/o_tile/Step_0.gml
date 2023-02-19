if(disableMovement > 0){
	disableMovement--;
	exit;
}
var xTarget = xoffset + xx * sprite_width;
var b = is_undefined(board) ? {"h":0} : board;
var yTarget = (yoffset + (b.h-1 ) * 128 ) - yy * sprite_height;

if(xTarget != x){
	hspeed -= (x - xTarget)/30
}

if(yTarget != y){
	vspeed -= (y - yTarget)/30
}

hspeed *= 0.9;
vspeed *= 0.9;