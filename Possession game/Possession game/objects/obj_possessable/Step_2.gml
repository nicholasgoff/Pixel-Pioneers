if (controlled && switch_target != noone)
{
    with (obj_possessable)
    {
        controlled = false;
    }

    if (object_index == obj_ghost)
    {
        visible = false;
    }

    switch_target.controlled = true;
    switch_target = noone;
}