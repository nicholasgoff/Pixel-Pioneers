event_inherited();

// Only act if player exists
if (!instance_exists(obj_x01)) exit;

// Face player
var _dir = point_direction(x, y, obj_x01.x, obj_x01.y);
image_angle = _dir;

// Move toward player
move_towards_point(obj_x01.x, obj_x01.y, move_speed);

// Fire ranged attack while chasing
if (can_attack)
{
    var _shot = instance_create_layer(x, y, "Instances", obj_ink_orb);
    _shot.direction = _dir;
    _shot.speed = projectile_speed;
    _shot.image_angle = _dir;
    _shot.damage = ranged_damage;

    can_attack = false;
    alarm[0] = attack_cooldown;
}