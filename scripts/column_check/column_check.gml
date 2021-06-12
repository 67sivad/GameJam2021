// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function column_check(side){
	if (side < 0) {
		door = instance_position(0, 4*32 + global.rightChamberId*10*32, obj_door);
		if (door != noone) {
			with (instance_position(8*32+global.leftChamberX, 4*32+global.leftChamberY, obj_column)) {
				instance_destroy()
			}
			with (instance_position(8*32+global.leftChamberX, 5*32+global.leftChamberY, obj_column)) {
				instance_destroy()
			}
			var o = instance_create_layer(8*32+global.leftChamberX, 4*32+global.leftChamberY, "Instances", obj_door);
			o.destination = door.destination;
			o.orientation = door.orientation;
			o.sprite_index = door.sprite_index;
		}
	} else {
		door = instance_position(0, 4*32 + global.leftChamberId*10*32, obj_door);
		if (door != noone) {
			with (instance_position(8*32+global.rightChamberX, 4*32+global.rightChamberY, obj_column)) {
				instance_destroy()
			}
			with (instance_position(8*32+global.rightChamberX, 5*32+global.rightChamberY, obj_column)) {
				instance_destroy()
			}
			var o = instance_create_layer(8*32+global.rightChamberX, 4*32+global.rightChamberY, "Instances", obj_door);
			o.destination = door.destination;
			o.orientation = door.orientation;
			o.sprite_index = door.sprite_index;
		}
	}
}