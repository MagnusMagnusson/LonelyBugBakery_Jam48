draw_set_color(ux_outline_color);
draw_set_font(fnt_ux_big)
var bord = 16;
draw_roundrect(x - bord, y - bord, x + sprite_width + bord, y + sprite_height + bord, false);
draw_set_color(ux_base_color);
draw_roundrect(x, y, x + sprite_width, y + sprite_height, false);