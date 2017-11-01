/// @description Insert description here
// You can write your code in this editor

health = 100
o_game_controller.spawn_chance = clamp(o_game_controller.spawn_chance - 1, 500, 990)

with other {
	instance_destroy()
}
