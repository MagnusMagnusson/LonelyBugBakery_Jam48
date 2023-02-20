timer--;
if(timer < 0){
	with(o_tile){
		dead = true;
		gravity = 1;
		vspeed = -random(10);
		hspeed = random_range(-5,5);
	}
}