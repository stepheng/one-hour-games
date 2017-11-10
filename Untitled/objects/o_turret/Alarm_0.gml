/// @description Insert description here
// You can write your code in this editor

nearest = instance_nearest(x, y, o_robot)

if nearest == noone {
	firing = false
	return	
}

if distance_to_object(nearest) < 100 {
	if ammo_count > 0 {
		nearest.robot_health -= 2	
		ammo_count -= 1
	}	
	alarm[0] = 5	
}
