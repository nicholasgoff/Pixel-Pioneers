// 1. Serpentine movement logic
timer += 0.05;
var _wave = sin(timer) * 2; // Create a gentle up/down sway

if (!fleeing) {
    x += move_speed;
    y += _wave;
    
    // Check if player is getting too close
    if (instance_exists(obj_x01)) {
        if (distance_to_object(obj_x01) < 100) fleeing = true;
    }
} else {
    // Flee away from player
    var _dir = point_direction(obj_x01.x, obj_x01.y, x, y);
    direction = _dir;
    speed = 4; // Burst of speed
}