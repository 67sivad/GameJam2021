/// @description Insert description here
// You can write your code in this editor
//show_debug_message(destination)
with(other) {
	instance_destroy()
}

if (x < 928) {
	save_chamber(global.leftChamberId, -1);
	load_chamber(destination, -1);
} else {
	//show_debug_message("a")
	save_chamber(global.rightChamberId, 1);
	load_chamber(destination, 1);
}
if (orientation == "up") {
	instance_create_layer(x, y + 8*32, "Player_Layer", obj_Player)
} else if (orientation == "down") {
	instance_create_layer(x, y - 8*32, "Player_Layer", obj_Player)
} else if (orientation == "left") {
	instance_create_layer(x + 9*32, y, "Player_Layer", obj_Player)
} else if (orientation == "right") {
	instance_create_layer(x - 9*32, y, "Player_Layer", obj_Player)
}
		