event_inherited();

switch (state) {
    case "stalk":
        if (instance_exists(obj_x01)) {
            var _dist = distance_to_object(obj_x01);
            var _dir = point_direction(x, y, obj_x01.x, obj_x01.y);
            image_angle = _dir;

            // Stay exactly 150 pixels away (Stalking range)
            if (_dist > 160) {
                move_towards_point(obj_x01.x, obj_x01.y, move_speed);
            } else if (_dist < 140) {
                move_towards_point(obj_x01.x, obj_x01.y, -move_speed); // Back away
            } else {
                speed = 0;
                // Randomly decide to lunge
                if (irandom(100) > 98) state = "lunge"; 
            }
        }
    break;

    case "lunge":
        // Rapid dash forward
        speed = lunge_speed;
        // If he gets close enough or travels too far, go to retreat
        if (distance_to_object(obj_x01) < 10) state = "retreat";
        if (speed > 0) speed -= 0.2; // Natural deceleration
	
    break;

    case "retreat":
        // Back away quickly after an attack
        if (instance_exists(obj_x01)) {
            var _dir = point_direction(obj_x01.x, obj_x01.y, x, y);
            direction = _dir;
            speed = 5;
            retreat_timer++;
            if (retreat_timer > 60) { // Retreat for 1 second
                state = "stalk";
                retreat_timer = 0;
            }
        }
    break;
}