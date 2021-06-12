switch(room){


	case menu:
		draw_set_halign(fa_center);
		var c = c_yellow
		draw_text_transformed_color(
			room_width/2,100,"DOUBLE DUNGEON",3,3,0,c,c,c,c,1
		);
		draw_text(
		room_width/2,200,
@"Get out to win!

WASD: move

>> PRESS ENTER TO START <<
"
		
		);
		draw_set_halign(fa_left);
	break
	
	case LevelOne:
	draw_set_halign(fa_center);
		var c = c_black
		draw_text_transformed_color(
			room_width/2,100,"Level One",3,3,0,c,c,c,c,1
		);

		draw_set_halign(fa_left);
	break
	case LevelTwo:
	draw_set_halign(fa_center);
		var c = c_black
		draw_text_transformed_color(
			room_width/2,100,"Level Two",3,3,0,c,c,c,c,1
		);

		draw_set_halign(fa_left);
	break
	case LevelThree:
	draw_set_halign(fa_center);
		var c = c_black
		draw_text_transformed_color(
			room_width/2,100,"Level Three",3,3,0,c,c,c,c,1
		);

		draw_set_halign(fa_left);
	break
	case LevelFour:
	draw_set_halign(fa_center);
		var c = c_black
		draw_text_transformed_color(
			room_width/2,100,"Level Four",3,3,0,c,c,c,c,1
		);

		draw_set_halign(fa_left);
	break

	
}