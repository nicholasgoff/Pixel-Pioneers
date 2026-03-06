// Move toward X-01 if he's in the room
if (instance_exists(obj_x01)) {
    var _dir = point_direction(x, y, obj_x01.x, obj_x01.y);
    
    // Smoothly turn toward player
    direction = _dir;
    speed = move_speed;
    
    // Point the "needle" at the player
    image_angle = direction;
}