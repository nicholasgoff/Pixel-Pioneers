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
        if (instance_exists(obj_x01)) {
            var _dir = point_direction(x, y, obj_x01.x, obj_x01.y);
            image_angle = _dir;

            x += lengthdir_x(lunge_speed, _dir);
            y += lengthdir_y(lunge_speed, _dir);

            x = clamp(x, 0, room_width);
            y = clamp(y, 0, room_height);

            if (distance_to_object(obj_x01) < 5) state = "retreat";
        }
    break;

    case "retreat":
        // Back away quickly after an attack
        if (instance_exists(obj_x01)) {
            var _dir = point_direction(obj_x01.x, obj_x01.y, x, y);
            image_angle = _dir;

            x += lengthdir_x(5, _dir);
            y += lengthdir_y(5, _dir);

            x = clamp(x, 0, room_width);
            y = clamp(y, 0, room_height);

            retreat_timer++;

            if (x <= 0 || x >= room_width || y <= 0 || y >= room_height) {
                state = "stalk";
                retreat_timer = 0;
            }

            if (retreat_timer > 60) {
                state = "stalk";
                retreat_timer = 0;
            }
        }
    break;
}