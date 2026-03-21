var mx = mouse_x;
var my = mouse_y;

var cx = room_width / 2;
var cy = room_height / 2;

// Yes
if (point_in_rectangle(mx, my, cx - 140, cy, cx - 20, cy + 40)) {
    room_goto(rm_start);
}

// No
if (point_in_rectangle(mx, my, cx + 20, cy, cx + 140, cy + 40)) {
    game_end()
}