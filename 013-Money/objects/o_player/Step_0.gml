/// @description Insert description here
// You can write your code in this editor

if keyboard_check(ord("A")) {
	hspeed = -10	
} else if keyboard_check(ord("D")) {
	hspeed = 10	
} else {
	hspeed = 0
}

floor_instance = instance_place(x, y, o_floor)
if keyboard_check(vk_space) {
	if floor_instance != noone && round(vspeed) == 0 {
		vspeed = -15
	} else {
		vspeed = max(vspeed + 0.1, -10) 	
	}
} else {	
	if floor_instance == noone {
		vspeed = max(vspeed + 1, -10)
	}
}