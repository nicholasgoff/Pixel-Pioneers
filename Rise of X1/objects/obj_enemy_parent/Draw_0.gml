draw_self();

//to show enemy was hit
if (flash > 0) {
    flash -= 1;
    gpu_set_fog(true, c_white, 0, 0); // Turn the enemy white briefly
    draw_self();
    gpu_set_fog(false, c_white, 0, 0);
}