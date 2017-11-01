if image_index == 9 {
	x_pos = round(x / 32) * 32
	y_pos = round(y / 32) * 32
	instance_create_depth(x_pos, y_pos, depth, o_explosion_controller)
	instance_destroy()
	return
}

if moving == true {
	x = lerp(current_x, lerp_to_x, anim_counter)
	y = lerp(current_y, lerp_to_y, anim_counter)
	anim_counter += anim_step
	if anim_counter >= 1 {
		x = lerp_to_x
		y = lerp_to_y
		moving = false
		anim_counter = 0
	}
	return	
}
current_x = x
current_y = y
if keyboard_check(vk_left) {
	instance = instance_position(x - 32, y, o_wall_asset)
	if instance != noone {
		return	
	}
	moving = true
	lerp_to_x = x - 32
	lerp_to_y = y
} else if keyboard_check(vk_right) {
	instance = instance_position(x + 32, y, o_wall_asset)
	if instance != noone {
		return	
	}
	moving = true
	lerp_to_x = x + 32
	lerp_to_y = y
} else if keyboard_check(vk_up) {
	instance = instance_position(x, y - 32, o_wall_asset)
	if instance != noone {
		return	
	}
	moving = true
	lerp_to_x = x
	lerp_to_y = y - 32
}
else if keyboard_check(vk_down) {
	instance = instance_position(x, y + 32, o_wall_asset)
	if instance != noone {
		return	
	}
	moving = true

	lerp_to_x = x
	lerp_to_y = y + 32
}

