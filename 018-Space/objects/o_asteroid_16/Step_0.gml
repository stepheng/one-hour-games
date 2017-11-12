/// @description Insert description here
// You can write your code in this editor

width = sprite_width / 2
height = sprite_height / 2
if phy_position_x >= room_width + width {
	phy_position_x -= room_width + (width * 2)
} else if phy_position_x < -width {
	phy_position_x += room_width + (width * 2)
}

if phy_position_y >= room_height + height {
	phy_position_y -= room_height + (height * 2)
} else if phy_position_y < -height {
	phy_position_y += room_height + (height	* 2)
}
