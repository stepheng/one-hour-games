/// @description Insert description here
// You can write your code in this editor

x = o_surface.xpoints[1] / 2
y = o_surface.ypoints[0] - sprite_height
if keyboard_check(vk_right) {
	hpower = min(hpower + 1, 100)
} else if keyboard_check(vk_left) {
	hpower = max(hpower - 1, 0)
}

if keyboard_check(vk_up) {
	vpower = min(vpower + 1, 100)
} else if keyboard_check(vk_down) {
	vpower = max(vpower - 1, 0)
}

