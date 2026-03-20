var cx = room_width / 2;
var cy = room_height / 2;

var mx = mouse_x;
var my = mouse_y;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fnt_title);
draw_text(cx, cy - 250, "You Lose");


draw_set_font(fnt_menu);
draw_text(cx, cy - 60, "Try Again?");

if (point_in_rectangle(mx, my, cx - 120, cy + 220, cx - 60, cy - 220)) {
        draw_text(cx - 80, cy + 20, "> Yes <");
    } else draw_text(cx - 80, cy + 20, "Yes");
	
if (point_in_rectangle(mx, my, cx + 120, cy + 220, cx + 60, cy - 220)) {
        draw_text(cx + 80, cy + 20, "> No <");
    } else draw_text(cx + 80, cy + 20, "No");