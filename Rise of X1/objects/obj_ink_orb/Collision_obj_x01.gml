obj_x01.hp -= 5;

instance_destroy();

// Player flashes when hit
with(obj_x01) {
    flash = 3;
}