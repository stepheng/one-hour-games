/// @description Insert description here
// You can write your code in this editor

if is_active == false {
	phy_speed_y = 0
	phy_speed_x = 0
	return	
}

player_speed = energy > 0 ? 10 : 0

if keyboard_check(ord("W")) {
	phy_speed_y = -player_speed	
	energy--
} else if keyboard_check(ord("S")) {
	phy_speed_y = player_speed	
	energy--
} else {
	phy_speed_y *= 0.8
}
if keyboard_check(ord("A")) {
	phy_speed_x = -player_speed	
	energy--
} else if keyboard_check(ord("D")) {
	phy_speed_x = player_speed	
	energy--
} else {
	phy_speed_x *= 0.8
}
