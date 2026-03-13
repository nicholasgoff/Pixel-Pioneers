// 1. CHECK FOR DEATH
if (hp <= 0) {
    // Create the DNA and store its ID in a temporary variable
    var _new_dna = instance_create_layer(x, y, "Instances", obj_dna_strand);
    
    // 2. ASSIGN TYPE
    // We use the ID we just stored (_new_dna) to reach inside the DNA object
    if (object_index == obj_ink_witch) {
        _new_dna.type = "witch";
    } 
    else if (object_index == obj_abyssal_dart) {
        _new_dna.type = "dart";
    }
    else if (object_index == obj_trench_cracker) {
        _new_dna.type = "crab";
    }
    
    // 3. DESTROY ENEMY
    instance_destroy();
}

// 4. FLASH LOGIC 
if (flash > 0) flash -= 1;