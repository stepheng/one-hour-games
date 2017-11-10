/// @description Insert description here
// You can write your code in this editor

robot_health = 0

path = path_add()
mp_grid_path(o_controller.mp_grid, path, x, y, o_target.x, o_target.y, 1)

path_start(path, 1, 3, 0)
