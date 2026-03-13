if (obj_x01.can_be_hit) {
    obj_game_manager.hp_current -= 20; // Heavy damage (2 full hearts in a 100hp system)
    
    // Massive Knockback
    var _dir = point_direction(x, y, obj_x01.x, obj_x01.y);
    obj_x01.hspeed = lengthdir_x(25, _dir);
    obj_x01.vspeed = lengthdir_y(25, _dir);
    
    obj_x01.can_be_hit = false;
    obj_x01.alarm[3] = 90; // Longer recovery time
}