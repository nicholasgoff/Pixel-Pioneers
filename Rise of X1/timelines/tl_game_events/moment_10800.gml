var _margin = 64
var _x1 = irandom_range(_margin, room_width - _margin)
var _y1 = irandom_range(_margin, room_height - _margin)
instance_create_layer(_x1, _y1, "Instances", obj_eternal_hydra)

var _x2, _y2
do {
	_x2 = irandom_range(_margin, room_width - _margin)
	_y2 = irandom_range(_margin, room_height - _margin)
} until (point_distance(_x1, _y1, _x2, _y2) > 200)
instance_create_layer(_x2, _y2, "Instances", obj_eternal_hydra)