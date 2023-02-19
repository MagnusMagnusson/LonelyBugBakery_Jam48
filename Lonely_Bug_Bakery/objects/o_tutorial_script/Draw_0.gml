draw_set_alpha(0.9);
draw_set_color(c_black);
draw_rectangle(0, 0.9*room_height, room_width, room_height, false);
draw_set_color(c_white);
draw_set_font(fnt_scene);
draw_text_ext(0.1 * room_width, 0.92 * room_height, displayText, 24, 0.9 * room_width);