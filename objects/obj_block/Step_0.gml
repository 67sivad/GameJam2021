
close=place_meeting(x-5,y , obj_Player)or place_meeting(x+5,y , obj_Player) or place_meeting(x,y-5 , obj_Player) or place_meeting(x,y+5 , obj_Player)




if(keyboard_check(vk_space) and close){
		global.walk_speed=2;
	if(keyboard_check(ord("A"))){
		if !place_meeting(x - global.walk_speed, y, obj_wall) and !place_meeting(x - global.walk_speed, y, obj_Player){
			x -=global.walk_speed;
		
			}
			else{
				while(!place_meeting(x-1,y , obj_wall) and !place_meeting(x-1,y , obj_Player))
				x-=1;
			}
	}
	if(keyboard_check(ord("D"))){
		if !place_meeting(x + global.walk_speed, y, obj_wall) and !place_meeting(x + global.walk_speed, y, obj_Player){
			x +=global.walk_speed;
		
			}
			else{
				while(!place_meeting(x+1, y, obj_wall) and !place_meeting(x+1, y, obj_Player))
				x+=1;
			}
	}
	if(keyboard_check(ord("W"))){
			if !place_meeting(x , y-global.walk_speed, obj_wall) and !place_meeting(x , y-global.walk_speed, obj_Player){
			y -=global.walk_speed;
		
			}
			else{
				while(!place_meeting(x, y-1, obj_wall) and !place_meeting(x, y-1, obj_Player))
				y-=1;
			}
	}
	if(keyboard_check(ord("S"))){
			if !place_meeting(x, y+global.walk_speed, obj_wall) and !place_meeting(x, y+global.walk_speed, obj_Player) 
			{
			y +=global.walk_speed;
		
			}
			else{
				while(!place_meeting(x, y+1, obj_wall) and !place_meeting(x, y+1, obj_Player))
				y+=1;
			}

	}





}
else{
	
	global.walk_speed=5;
}
