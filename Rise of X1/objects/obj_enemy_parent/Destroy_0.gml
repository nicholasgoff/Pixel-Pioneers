// If HP hits zero, drop DNA and vanish
if (hp <= 0) {
    var _dna = instance_create_layer(x, y, "Instances", obj_dna_strand);
    _dna.type = dna_type;
    // Assign DNA type based on which child this is
    if (object_index == obj_abyssal_dart) _dna.type = "dart";
    if (object_index == obj_trench_cracker) _dna.type = "crab";
    if (object_index == obj_ink_witch) _dna.type = "witch";
    
    instance_destroy();
}