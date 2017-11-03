/// @description Insert description here
// You can write your code in this editor

if other.owner == self {
	return	
}

other.owner.is_active = false
is_active = true
camera_set_view_target(view_camera[0], self)
with other {
	instance_destroy()
}
