hp -= other.damage;
audio_play_sound(snd_dmg_enemy, 10, false);
flash = 3;             // Flash white for 3 frames
instance_destroy(other); // Destroy the bullet