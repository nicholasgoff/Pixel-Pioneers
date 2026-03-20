event_inherited(); // Keep any parent logic

if (instance_exists(obj_x01)) {
    var _dist = distance_to_object(obj_x01);
    
    // Stay away if too close, approach if too far
    if (_dist < 200) {
        direction = point_direction(obj_x01.x, obj_x01.y, x, y); // Run away
    } else if (_dist > 400) {
        direction = point_direction(x, y, obj_x01.x, obj_x01.y); // Get closer
    } else {
        speed = 0; // Perfect range, stop moving
    }
    speed = move_speed;

    // 2. Shooting Logic
    if (_dist < 500 && can_shoot) {
        var _orb = instance_create_layer(x, y, "Instances", obj_ink_orb);
        _orb.direction = point_direction(x, y, obj_x01.x, obj_x01.y);
        _orb.speed = 4;
        
        can_shoot = false;
        alarm[0] = 120; // 2 seconds between shots
    }
}