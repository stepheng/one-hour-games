/// @description Insert description here
// You can write your code in this editor

if random_range(0, 1000) >= spawn_chance {
	spawn_x = random_range(32, room_width - 64)
	spawn_y = random_range(-32, -256)
	instance_create_depth(spawn_x, spawn_y, depth, o_food)
}
