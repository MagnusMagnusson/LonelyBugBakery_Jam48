if stop exit;

timer--;
if(timer < 0){
	stop = true;
	with(o_tile){
		dead = true;
		gravity = 1;
		vspeed = -random(10);
		hspeed = random_range(-5,5);
		image_blend = c_gray;
	}
}