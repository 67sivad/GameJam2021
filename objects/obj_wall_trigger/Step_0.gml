/// @description Insert description here
// You can write your code in this editor
wires = ds_list_create();
len = collision_circle_list(x, y, 32, all, false, true, wires, false);

active = false;
image_alpha = 1;
mask_index = spr_wall;

for (var i = 0; i < len; i++) {
	var item = ds_list_find_value(wires, i);
	if ((item.object_index == obj_wire or item.object_index == obj_wall_trigger)) {
		if (item.active and item.current < current) {
			active = true;
			image_alpha = 0.5;
			mask_index = spr_empty;
		}
	}
}