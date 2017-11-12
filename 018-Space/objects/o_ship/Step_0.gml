/// @description Insert description here
// You can write your code in this editor

if keyboard_check(vk_up) {
	physics_apply_local_force(0, 0, 50, 0)
}
if keyboard_check(vk_left) {
	physics_apply_angular_impulse(-1)
} else if keyboard_check(vk_right) {
	physics_apply_angular_impulse(1)
}

if keyboard_check_pressed(vk_space) {
	bullet = instance_create_depth(x, y, depth, o_bullet)
	with bullet {
		phy_rotation = o_ship.phy_rotation
		physics_apply_local_force(0, 0, 250, 0)
	}
}

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
