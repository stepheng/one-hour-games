last_x = x
last_y = y

if keyboard_check(ord("W")) {
	y -= 10
} else if keyboard_check(ord("S")) {
	y += 10	
}

if keyboard_check(ord("A")) {
	x -= 10
} else if keyboard_check(ord("D")) {
	x += 10	
}

if keyboard_check_pressed(ord("E")) {
	nearest = instance_nearest(x, y, o_bed)
	if distance_to_object(nearest) < 64 {
		if nearest.image_index == 0 && follower != noone {
			nearest.image_index = 1
			nearest.run_timer = true
			with follower {
				instance_destroy()	
			}
			follower = noone
		} else if nearest.timer > 50 {
			nearest.image_index = 0	
			nearest.run_timer = false
			nearest.timer = 0
		}
	}
	
	if follower == noone {
		nearest = instance_nearest(x, y, o_boy)
		if distance_to_object(nearest) < 64 {
			follower = nearest	
			follower.waiting = false
		}
	}
	
}

if follower != noone {
	follower.x = x + 64
	follower.y = y
}
