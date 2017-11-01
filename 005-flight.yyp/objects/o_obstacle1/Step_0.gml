/// @description Insert description here
// You can write your code in this editor

x -= (1 / room_speed) * o_controller.speed_multiplier

if x <= -sprite_width {
	instance_destroy()
}

