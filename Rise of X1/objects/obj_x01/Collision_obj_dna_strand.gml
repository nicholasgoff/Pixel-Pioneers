// Check what kind of DNA it is
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
// EVOLUTION CHECKS
// ====================

// DART DNA = mobility / dash / burst
if (obj_game_manager.dna_dart >= obj_game_manager.dna_required)
{
    obj_game_manager.dna_dart -= obj_game_manager.dna_required;
    obj_game_manager.dart_stage += 1;

    switch(obj_game_manager.dart_stage)
    {
        case 1:
            obj_game_manager.has_dash = true;
            show_message("EVOLUTION: DASH UNLOCKED");
            break;

        case 2:
            melee_delay = max(5, melee_delay - 3);
            show_message("EVOLUTION: ATTACK SPEED INCREASED");
            break;

        case 3:
            has_burst_ability = true;
            show_message("EVOLUTION: BURST ATTACK UNLOCKED");
            break;
    }
}

// CRAB DNA = tank / health
if (obj_game_manager.dna_crab >= obj_game_manager.dna_required)
{
    obj_game_manager.dna_crab -= obj_game_manager.dna_required;
    obj_game_manager.crab_stage += 1;

    switch(obj_game_manager.crab_stage)
    {
        case 1:
            obj_game_manager.extra_health += 25;
            obj_game_manager.hp_max += 25;
            obj_game_manager.hp_current += 25;
            show_message("EVOLUTION: HARDENED SHELL");
            break;

        case 2:
            obj_game_manager.extra_health += 25;
            obj_game_manager.hp_max += 25;
            obj_game_manager.hp_current += 25;
            show_message("EVOLUTION: MAX HEALTH INCREASED");
            break;

        case 3:
            obj_game_manager.player_lives += 1;
            show_message("EVOLUTION: EXTRA LIFE GAINED");
            break;
    }
}

// WITCH DNA = range / projectile power
if (obj_game_manager.dna_witch >= obj_game_manager.dna_required)
{
    obj_game_manager.dna_witch -= obj_game_manager.dna_required;
    obj_game_manager.witch_stage += 1;

    switch(obj_game_manager.witch_stage)
    {
        case 1:
            obj_game_manager.range_boost += 50;
            show_message("EVOLUTION: RANGE INCREASED");
            break;

        case 2:
            obj_game_manager.range_boost += 50;
            show_message("EVOLUTION: RANGE FURTHER INCREASED");
            break;

        case 3:
            obj_game_manager.projectile_size += 0.25;
            show_message("EVOLUTION: PROJECTILES GROW STRONGER");
            break;
    }
}

// MANTIS DNA = attack speed / melee
if (obj_game_manager.dna_mantis >= obj_game_manager.dna_required)
{
    obj_game_manager.dna_mantis -= obj_game_manager.dna_required;
    obj_game_manager.mantis_stage += 1;

    switch(obj_game_manager.mantis_stage)
    {
        case 1:
            ranged_delay = max(5, ranged_delay - 5);
           obj_game_manager.evolution_text = "EVOLUTION: FASTER RANGED ATTACKS";
		   obj_game_manager.evolution_timer = 120
            break;

        case 2:
            ranged_delay = max(5, ranged_delay - 5);
           obj_game_manager.evolution_text = "EVOLUTION: EVEN FASTER RANGED";
		   obj_game_manager.evolution_timer = 120
            break;

        case 3:
            melee_delay = max(5, melee_delay - 5);
            obj_game_manager.evolution_text = "EVOLUTION: FASTER MELEE";
			obj_game_manager.evolution_timer = 120
            break;
    }
}

// MOTE DNA = vision / awareness
if (obj_game_manager.dna_mote >= obj_game_manager.dna_required)
{
    obj_game_manager.dna_mote -= obj_game_manager.dna_required;
    obj_game_manager.mote_stage += 1;

    switch(obj_game_manager.mote_stage)
    {
        case 1:
            obj_game_manager.vision_radius += 75;
            show_message("EVOLUTION: VISION RADIUS INCREASED");
            break;

        case 2:
            obj_game_manager.vision_radius += 75;
            show_message("EVOLUTION: VISION RADIUS FURTHER INCREASED");
            break;

        case 3:
            obj_game_manager.pickup_radius += 25;
            show_message("EVOLUTION: DNA PICKUP RANGE INCREASED");
            break;
    }
}

// HYDRA DNA = survival / extra life / regeneration
if (obj_game_manager.dna_hydra >= obj_game_manager.dna_required)
{
    obj_game_manager.dna_hydra -= obj_game_manager.dna_required;
    obj_game_manager.hydra_stage += 1;

    switch(obj_game_manager.hydra_stage)
    {
        case 1:
            obj_game_manager.player_lives += 1;
            show_message("EVOLUTION: EXTRA LIFE UNLOCKED");
            break;

        case 2:
            obj_game_manager.hp_current = min(obj_game_manager.hp_current + 50, obj_game_manager.hp_max);
            show_message("EVOLUTION: HEALTH RESTORED");
            break;

        case 3:
            obj_game_manager.regen_rate += 0.1;
            show_message("EVOLUTION: REGENERATION INCREASED");
            break;
    }
}