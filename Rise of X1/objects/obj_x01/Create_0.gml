//Movement Physics
h_speed = 0;
v_speed = 0;
move_speed = 4; // Base speed
accel = 0.5;    // How fast we speed up
friction_amount = 0.2; // How fast we slow down

// DNA Upgrade Tracker 

//Abyssal Dart
dart_dna_count = 0;
has_burst_ability = false;

//Trench Cracker
cracker_dna_count = 0;
has_hardened_shell = false;

//Add other enemies

//----------

//Stats
// --- Add these to your existing Create Event ---
hp = 100;
max_hp = 100;
extra_life = 0
can_attack = true;     // Timer for ranged
can_melee = true;      // Timer for melee
ranged_delay = 20;     // Frames between shots
melee_delay = 30;      // Frames between swings
