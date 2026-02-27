event_inherited()

if (distance_to_object(obj_x01) < 150) {
    // Special: Increased speed when close to player
    move_speed = 6; 
    // Point toward player
    direction = point_direction(x, y, obj_x01.x, obj_x01.y);
    speed = move_speed;
} else {
    move_speed = 2; // Return to normal speed
}