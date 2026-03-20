var mx = mouse_x;
var my = mouse_y;

var cx = room_width / 2;
var cy = room_height / 2;

// Yes
if (point_in_rectangle(mx, my, cx - 80, cy + 220, cx - 20, cy - 220)) {
    room_goto(rm_start);
}

// No
if (point_in_rectangle(mx, my, cx, cy + 220, cx + 60, cy + 220)) {
    game_end()
}