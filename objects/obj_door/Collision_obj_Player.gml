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
	var doorx = x;
	var doory = y;
	with (other) {
		x = doorx;
		y = doory + (8 * 32);
	}
} else if (orientation == "down") {
	var doorx = x;
	var doory = y;
	with (other) {
		x = doorx;
		y = doory - (8 * 32);
	}
} else if (orientation == "left") {
	var doorx = x;
	var doory = y;
	with(other) {
		x = doorx + (8 * 32);
		y = doory;
	}
} else if (orientation == "right") {
	var doorx = x;
	var doory = y;
	with (other) {
		x = doorx - (8 * 32);
		y = doory;
	}
}
		