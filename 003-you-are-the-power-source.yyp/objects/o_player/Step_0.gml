/// @description Move Player
// You can write your code in this editor

player_speed = (1 / room_speed) * 200

if keyboard_check(vk_left) {
	x -= player_speed
} else if keyboard_check(vk_right) {
	x += player_speed	
} 
if keyboard_check(vk_up) {
	y -= player_speed	
} else if keyboard_check(vk_down) {
	y += player_speed	
}

light_instance = instance_position(x, y, o_light)
if light_instance != noone {
	with light_instance {
		image_alpha += 0.01
		image_alpha = clamp(image_alpha, 0, 1)
	}
}
