// Add to the counter in your manager
if (type == "dart") obj_game_manager.dna_dart += 1;
if (type == "crab") obj_game_manager.dna_crab += 1;
if (type == "witch") obj_game_manager.dna_witch += 1;

// Flash the screen (feedback for player)
var _flash = instance_create_layer(0, 0, "Instances", obj_screen_flash);
_flash.image_blend = c_aqua; // Aqua/Blue flash

instance_destroy(); // disappear after being absorbed