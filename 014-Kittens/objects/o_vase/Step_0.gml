/// @description Insert description here
// You can write your code in this editor

if falling {
	vspeed = clamp(vspeed + 1.5, -10, 10)	
}

floor_instance = instance_place(x, y, o_floor)

if falling && floor_instance != noone {
	if starting_floor == noone {
		starting_floor = floor_instance
	} else if floor_instance != starting_floor {
		instance_destroy()
		score += 100
		
		if instance_exists(o_vase) == false {
			room_goto_next()	
		}
	}
}