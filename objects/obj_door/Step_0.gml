/// @description Insert description here
// You can write your code in this editor
if (global.win) {
	instance_create_layer(x, y, "Player_Layer", obj_wall);
	if (sprite_index == spr_door_vert) {
		instance_create_layer(x, y + 32, "Player_Layer", obj_wall);
	}
	instance_destroy();
}