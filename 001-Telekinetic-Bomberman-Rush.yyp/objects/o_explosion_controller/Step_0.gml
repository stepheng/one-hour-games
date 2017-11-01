counter = array_length_1d(explosion_instances)

if current_step >= permitted_steps {
	index = 0
	repeat (counter) {
		with explosion_instances[index] {
			instance_destroy()	
		}
		index += 1
	}
	instance_destroy()	
	
	return
}

if left {	
	x_pos = x - (32 * (current_step + 1))
	y_pos = y
	x_off = 16
	y_off = 0
	
	left = scr_explosion(self)
}
if right {
	x_pos = x + (32 * (current_step + 1))
	y_pos = y
	x_off = 16
	y_off = 0
	
	right = scr_explosion(self)
}
if up {
	x_pos = x
	y_pos = y - (32 * (current_step + 1))
	x_off = 0
	y_off = 16
	
	up = scr_explosion(self)
}
if down {
	x_pos = x
	y_pos = y + (32 * (current_step + 1))
	x_off = 0
	y_off = 16
	
	down = scr_explosion(self)
}

current_step += 1 
