/// @description Insert description here
// You can write your code in this editor

image_xscale = 0.25
image_yscale = 0.25
start_x = x
start_y = y
target_x = room_width / 2
target_y = room_height / 2

image_angle = point_direction(start_x, start_y, target_x, target_y)

animation_counter = 0
animation_speed = (1 / room_speed) / random_range(2, 5)
