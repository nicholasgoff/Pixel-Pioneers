if (evolution_timer > 0)
{
    evolution_timer--;
}

// increase vision for mote upgrades
if (room != rm_lose) {
	var cam = view_camera[0];
	camera_set_view_size(cam, camera_width, camera_height);
}

	//Move room cheat codes
if (keyboard_check(vk_control) && keyboard_check_pressed(ord("7"))){
    room_goto(rm_start)
	}
	
	if (keyboard_check(vk_control) && keyboard_check_pressed(ord("8"))){
    room_goto(rm_main)
	}
	
	if (keyboard_check(vk_control) && keyboard_check_pressed(ord("9"))){
    room_goto(rm_win)
	}
	
	if (keyboard_check(vk_control) && keyboard_check_pressed(ord("0"))){
    room_goto(rm_lose)
	}