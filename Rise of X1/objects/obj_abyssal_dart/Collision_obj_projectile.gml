if (state == "resting") {
    hp -= 2; // Extra damage!
	audio_play_sound(snd_dmg_enemy, 10, false);
} else {
    hp -= 1;
	audio_play_sound(snd_dmg_enemy, 10, false);
}
flash = 3;
instance_destroy(other);