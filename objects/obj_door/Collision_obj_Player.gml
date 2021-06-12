/// @description Insert description here
// You can write your code in this editor
//show_debug_message(destination)
if (x < 928) {
	save_chamber(global.leftChamberId, -1);
	load_chamber(destination, -1);
} else {
	//show_debug_message("a")
	save_chamber(global.rightChamberId, 1);
	load_chamber(destination, 1);
}
if (orientation == "up") {
	var doory = y;
	with (other) {
		y = doory + (8 * 32);
	}
} else {
	//show_debug_message(orientation);
	with (other) {
		instance_destroy();
	}
}