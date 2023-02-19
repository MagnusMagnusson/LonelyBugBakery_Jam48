x += (targetX - x) * 0.1;
if(abs(x - targetX) <= 16){
	x = targetX;
}

y += (targetY - y) * 0.1;
if(abs(y - targetY) <= 16){
	y = targetY;
}