var _impact_dir = point_direction(x, y, other.x, other.y);
var _angle_diff = abs(angle_difference(image_angle, _impact_dir));

// If the bullet hits within 60 degrees of his front
if (_angle_diff < 60) {
    hp -= 1; // Chip damage
    //audio_play_sound(snd_clink, 1, false); // Add a metallic sound
} else {
    hp -= 4; // Massive damage from the back/sides!
}

instance_destroy(other);
flash = 3;