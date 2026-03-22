var cx = room_width / 2;
var cy = room_height / 2;

var mx = mouse_x;
var my = mouse_y;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (cutscene_timer > 210) {
    draw_set_font(fnt_title);
    draw_text(cx, cy - 300, "You Win");
}

if (cutscene_timer > 270) {
    draw_set_font(fnt_menu);
    draw_text(cx, cy - 110, "Play Again?");
}

if (cutscene_timer > 300) {

    // YES
    if (point_in_rectangle(mx, my, cx - 140, cy - 50, cx - 20, cy - 10)) {
        draw_text(cx - 80, cy - 30, "> Yes <");
    } else {
        draw_text(cx - 80, cy - 30, "Yes");
    }

    // NO
    if (point_in_rectangle(mx, my, cx + 20, cy - 50, cx + 140, cy - 10)) {
        draw_text(cx + 80, cy - 30, "> No <");
    } else {
        draw_text(cx + 80, cy - 30, "No");
    }
}