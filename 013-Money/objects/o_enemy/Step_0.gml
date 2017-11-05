/// @description Insert description here
// You can write your code in this editor

floor_instance = instance_nearest(x, y, o_floor)

if floor_instance == noone {
	instance_destroy()
	return
}
y = floor_instance.y

if move_right {
	hspeed = 3
} else {
	hspeed = -3
}

if hspeed < 0 {
	image_xscale = -1	
} else {
	image_xscale = 1	
}
