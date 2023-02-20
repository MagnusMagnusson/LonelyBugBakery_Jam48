draw_set_font(fnt_puzzle_ux);
draw_set_halign(fa_center);
draw_set_color(c_black)
draw_text(x, y,"TIME");
draw_text(x, y + 64,string((o_board.timer div room_speed) div 60) + " : " + string((o_board.timer div room_speed) mod 60));


draw_text(x, y + 128, "SCORE");
draw_text(x, y + 128 + 64, o_board.board.quality);


var bottom, top,w;
bottom = y + 300 + 800;
top = y + 300
w = 70;


var s1 = targetScore(o_board.board.startCount + 1, 2.5);
var s2 = targetScore(o_board.board.startCount + 1, 3.5);
var s3 = targetScore(o_board.board.startCount + 1, 5);
var s4 = targetScore(o_board.board.startCount + 1, 5.5);

var t1,t2,t3,t4,tr;

t1 = bottom * (1 - s1/s4) + (top * s1/s4);
t2 = bottom * (1 - s2/s4) + (top * s2/s4);
t3 = bottom * (1 - s3/s4) + (top * s3/s4);
t4 = top;
tr = min(1,o_board.board.quality / s4);

draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(x - w, bottom, x + w, bottom * (1 - tr) + top * (tr),false);

draw_set_alpha(0.5);
draw_set_color(c_red);
draw_rectangle(x - w, bottom, x + w, t1, false);


draw_set_color(c_orange);
draw_rectangle(x - w,t1, x + w, t2, false);


draw_set_color(c_green);
draw_rectangle(x - w, t2, x + w, t3, false);


draw_set_color(c_blue);
draw_rectangle(x - w, t3, x + w, top, false);


draw_set_alpha(1);
draw_set_color(c_black)

for(var i = 50; i < s4; i += 59){
	var tt = bottom * (1 - i/s4) + (top * i/s4)
	draw_rectangle(x - w, tt - 3, x - w/2, tt + 3, false);
}

draw_set_halign(fa_left);