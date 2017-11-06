/// @description Insert description here
// You can write your code in this editor

//phy_speed_y = clamp(phy_speed_y + 1.5, -10, 10)

obj = collision_line(phy_position_x, phy_position_y, phy_position_x, phy_position_y + 1, par_solid, true, true)
//if obj != noone {
//	phy_speed_y = 0	
//}

jump_timer -= 1
if keyboard_check(vk_space) && obj != noone && jump_timer <= 0 {
	physics_apply_force(phy_position_x, phy_position_y, 0, -1000)
	jump_timer = 5
}
if keyboard_check(ord("A")) {
	phy_speed_x = -10	
} else if keyboard_check(ord("D")) {
	phy_speed_x = 10	
} else {
	phy_speed_x = 0	
}

if phy_position_y < 0 {
	room_goto_next()	
}