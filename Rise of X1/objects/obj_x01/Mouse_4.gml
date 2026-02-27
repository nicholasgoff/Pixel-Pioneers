
//Create projectile at X-01s position
var _bullet = instance_create_layer(x, y, "Instances", obj_projectile);

//Projectile goes same way X-01 is facing
_bullet.direction = image_angle;
_bullet.speed = 10;
_bullet.image_angle = image_angle;