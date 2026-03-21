// Drop DNA on death
var _dna = instance_create_layer(x, y, "Instances", obj_dna_strand);
    
// Assign DNA type based on which child this is
_dna.type = dna_type