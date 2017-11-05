/// @description Insert description here
// You can write your code in this editor

floor_instance = instance_place(x, y, o_floor)
if floor_instance != noone && yprevious <= floor_instance.y {
	vspeed = 0
	y = floor_instance.y
}
