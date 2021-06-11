
if(keyboard_check_pressed(ord("A"))){
	if !place_meeting(x - 32, y, obj_wall) x -=32;
}
if(keyboard_check_pressed(ord("D"))){
	if !place_meeting(x + 32, y, obj_wall) x +=32;
}
if(keyboard_check_pressed(ord("W"))){
		if !place_meeting(x , y-32, obj_wall) y -=32;

}
if(keyboard_check_pressed(ord("S"))){
		if !place_meeting(x, y+32, obj_wall) y +=32;

}




move_wrap(true,true,sprite_width/2);



move_wrap(true,true,sprite_width/2)