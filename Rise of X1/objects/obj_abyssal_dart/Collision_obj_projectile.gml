if (state == "resting") {
    hp -= 2; // Extra damage!
} else {
    hp -= 1;
}
flash = 3;
instance_destroy(other);