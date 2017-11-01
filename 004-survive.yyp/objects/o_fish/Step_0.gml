/// @description Insert description here
// You can write your code in this editor

if keyboard_check(vk_right) {
	physics_apply_impulse(x, y, 2, 0)
	image_xscale = 1
} else if keyboard_check(vk_left) {
	physics_apply_impulse(x, y, -2, 0)
	image_xscale = -1
}

if keyboard_check(vk_up) {
	physics_apply_impulse(x, y, 0, -2)	
} else if keyboard_check(vk_down) {
	physics_apply_impulse(x, y, 0, 2)		
}

health_tick = (10 / room_speed) * (o_game_controller.toxicity / 100)
health -= health_tick

if health <= 0 || o_game_controller.toxicity >= 100 {
	room_restart()	
}
