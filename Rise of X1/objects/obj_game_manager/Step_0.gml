if (evolution_timer > 0)
{
    evolution_timer--;
}

// Check for death
if (obj_x01.hp <= 0) {
    player_lives -= 1;
}
// increase vision for mote upgrades
var cam = view_camera[0];
camera_set_view_size(cam, camera_width, camera_height);