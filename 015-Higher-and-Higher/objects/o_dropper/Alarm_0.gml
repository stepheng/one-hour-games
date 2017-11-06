/// @description Insert description here
// You can write your code in this editor

instance_create_depth(random_range(0, room_width - 64), y, depth, irandom(2) % 2 == 0 ? o_box : o_rectangle)

alarm[0] = random_range(0.5, 2) * room_speed
