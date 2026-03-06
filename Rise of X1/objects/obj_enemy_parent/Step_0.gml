// ONLY handle death in the parent
if (hp <= 0) {
    var _dna = instance_create_layer(x, y, "Instances", obj_dna_strand);
    
    // Check which child this is to set DNA type
    if (object_index == obj_abyssal_dart) _dna.type = "dart";
    if (object_index == obj_ink_witch) _dna.type = "witch";
    
    instance_destroy();
}