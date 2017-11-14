/// @description Insert description here
// You can write your code in this editor

if vspeed < 10 {
	vspeed += gravity_step
}

if x > room_width || x < 0 || y > room_height {
	surface = instance_find(o_surface, 0)
	with surface {
		alarm[0] = room_speed / 2
	}
	instance_destroy()
}