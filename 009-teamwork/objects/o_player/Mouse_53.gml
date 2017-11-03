/// @description Insert description here
// You can write your code in this editor

if is_active == false {
	return	
}

if ball != noone {
	with ball {
		instance_destroy()	
	}
}

ball = instance_create_depth(x, y, depth, o_ball)
ball.owner = self

//ex = mouse_x
//ey = mouse_y
//px = x
//py = y
//vx = (ex - px)
//vy = (ey - py)

//len = sqrt(vx*vx + vy*vy)

//vx = vx / len
//vy = vy / len

//speed_x = vx * 50
//speed_y = vy * 50

direction = point_direction(x, y, mouse_x, mouse_y)
speed_x = dcos(direction) * 50
speed_y = dsin(direction) * -50


with ball {
	current_player = instance_nearest(x, y, o_player)
	physics_apply_impulse(x, y, current_player.speed_x, current_player.speed_y)	
}
