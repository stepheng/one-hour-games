/// @description Insert description here
// You can write your code in this editor

for (i = 0; i < 8; i++) {
	for (j = 0; j < 8; j++) {
		sprite = noone
		if tiles[i, j] == 1 { 
			sprite = s_red 
		} else if tiles[i, j] == 2 {
			sprite = s_blue	
		}
		if sprite != noone {
			draw_sprite(sprite, 0, (i * 64) + x, (j * 64) + y)
		}
	}
}

//draw_self()
