event_inherited(); 

var _dist = distance_to_object(obj_x01);

if (_dist < 200) {
    // Special: Retreat! Swim in the opposite direction of X-01
    var _away_dir = point_direction(obj_x01.x, obj_x01.y, x, y);
    h_speed = lengthdir_x(move_speed, _away_dir);
    v_speed = lengthdir_y(move_speed, _away_dir);
} else if (_dist > 400) {
    // Move slightly closer if too far away
    var _towards_dir = point_direction(x, y, obj_x01.x, obj_x01.y);
    h_speed = lengthdir_x(move_speed, _towards_dir);
    v_speed = lengthdir_y(move_speed, _towards_dir);
}