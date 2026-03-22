if (cutscene_timer < 120) exit;

var mx = mouse_x;
var my = mouse_y;

var cx = room_width / 2;
var cy = room_height / 2;

// Yes
if (point_in_rectangle(mx, my, cx - 140, cy - 50, cx - 20, cy - 10)) {
    room_goto(rm_start);
}

// No
if (point_in_rectangle(mx, my, cx + 20, cy - 50, cx + 140, cy - 10)) {
    game_end()
}