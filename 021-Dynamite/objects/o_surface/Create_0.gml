/// @description Insert description here
// You can write your code in this editor

surface = noone
surface_sprite = noone

point_count = 30

var separation = room_width / point_count
for (var i = 1; i < point_count; i++) {
	xpoints[i] = irandom_range(separation * i, separation * (i + 1))
	ypoints[i] = irandom_range(100, 700)
}

xpoints[0] = 0
xpoints[point_count] = room_width

ypoints[0] = ypoints[1]
ypoints[point_count] = ypoints[point_count - 1]
