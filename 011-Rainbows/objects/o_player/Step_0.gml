/// @description Insert description here
// You can write your code in this editor

if keyboard_check(ord("A")) {
	facing_right = false
	phy_speed_x = -10
} else if keyboard_check(ord("D")) {
	phy_speed_x = 10
	facing_right = true
} else {
	phy_speed_x = 0	
}

if keyboard_check(vk_space) {
	instance_create_depth(x + (facing_right ? 32 : -(32 + 192)), y, depth, o_rainbow)
}

colliding_rainbow = collision_line(x, y-16, x, y, o_rainbow, true, true)
if colliding_rainbow != noone {
	other_x = colliding_rainbow.x
	other_y = colliding_rainbow.y
	next_x = phy_position_x + phy_speed_x

	radius = 192 / 2
	cx = other_x + radius
	angle = -darccos(clamp((next_x - cx) / radius, -1, 1))

	next_y = other_y + radius * dsin(angle)

	phy_position_y = next_y
	phy_speed_y = 0
}
