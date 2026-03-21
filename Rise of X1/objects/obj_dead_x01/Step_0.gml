// Movement
x += hspd;
y += vspd;
vspd += gravity;

// Rotation
image_angle += rot_spd;

if (x > room_width + 100 || y > room_height + 100) {
    instance_destroy();
}