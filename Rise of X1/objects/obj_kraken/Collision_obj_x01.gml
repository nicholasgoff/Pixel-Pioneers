if (obj_x01.can_be_hit && !obj_x01.god_mode_is_active)
{
    var dmg = melee_damage;

    if (obj_game_manager.has_hardened_shell)
    {
        dmg = melee_damage / 2;
    }

    obj_x01.hp -= dmg;

    // Knock player back
    var _dir = point_direction(x, y, obj_x01.x, obj_x01.y);
    obj_x01.h_speed = lengthdir_x(30, _dir);
    obj_x01.v_speed = lengthdir_y(30, _dir);

    obj_x01.can_be_hit = false;
    obj_x01.alarm[3] = 60;
}