if phy_active {
	return
}

animation_point = dsin(animation_counter)
phy_position_x = lerp(target_position_start, target_position_end, abs(animation_point))

animation_counter += animation_step
if animation_counter >= 180 {
	animation_counter -= 180
}