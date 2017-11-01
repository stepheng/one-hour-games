/// @description Insert description here
// You can write your code in this editor


if position_meeting(x, y, o_obstacle) {
	score = 0
	room_restart()	
} else if position_meeting(x, y, o_obstacle1) {
	score = 0
	room_restart()	
} else if position_meeting(x, y, o_floor) {
	score = 0
	room_restart()	
} else if y < 0 {
	score = 0
	room_restart()	
}