/// @description Insert description here
// You can write your code in this editor

if keyboard_check(vk_space) && permit <= 0 {
	physics_apply_impulse(phy_position_x, phy_position_y, 0, -500)	
	permit = 5
}

permit--