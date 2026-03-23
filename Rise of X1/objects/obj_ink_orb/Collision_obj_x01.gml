// If god mode is on negate damage
if (obj_x01.god_mode_is_active) exit 

obj_x01.hp -= damage;
audio_play_sound(snd_dmg_player, 10, false);

instance_destroy();

// Player flashes when hit
with(obj_x01) {
    flash = 3;
}