//Abyssal Dart DNA
dart_dna_count += 1;

//3-Strand goal
if (dart_dna_count >= 3) {
	has_burst_ability = true;
	show_debug_message("Abyssal Burst Unlocked!"); //change later
}

//Destrory DNA object
instance_destroy(other);
