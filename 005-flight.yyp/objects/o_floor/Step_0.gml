/// @description Insert description here
// You can write your code in this editor

phy_position_x -= (1 / room_speed) * o_controller.speed_multiplier

if phy_position_x <= -sprite_width {
	phy_position_x += room_width + sprite_width
}
