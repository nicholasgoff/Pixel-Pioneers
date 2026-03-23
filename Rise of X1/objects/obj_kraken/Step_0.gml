event_inherited();

// Only act if player exists
if (!instance_exists(obj_x01)) exit;

// Face player
var _dir = point_direction(x, y, obj_x01.x, obj_x01.y);

if (_dir > 90 && _dir < 270)
{
    image_xscale = -1;
    image_angle = _dir - 180;
}
else
{
    image_xscale = 1;
    image_angle = _dir;
}

move_towards_point(obj_x01.x, obj_x01.y, move_speed);

// Fire ranged attack while chasing
if (can_attack)
{
   for (var i = -2; i <= 2; i++)
{
    var _shot = instance_create_layer(x, y, "Instances", obj_ink_orb);

    var shot_dir = _dir + (i * 10); // spread angle
    _shot.direction = shot_dir;
    _shot.speed = projectile_speed;
    _shot.image_angle = shot_dir;
    _shot.damage = ranged_damage;
}

    can_attack = false;
    alarm[0] = attack_cooldown;
}