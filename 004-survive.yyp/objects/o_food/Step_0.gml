/// @description Insert description here
// You can write your code in this editor

if y > room_height {
	o_game_controller.toxicity += 1
	o_game_controller.spawn_chance = clamp(o_game_controller.spawn_chance + 1, 500, 990)
	instance_destroy()	
}
