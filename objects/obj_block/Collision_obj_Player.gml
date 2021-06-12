/*dir=-point_direction(x,y,other.x,other.y);


//sees while axis to move on by what difference is bigger
if(abs(x-other.x)>abs(y-other.y)){
	//collission
	if !place_meeting(x-5*sign(lengthdir_x(1,dir)), y, obj_wall) 
		{
		x=x-5*sign(lengthdir_x(1,dir));
		
		}
		else{
			while(!place_meeting(x-sign(lengthdir_y(1,dir)), y, obj_wall))
			x=x-sign(lengthdir_y(1,dir));
		}


}else{
	if !place_meeting(x, y+5*sign(lengthdir_y(1,dir)), obj_wall) 
		{
		y=y+5*sign(lengthdir_y(1,dir));
		
		}
		else{
			while(!place_meeting(x, y+sign(lengthdir_y(1,dir)), obj_wall))
			y=y+sign(lengthdir_y(1,dir));
		}


}
*/

