/// @description Insert description here
// You can write your code in this editor

if camera_get_view_target(view_camera[0]) != o_player {
	return	
}
dynamite = instance_create_depth(x, y, depth, o_dynamite)
dynamite.vspeed = -vpower / 4
dynamite.hspeed = hpower / 4

camera_set_view_target(view_camera[0], o_dynamite)
