draw_set_color(ux_outline_color);
var bord = 4;
draw_roundrect(x - bord, y - bord, x + sprite_width + bord, y + sprite_height + bord, false);

draw_set_color(ux_button_color);
draw_roundrect(x, y, x + sprite_width, y + sprite_height, false);

draw_set_font(fnt_ux_button);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x + sprite_width / 2, y + sprite_height / 2, text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);