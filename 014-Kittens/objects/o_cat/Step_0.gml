/// @description Insert description here
// You can write your code in this editor

if keyboard_check(ord("A")) {
	hspeed = -10	
	image_xscale = 1
} else if keyboard_check(ord("D")) {
	hspeed = 10	
	image_xscale = -1
} else {
	hspeed = 0	
}

floor_below = collision_line(x, y, x, y+1, o_floor, false, true)
if keyboard_check(vk_space) && vspeed == 0 && floor_below != noone {
	vspeed = -30	
	space_held = true
}
if keyboard_check(vk_space) == false {
	space_held = false	
}

floor_instance = instance_place(x, y, o_floor)
if floor_instance != noone {
	if vspeed >= 0 {
		y = floor_instance.y
		vspeed = 0
	}
} else {
	if space_held == true {
		vspeed = clamp(vspeed + 0.5, -10, 10)	
	} else {
		vspeed = clamp(vspeed + 1.5, -10, 10)		
	}
}
