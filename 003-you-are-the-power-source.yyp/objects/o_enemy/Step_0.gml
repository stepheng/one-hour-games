/// @description Insert description here
// You can write your code in this editor

x = lerp(start_x, target_x, animation_counter)
y = lerp(start_y, target_y, animation_counter)
animation_counter += animation_speed

light_instance = instance_position(x, y, o_light)
if light_instance != noone {
	if light_instance.image_alpha > 0 {
		instance_destroy()	
	}
	with light_instance {
		image_alpha -= 0.01
		image_alpha = clamp(image_alpha, 0, 1)
	}
}

if animation_counter >= 1 {
	instance_destroy()	
	room_restart()
}