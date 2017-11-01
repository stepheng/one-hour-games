/// @description Insert description here
// You can write your code in this editor

if moving {
	return	
}

target_x = round(x / 64)
target_y = round(y / 64)
if keyboard_check(vk_left) {
	target_x -= 1
} else if keyboard_check(vk_right) {
	target_x += 1
} else if keyboard_check(vk_up) {
	target_y -= 1
} else if keyboard_check(vk_down) {
	target_y += 1
}

start_x = x
start_y = y
global.tiles[target_x, target_y] = 0

surface_index = floor(target_y / 12)
surface_count = instance_number(o_surface)
//for (i = 0; i < surface_count; i += 1) {
   surface = instance_find(o_surface, surface_index)
   surface.needs_refresh = true
//}

lerp_to_x = target_x * 64
lerp_to_y = target_y * 64
animation_counter = 0 
moving = true
