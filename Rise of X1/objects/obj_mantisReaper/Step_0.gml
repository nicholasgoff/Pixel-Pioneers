event_inherited();

if (instance_exists(obj_x01)) {
    // Mantis Reaper is aggressive—it always swims directly at you
    var _dir = point_direction(x, y, obj_x01.x, obj_x01.y);
    hspeed = lengthdir_x(move_speed, _dir);
    vspeed = lengthdir_y(move_speed, _dir);
    
    // Make the sprite "shiver" to show its aggression
    x += random_range(-1, 1);
    y += random_range(-1, 1);
}