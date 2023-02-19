var xTarget = xoffset + xx * sprite_width;
var b = is_undefined(board) ? {"h":0} : board;
var yTarget = (yoffset + (b.h ) * 128 ) - yy * sprite_height;

if(xTarget != x){
	hspeed += 0.3 * sign((x - xTarget))
}

if(yTarget != y){
	vspeed +=- 0.3 * sign((y - yTarget))
}

var LIM = 256

if(hspeed != 0 || vspeed != 0){
	speed = min(speed, LIM);
	if(abs(x - xTarget) < 16){
		hspeed *= 0.9;
		if(hspeed < LIM / 100){
			hspeed = 0;
			x = xTarget;
		}
	}
	if(abs(y - yTarget) < 16){
		if(vspeed < LIM / 100){
			vspeed = 0;
			y = yTarget;
		}
	}
}