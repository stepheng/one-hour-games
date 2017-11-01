/// @description Insert description here
// You can write your code in this editor

if moving == false {
	return	
}

animation_counter += animation_speed
x = lerp(start_x, lerp_to_x, animation_counter)
y = lerp(start_y, lerp_to_y, animation_counter)

if animation_counter >= 1 {
	moving = false
	x = lerp_to_x
	y = lerp_to_y
}
