instance = instance_position(mouse_x, mouse_y, o_wall_asset)
if instance != noone {
	with instance {
		instance_destroy()	
	}
} else {
	instance_create_depth(floor(mouse_x / 32) * 32, floor(mouse_y / 32) * 32, 0, o_bomb)	
}