var mx = mouse_x;
var my = mouse_y;

var cx = room_width / 2;
var cy = room_height / 2;

// MAIN MENU
if (menu == "main") {
    
    // Start Game
    if (point_in_rectangle(mx, my, cx - 200, cy - 100, cx + 200, cy - 40)) {
        room_goto(rm_level_1);
    }

    // Instructions
    if (point_in_rectangle(mx, my, cx - 200, cy - 20, cx + 200, cy + 40)) {
        menu = "instructions";
    }

    // Credits
    if (point_in_rectangle(mx, my, cx - 200, cy + 60, cx + 200, cy + 120)) {
        menu = "credits";
    }
}

// BACK BUTTON
if (menu != "main") {
    if (point_in_rectangle(mx, my, cx - 150, cy + 440, cx + 150, cy + 500)) {
        menu = "main";
    }
}