/// @description Insert description here
// You can write your code in this editor

timer += (1 / room_speed) * speed_multiplier

if timer >= 256 {
	new_scale = irandom_range(1, 9)
	floor_obstacle = instance_create_depth(room_width, room_height - 32, depth, o_obstacle)	
	floor_obstacle.image_yscale = new_scale

	new_scale = 9 - new_scale
	roof_obstacle = instance_create_depth(room_width, 0, depth, o_obstacle)
	roof_obstacle.image_yscale = -new_scale
	
	sensor = instance_create_depth(room_width + 32, 0, depth - 1, o_score)
	
	timer -= 256
}
