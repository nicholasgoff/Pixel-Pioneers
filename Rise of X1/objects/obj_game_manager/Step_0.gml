if (evolution_timer > 0)
{
    evolution_timer--;
}

// increase vision for mote upgrades
if (room != rm_lose) {
	var cam = view_camera[0];
	camera_set_view_size(cam, camera_width, camera_height);
}