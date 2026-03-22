
if (state == "drift") {
    state = "latched";
    speed = 0;
    
    // Calculate where on the player it hit so it stays in that spot
    attach_offset_x = x - obj_x01.x;
    attach_offset_y = y - obj_x01.y;
}