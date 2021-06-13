/// @description Insert description here
// You can write your code in this editor
if (collision_circle(x + 16, y + 16, 16, obj_Player, false, true) or collision_circle(x + 16, y + 16, 16, obj_block, false, true)) {
	active = true;
} else {
	active = false;
}