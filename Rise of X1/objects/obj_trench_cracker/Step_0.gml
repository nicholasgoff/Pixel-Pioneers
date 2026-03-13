event_inherited();

if (instance_exists(obj_x01)) {
    // 1. Calculate the direction to the player
    var _target_dir = point_direction(x, y, obj_x01.x, obj_x01.y);
    
    // 2. Find the shortest way to turn toward that direction
    var _diff = angle_difference(_target_dir, image_angle);
    
    // 3. Rotate by 2 degrees (the "rotation speed")
    image_angle += clamp(_diff, -2, 2); 
    
    // Move forward in the direction he is currently facing
    direction = image_angle;
    speed = move_speed;
}

// Logic: If he gets too close, he "hunkers down" to attack
if (distance_to_object(obj_x01) < 50) {
    speed = 0;
    // We could add a 'Crushing' animation here later
}