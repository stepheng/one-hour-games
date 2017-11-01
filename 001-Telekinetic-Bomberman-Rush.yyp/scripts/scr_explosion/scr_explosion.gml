//x_pos = argument0
//y_pos = argument1
//x_off = argument2
//y_off = argument3
caller = argument0

with caller {
	instance = instance_position(x_pos + x_off, y_pos + y_off, o_wall_asset)
	expl_instance = instance_create_depth(x_pos, y_pos, depth, o_explosion)
	explosion_instances[counter] = expl_instance
	counter += 1
	if instance != noone {
		with instance {
			instance_destroy()
		}
		return false
	}
	return true
}