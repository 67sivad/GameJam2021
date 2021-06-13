// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function column_check(side, copy){
	if (side < 0) {
		if (instance_position(global.leftChamberX + 8*32, global.leftChamberY + 3*32, obj_column) != noone) {
			if (copy) {
				var door = instance_position(global.leftChamberX, global.leftChamberY + 4*32, obj_door)
			} else {
				var door = instance_position(0, global.rightChamberId*10*32 + 4*32, obj_door);
			}
			if (door == noone) {
				with (instance_position(global.leftChamberX + 9*32, global.leftChamberY + 4*32, all)) {
					instance_destroy()
				}
				with (instance_position(global.leftChamberX + 9*32, global.leftChamberY + 5*32, all)) {
					instance_destroy()
				}
				instance_create_layer(global.leftChamberX + 9*32, global.leftChamberY + 4*32, "Instances", obj_column);
				instance_create_layer(global.leftChamberX + 9*32, global.leftChamberY + 5*32, "Instances", obj_column);
			} else {
				with (instance_position(global.leftChamberX + 9*32, global.leftChamberY + 4*32, all)) {
					instance_destroy()
				}
				with (instance_position(global.leftChamberX + 9*32, global.leftChamberY + 5*32, all)) {
					instance_destroy()
				}
				var o = instance_create_layer(global.leftChamberX + 9*32, global.leftChamberY + 4*32, "Instances", obj_door);
				o.destination = door.destination;
				o.orientation = door.orientation;
				o.sprite_index = door.sprite_index;
			}
		}
	} else {
		if (instance_position(global.rightChamberX + 1*32, global.rightChamberY + 3*32, obj_column) != noone) {
			if (copy) {
				var door = instance_position(global.rightChamberX + 10*32, global.rightChamberY + 4*32, obj_door)
			} else {
				var door = instance_position(10*32, global.leftChamberId*10*32 + 4*32, obj_door);
			}
			if (door == noone) {
				with (instance_position(global.rightChamberX + 1*32, global.rightChamberY + 4*32, all)) {
					instance_destroy()
				}
				with (instance_position(global.rightChamberX + 1*32, global.rightChamberY + 5*32, all)) {
					instance_destroy()
				}
				instance_create_layer(global.rightChamberX + 1*32, global.rightChamberY + 4*32, "Instances", obj_column);
				instance_create_layer(global.rightChamberX + 1*32, global.rightChamberY + 5*32, "Instances", obj_column);
			} else {
				with (instance_position(global.rightChamberX + 1*32, global.rightChamberY + 4*32, all)) {
					instance_destroy()
				}
				with (instance_position(global.rightChamberX + 1*32, global.rightChamberY + 5*32, all)) {
					instance_destroy()
				}
				var o = instance_create_layer(global.rightChamberX + 1*32, global.rightChamberY + 4*32, "Instances", obj_door);
				o.destination = door.destination;
				o.orientation = door.orientation;
				o.sprite_index = door.sprite_index;
			}
		}
	}
}