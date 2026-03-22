

if (obj_x01.can_be_hit && !obj_x01.god_mode_is_active) {
    obj_x01.hp -= 40;
    
    // Massive Knockback
    var _dir = point_direction(x, y, obj_x01.x, obj_x01.y);
    obj_x01.h_speed = lengthdir_x(25, _dir);
    obj_x01.v_speed = lengthdir_y(25, _dir);
    
    obj_x01.can_be_hit = false;
    obj_x01.alarm[3] = 90; // Longer recovery time
}