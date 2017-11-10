/// @description Insert description here
// You can write your code in this editor

posx = (floor(mouse_x / 32) * 32) + 16
posy = (floor(mouse_y / 32) * 32) + 16

if instance_position(posx, posy, o_turret) != noone {
	return	
}

turret = instance_create_depth(posx, posy, -1, o_turret)
mp_grid_add_instances(mp_grid, o_turret, false)

for (i = 0; i < instance_number(o_robot); i += 1) {
   robot = instance_find(o_robot, i);
	if mp_grid_path(mp_grid, robot.path, robot.x, robot.y, o_target.x, o_target.y, 1) == false {
		with turret {
			instance_destroy()
		}
		mp_grid_clear_all(mp_grid)
		mp_grid_add_instances(mp_grid, o_turret, false)
        mp_grid_path(mp_grid, robot.path, robot.x, robot.y, o_target.x, o_target.y, 1)		
   }
   with robot {
       path_start(path, 1, 3, 0)
   }
}
