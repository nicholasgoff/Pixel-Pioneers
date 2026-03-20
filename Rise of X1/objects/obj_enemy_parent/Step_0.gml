// Death logic
if (hp <= 0) {
    instance_destroy();
}

// Flash logic
if (flash > 0) flash -= 1;