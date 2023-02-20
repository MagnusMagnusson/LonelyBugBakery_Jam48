sprite_index = choose(spr_antastatia, spr_spider);
image_xscale *= 1.5;
image_yscale *= 1.5;

hspeed = 12;
want = get_customer_want();
image_blend = irandom_range(c_gray, c_white);
done = false;