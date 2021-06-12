/// @description Insert description here
// You can write your code in this editor
wires = ds_list_create();
len = collision_circle_list(x, y, 32, all, false, true, wires, false);

active = false;
sprite_index = spr_wire_unlit;

for (var i = 0; i < len; i++) {
	var item = ds_list_find_value(wires, i);
	if ((item.object_index == obj_button or item.object_index == obj_wire)) {
		if (item.active and item.current < current) {
			active = true;
			sprite_index = spr_wire_lit;
		}
	}
}

ds_list_destroy(wires);