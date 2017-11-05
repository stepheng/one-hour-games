/// @description Insert description here
// You can write your code in this editor

if floor_instance == noone {
	instance_destroy()
	return
}

if move_right && x >= floor_instance.x + floor_instance.sprite_width {
	move_right = false	
} else if move_right == false && x <= floor_instance.x {
	move_right = true	
}
