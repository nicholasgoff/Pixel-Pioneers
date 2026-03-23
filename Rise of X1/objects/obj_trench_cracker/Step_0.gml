event_inherited();

if (instance_exists(obj_x01)) {
    var _target_dir = point_direction(x, y, obj_x01.x, obj_x01.y);
    
    var _diff = angle_difference(_target_dir, image_angle);
    image_angle += clamp(_diff, -2, 2);

    direction = image_angle;
    speed = move_speed;

    if (image_angle > 90 && image_angle < 270) {
        image_xscale = -1;
    } else {
        image_xscale = 1;
    }
}

if (instance_exists(obj_x01) && distance_to_object(obj_x01) < 50) {
    speed = 0;
}