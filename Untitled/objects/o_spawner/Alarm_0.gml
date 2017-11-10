/// @description Insert description here
// You can write your code in this editor

x_spawn = room_width - 32
y_spawn = irandom_range(32, room_height - 32)

instance_create_depth(x_spawn, y_spawn, depth, o_robot)

alarm[0] = random_range(1, 2) * room_speed
