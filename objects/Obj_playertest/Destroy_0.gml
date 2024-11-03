/// @description 
o_stats.lives_ -= 1; 


if o_stats.lives_ > 0 {
	instance_create_layer (16, room_height/2, "Instances", Obj_playertest);
}

