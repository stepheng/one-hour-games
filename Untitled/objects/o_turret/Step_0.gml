/// @description Insert description here
// You can write your code in this editor

nearest = instance_nearest(x, y, o_robot)

if nearest == noone {
	return	
}

if distance_to_object(nearest) < 100 {
	image_angle = point_direction(x, y, nearest.x, nearest.y)
	if firing == false {
		firing = true
		alarm[0] = 1
	}
} else {
	nearest = noone	
}

if mouse_check_button(mb_left) && instance_position(mouse_x, mouse_y, o_turret) == id {
	if ammo_count < 100 {
		ammo_count += 1
	}
}