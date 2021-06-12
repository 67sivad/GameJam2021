/// @description Insert description here
// You can write your code in this editor
wires = ds_list_create();
len = collision_circle_list(x, y, 32, all, false, true, wires, false);


var still_active = false;

for (var i = 0; i < len; i++) {
	var item = ds_list_find_value(wires, i);
	if ((item.object_index == obj_wire or item.object_index == obj_wall_trigger)) {
		if (item.active and item.current < current) {
			still_active = true;
			active = true;
			image_alpha = 0.5;
		}
	}
}

if (!still_active) {
	active = false;
	image_alpha = 1;
} 