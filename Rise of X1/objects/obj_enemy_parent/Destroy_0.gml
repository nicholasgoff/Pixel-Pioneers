// When any enemy dies, drop a DNA strand
var _dna = instance_create_layer(x, y, "Instances", obj_dna_strand);

// Tell the DNA what type it is based on the enemy name
if (object_index == obj_abyssal_dart) _dna.type = "dart";
if (object_index == obj_trench_cracker) _dna.type = "crab";
// ... add others