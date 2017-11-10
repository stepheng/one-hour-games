/// @description Insert description here
// You can write your code in this editor
draw_self()

health_x = x - 16
health_y = y - 24
draw_healthbar(health_x, health_y, health_x + 32, health_y + 8, robot_health, c_black, c_red, c_green, 1, false, true)