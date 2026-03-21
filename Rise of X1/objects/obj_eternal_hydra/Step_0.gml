event_inherited()

// Create a gentle up/down sway
timer += 0.05;
var _wave = sin(timer) * 2;

if (!fleeing) {
    wander_timer--;

    // Pick a new random point in the room sometimes,
    // or when close to current target
    if (wander_timer <= 0 || point_distance(x, y, wander_x, wander_y) < 20) {
        wander_x = irandom_range(64, room_width - 64);
        wander_y = irandom_range(64, room_height - 64);
        wander_timer = irandom_range(60, 120);
    }

    var _dir = point_direction(x, y, wander_x, wander_y);
    var _new_x = x + lengthdir_x(move_speed, _dir);
    var _new_y = y + lengthdir_y(move_speed, _dir) + _wave;

    if (!place_meeting(_new_x, y, obj_wall)) {
        x = _new_x;
    } else {
        wander_timer = 0;
    }

    if (!place_meeting(x, _new_y, obj_wall)) {
        y = _new_y;
    } else {
        wander_timer = 0;
    }

    // Run away if player gets close
    if (instance_exists(obj_x01)) {
        if (distance_to_object(obj_x01) < 100) {
            fleeing = true;
        }
    }
} else {
    var _dir = point_direction(obj_x01.x, obj_x01.y, x, y);

    var _new_x = x + lengthdir_x(4, _dir);
    var _new_y = y + lengthdir_y(4, _dir);

    if (!place_meeting(_new_x, y, obj_wall)) {
        x = _new_x;
    }

    if (!place_meeting(x, _new_y, obj_wall)) {
        y = _new_y;
    }

    // Stop fleeing once far enough away
    if (distance_to_object(obj_x01) > 160) {
        fleeing = false;
        wander_timer = 0;
    }
}