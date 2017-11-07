/// @description Insert description here
// You can write your code in this editor

with other {
	ball_center_x = x + (sprite_width / 2)
	paddle_width = o_paddle.sprite_width
	paddle_half_width = paddle_width / 2
	paddle_center_x = o_paddle.x + (paddle_half_width)
	speed_xy = sqrt(sqr(hspeed) + sqr(vspeed))
	pos_x = (ball_center_x - paddle_center_x) / paddle_half_width
	influence_x = 0.75
	hspeed = speed_xy * pos_x * influence_x
	vspeed = -(abs(sqrt(speed_xy * speed_xy - sqr(hspeed))))
	speed *= 1.05
}
