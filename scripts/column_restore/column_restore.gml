// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function column_restore(id, side){
	show_debug_message("Restoring Column")
	if (side < 0) {
		var door = instance_position(9*32, id*10*32 + 4*32, obj_door);
		if (door != noone) {
			with (door) {
				instance_destroy();
			}
			instance_create_layer(9*32, id*10*32 + 4*32, "Instances", obj_column);
			instance_create_layer(9*32, id*10*32 + 5*32, "Instances", obj_column);
		}
	} else {
		var door = instance_position(1*32, id*10*32 + 4*32, obj_door);
		if (door != noone) {
			with (door) {
				instance_destroy();
			}
			instance_create_layer(1*32, id*10*32 + 4*32, "Instances", obj_column);
			instance_create_layer(1*32, id*10*32 + 5*32, "Instances", obj_column);
		}
	}
}