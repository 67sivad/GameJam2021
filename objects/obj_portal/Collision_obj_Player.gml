/// @description Insert description here
// You can write your code in this editor
if (ready) {
	
	if (alarm[0] < 0) {alarm[0] = 60;
	}


global.walk_speed = 0;


other.x = x + 42;
other.y = y + 42;
other.image_angle += 2;

} else {
	if other.x < 960 {other.x -= 75;}
	else {other.x += 75;}

}

//show_debug_message(string(alarm_get(0)));