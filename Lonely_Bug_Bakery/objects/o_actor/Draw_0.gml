if(highlight){
	blend += (1 - blend) * 0.1;
	lerpX += (image_xscale -lerpX) * 0.1;
	lerpY +=  (image_yscale -lerpY) * 0.1;
} else {
	blend += (0.7 - blend) * 0.1;
	lerpX +=  (0.9 * image_xscale -lerpX) * 0.1;
	lerpY +=  (0.9 * image_yscale -lerpY) * 0.1;
}

var b = 255 * blend;

draw_text(x, y - 128, highlight);
draw_sprite_ext(sprite_index, image_index, x, y, lerpX, lerpY, image_angle, make_color_rgb(b,b,b), image_alpha);