/// @description Insert description here
// You can write your code in this editor

phy_speed_x = -(o_controller.minute + 1)

if phy_position_x <= -sprite_width {
	phy_position_x += room_width + sprite_width
}