if (controlled)
{
    // movement
    if (keyboard_check(ord("D"))) x += move_speed;
    if (keyboard_check(ord("A"))) x -= move_speed;
    if (keyboard_check(ord("S"))) y += move_speed;
    if (keyboard_check(ord("W"))) y -= move_speed;

    // chain possess
   if (keyboard_check_pressed(ord("Q")))
{
    var target = noone;
    var best_dist = 99999;

    with (obj_possessable)
    {
        if (id != other.id)
        {
            if (object_index != obj_ghost)
            {
                var d = point_distance(other.x, other.y, x, y);

                if (d < 80 && d < best_dist)
                {
                    best_dist = d;
                    target = id;
                }
            }
        }
    }

    if (target != noone)
    {
        switch_target = target;
    }
}

    // unpossess back to ghost
    if (keyboard_check_pressed(ord("E")))
    {
        if (object_index != obj_ghost)
        {
            var g = instance_find(obj_ghost, 0);

            if (g != noone)
            {
                g.x = x;
                g.y = y;
                g.visible = true;
                g.controlled = true;
            }

            controlled = false;
        }
    }
}