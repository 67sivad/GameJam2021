/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("R"))) {
	room_restart();
}

if (global.leftChamberId == winConditionLeft && global.rightChamberId = winConditionRight) {
	if(!global.win){
		instance_create_layer(global.rightChamberX - 32, global.leftChamberY + 3 * 32, "Player_Layer", obj_portal);
		global.win=true;
	}
}