// ====================
// ADD DNA
// ====================
switch(other.type) {
    case "dart":   obj_game_manager.dna_dart += 1; break;
    case "crab":   obj_game_manager.dna_crab += 1; break;
    case "witch":  obj_game_manager.dna_witch += 1; break;
    case "mantis": obj_game_manager.dna_mantis += 1; break;
    case "mote":   obj_game_manager.dna_mote += 1; break;
    case "hydra":  obj_game_manager.dna_hydra += 1; break;
}

instance_destroy(other);

// ====================
// DART DNA
// ====================
var dart_needed = 3 + (obj_game_manager.dart_stage * 2);

if (obj_game_manager.dna_dart >= dart_needed)
{
    obj_game_manager.dna_dart -= dart_needed;
    obj_game_manager.dart_stage += 1;

    switch(obj_game_manager.dart_stage)
    {
        case 1:
            obj_game_manager.has_dash = true;
            obj_game_manager.evolution_text = "EVOLUTION: DASH UNLOCKED";
            break;

        case 2:
            obj_game_manager.dash_distance += 100;
            obj_game_manager.evolution_text = "EVOLUTION: DASH DISTANCE INCREASED";
            break;

        case 3:
            obj_game_manager.has_burst_ability = true;
            obj_game_manager.evolution_text = "EVOLUTION: BURST ATTACK UNLOCKED (E)";
            break;
    }
    obj_game_manager.evolution_timer = 120;
}

// ====================
// CRAB DNA
// ====================
var crab_needed = 3 + (obj_game_manager.crab_stage * 2);

if (obj_game_manager.dna_crab >= crab_needed)
{
    obj_game_manager.dna_crab -= crab_needed;
    obj_game_manager.crab_stage += 1;

    switch(obj_game_manager.crab_stage)
    {
        case 1:
            max_hp += 25;
            hp += 25;
            obj_game_manager.evolution_text = "EVOLUTION: MAX HP INCREASED";
            break;

        case 2:
            max_hp += 25;
            hp += 25;
            obj_game_manager.has_hardened_shell = true;
        obj_game_manager.evolution_text = "EVOLUTION: HARDENED SHELL";
            break;

        case 3:
            extra_life += 1;
            obj_game_manager.evolution_text = "EVOLUTION: EXTRA LIFE";
            break;
    }
    obj_game_manager.evolution_timer = 120;
}

// ====================
// WITCH DNA
// ====================
var witch_needed = 3 + (obj_game_manager.witch_stage * 2);

if (obj_game_manager.dna_witch >= witch_needed)
{
    obj_game_manager.dna_witch -= witch_needed;
    obj_game_manager.witch_stage += 1;

    switch(obj_game_manager.witch_stage)
    {
        case 1:
            obj_game_manager.range_boost += 150;
            obj_game_manager.evolution_text = "EVOLUTION: RANGE INCREASED";
            break;

        case 2:
			obj_game_manager.range_boost += 200;
            obj_game_manager.evolution_text = "EVOLUTION: RANGE FURTHER INCREASED";
            break;

        case 3:
            obj_game_manager.projectile_damage += 2;
            obj_game_manager.evolution_text = "EVOLUTION: STRONGER PROJECTILES";
            break;
    }
    obj_game_manager.evolution_timer = 120;
}

// ====================
// MANTIS DNA
// ====================
var mantis_needed = 3 + (obj_game_manager.mantis_stage * 2);

if (obj_game_manager.dna_mantis >= mantis_needed)
{
    obj_game_manager.dna_mantis -= mantis_needed;
    obj_game_manager.mantis_stage += 1;

    switch(obj_game_manager.mantis_stage)
    {
        case 1:
            ranged_delay = max(5, ranged_delay - 5);
            obj_game_manager.evolution_text = "EVOLUTION: FASTER RANGED";
            break;

        case 2:
            ranged_delay = max(5, ranged_delay - 5);
            obj_game_manager.evolution_text = "EVOLUTION: EVEN FASTER RANGED";
            break;

        case 3:
            melee_delay = max(5, melee_delay - 5);
            obj_game_manager.evolution_text = "EVOLUTION: FASTER MELEE";
            break;
    }
    obj_game_manager.evolution_timer = 120;
}

// ====================
// MOTE DNA
// ====================
var mote_needed = 3 + (obj_game_manager.mote_stage * 2);

if (obj_game_manager.dna_mote >= mote_needed)
{
    obj_game_manager.dna_mote -= mote_needed;
    obj_game_manager.mote_stage += 1;

    switch(obj_game_manager.mote_stage)
    {
        case 1:
            obj_game_manager.camera_width += 150;
			obj_game_manager.camera_height += 80;
            obj_game_manager.evolution_text = "EVOLUTION: BETTER VISION";
            break;

        case 2:
            obj_game_manager.pickup_radius += 100;
            obj_game_manager.evolution_text = "EVOLUTION: BETTER DNA PICKUP";
            break;

        case 3:
            obj_game_manager.camera_width += 150;
			obj_game_manager.camera_height += 80;;
            obj_game_manager.evolution_text = "EVOLUTION: EVEN BETTER VISION";
            break;
    }
    obj_game_manager.evolution_timer = 120;
}

// ====================
// HYDRA DNA
// ====================
var hydra_needed = 3 + (obj_game_manager.hydra_stage * 2);

if (obj_game_manager.dna_hydra >= hydra_needed)
{
    obj_game_manager.dna_hydra -= hydra_needed;
    obj_game_manager.hydra_stage += 1;

    switch(obj_game_manager.hydra_stage)
    {
        case 1:
            obj_game_manager.regen_rate += 0.05;
            obj_game_manager.evolution_text = "EVOLUTION: REGEN UNLOCKED";
            break;

        case 2:
            obj_game_manager.regen_rate += 0.05;
            obj_game_manager.evolution_text = "EVOLUTION: STRONGER REGEN";
            break;

        case 3:
            extra_life += 1;
            obj_game_manager.evolution_text = "EVOLUTION: HYDRA RESURGENCE";
            break;
    }
    obj_game_manager.evolution_timer = 120;
}