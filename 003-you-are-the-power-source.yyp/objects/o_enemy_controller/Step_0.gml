/// @description Insert description here
// You can write your code in this editor

if irandom_range(0, 100) < 0 {
	return
}

angle = irandom_range(0, 360)
enemy_x = x + (room_width * dcos(angle))
enemy_y = y + (room_width * dsin(angle))

instance_create_depth(enemy_x, enemy_y, depth, o_enemy)
