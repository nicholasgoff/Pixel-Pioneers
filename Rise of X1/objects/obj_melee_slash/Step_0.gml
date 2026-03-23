lifetime--;

if (instance_exists(obj_x01)) {
    x = obj_x01.x;
    y = obj_x01.y;
	image_angle = obj_x01.image_angle
	
	if (lifetime <= 0) {
		instance_destroy();
	}
} else {
    instance_destroy(); // Destroy slash if player is dead
}