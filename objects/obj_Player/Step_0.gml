
if(keyboard_check(ord("A"))){
	if !place_meeting(x - global.walk_speed, y, obj_wall) and !place_meeting(x - global.walk_speed, y, obj_block) and !place_meeting(x - global.walk_speed, y, obj_column) and (instance_place(x - global.walk_speed, y, obj_wall_trigger) == noone or instance_place(x - global.walk_speed, y, obj_wall_trigger).active) {
		x -=global.walk_speed;
		
		}
		else{
			while(!place_meeting(x-1,y , obj_wall) and !place_meeting(x-1,y , obj_block) and !place_meeting(x-1,y , obj_column) and (instance_place(x-1,y , obj_wall_trigger) == noone or instance_place(x-1,y , obj_wall_trigger).active))
			x-=1;
		}
}
if(keyboard_check(ord("D"))){
	if !place_meeting(x + global.walk_speed, y, obj_wall) and !place_meeting(x + global.walk_speed, y, obj_block) and !place_meeting(x + global.walk_speed, y, obj_column) and (instance_place(x + global.walk_speed, y, obj_wall_trigger) == noone or instance_place(x + global.walk_speed, y, obj_wall_trigger).active) {
		x +=global.walk_speed;
		
		}
		else{
			while(!place_meeting(x+1, y, obj_wall) and !place_meeting(x+1, y, obj_block) and !place_meeting(x+1, y, obj_column) and (instance_place(x+1, y, obj_wall_trigger) == noone or instance_place(x+1, y, obj_wall_trigger).active))
			x+=1;
		}
}
if(keyboard_check(ord("W"))){
		if !place_meeting(x , y-global.walk_speed, obj_wall) and !place_meeting(x , y-global.walk_speed, obj_block)  and !place_meeting(x , y-global.walk_speed, obj_column) and (instance_place(x , y-global.walk_speed, obj_wall_trigger) == noone or instance_place(x , y-global.walk_speed, obj_wall_trigger).active) {
		y -=global.walk_speed;
		
		}
		else{
			while(!place_meeting(x, y-1, obj_wall) and !place_meeting(x, y-1, obj_block) and !place_meeting(x, y-1, obj_column) and (instance_place(x, y-1, obj_wall_trigger) == noone or instance_place(x, y-1, obj_wall_trigger).active))
			y-=1;
		}
}
if(keyboard_check(ord("S"))){
		if !place_meeting(x, y+global.walk_speed, obj_wall) and !place_meeting(x, y+global.walk_speed, obj_block) and !place_meeting(x, y+global.walk_speed, obj_column) and (instance_place(x, y+global.walk_speed, obj_wall_trigger) == noone or instance_place(x, y+global.walk_speed, obj_wall_trigger).active) 
		{
		y +=global.walk_speed;
		
		}
		else{
			while(!place_meeting(x, y+1, obj_wall) and !place_meeting(x, y+1, obj_block) and !place_meeting(x, y+1, obj_column) and (instance_place(x, y+1, obj_wall_trigger) == noone or instance_place(x, y+1, obj_wall_trigger).active))
			y+=1;
		}

}



