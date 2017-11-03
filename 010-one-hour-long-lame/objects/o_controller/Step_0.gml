/// @description Insert description here
// You can write your code in this editor

time_diff = (current_time - start_time) * multiplier
hour = floor((time_diff / (1000 * 60 * 60)) % 60)
minute = floor((time_diff / (1000 * 60)) % 60)
second = floor((time_diff / 1000) % 60)
hundredth = time_diff % 1000

if irandom_range(0, 1000) > 990 {
	instance_create_depth(room_width, room_height - 32, depth, o_obstacle)	
}

if hour >= 1 {
	room_goto_next()
}
