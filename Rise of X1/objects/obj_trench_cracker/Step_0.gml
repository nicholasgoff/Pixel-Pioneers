event_inherited();

if (instance_exists(obj_x01)) {
    // Calculate the direction to the player
    var _target_dir = point_direction(x, y, obj_x01.x, obj_x01.y);
	_target_dir += 180;
    
    // Find the shortest way to turn toward that direction
    var _diff = angle_difference(_target_dir, image_angle);
    
    // Rotate by 2 degrees (the "rotation speed")
    image_angle += clamp(_diff, -2, 2); 
    
    // Move forward in the direction he is currently facing
    direction = image_angle;
    speed = move_speed;
}

// Logic: If he gets too close, he "hunkers down" to attack
if (distance_to_object(obj_x01) < 50) {
    speed = 0;
	
}