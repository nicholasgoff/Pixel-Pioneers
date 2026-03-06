hp -= 1;
flash = 3;             // Flash white for 3 frames
instance_destroy(other); // Destroy the bullet

if (hp <= 0) instance_destroy(); // This triggers the DNA drop we'll add later