/// @description Insert description here
// You can write your code in this editor

asteroid1 = instance_create_depth(x, y, depth, o_asteroid_64)
asteroid2 = instance_create_depth(x, y, depth, o_asteroid_64)

asteroid1.phy_speed_x = phy_speed_x * 1.25
asteroid1.phy_speed_y = phy_speed_y + (other.phy_speed_y / 4)
asteroid2.phy_speed_x = phy_speed_x * 1.25
asteroid2.phy_speed_x = phy_speed_y - (other.phy_speed_y / 4)

with other {
	instance_destroy()	
}

instance_destroy()