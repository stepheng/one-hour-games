/// @description Insert description here
// You can write your code in this editor

surface = surface_create(320, 320)
needs_redraw = true
current_color_index = 0

colors[0] = c_yellow
colors[1] = c_gray
colors[2] = c_black

for (i = 0; i < 10; i++) {
	for (j = 0; j < 10; j++) {
		revealed_tiles[i, j] = false	
	}
}

revealed_tiles[2, 3] = true
revealed_tiles[7, 6] = true

selected_x = 2
selected_y = 3

tiles[0, 0] = 0
tiles[1, 0] = 1
tiles[2, 0] = 1
tiles[3, 0] = 1
tiles[4, 0] = 1
tiles[5, 0] = 1
tiles[6, 0] = 1
tiles[7, 0] = 1
tiles[8, 0] = 1
tiles[9, 0] = 1

tiles[0, 1] = 0
tiles[1, 1] = 1
tiles[2, 1] = 1
tiles[3, 1] = 1
tiles[4, 1] = 1
tiles[5, 1] = 1
tiles[6, 1] = 1
tiles[7, 1] = 0
tiles[8, 1] = 0
tiles[9, 1] = 0

tiles[0, 2] = 0
tiles[1, 2] = 0
tiles[2, 2] = 1
tiles[3, 2] = 1
tiles[4, 2] = 1
tiles[5, 2] = 0
tiles[6, 2] = 0
tiles[7, 2] = 0
tiles[8, 2] = 0
tiles[9, 2] = 0

j = 3

tiles[0, j] = 0
tiles[1, j] = 0
tiles[2, j] = 1
tiles[3, j] = 0
tiles[4, j] = 0
tiles[5, j] = 0
tiles[6, j] = 0
tiles[7, j] = 0
tiles[8, j] = 0
tiles[9, j] = 0

j += 1
tiles[0, j] = 0
tiles[1, j] = 0
tiles[2, j] = 2
tiles[3, j] = 0
tiles[4, j] = 0
tiles[5, j] = 0
tiles[6, j] = 0
tiles[7, j] = 0
tiles[8, j] = 0
tiles[9, j] = 0

j += 1
tiles[0, j] = 0
tiles[1, j] = 0
tiles[2, j] = 2
tiles[3, j] = 0
tiles[4, j] = 0
tiles[5, j] = 2
tiles[6, j] = 0
tiles[7, j] = 0
tiles[8, j] = 2
tiles[9, j] = 0

j += 1
tiles[0, j] = 0
tiles[1, j] = 0
tiles[2, j] = 2
tiles[3, j] = 0
tiles[4, j] = 2
tiles[5, j] = 2
tiles[6, j] = 0
tiles[7, j] = 2
tiles[8, j] = 2
tiles[9, j] = 0

j += 1
tiles[0, j] = 0
tiles[1, j] = 2
tiles[2, j] = 2
tiles[3, j] = 2
tiles[4, j] = 2
tiles[5, j] = 2
tiles[6, j] = 2
tiles[7, j] = 2
tiles[8, j] = 2
tiles[9, j] = 0

j += 1
tiles[0, j] = 0
tiles[1, j] = 2
tiles[2, j] = 2
tiles[3, j] = 2
tiles[4, j] = 2
tiles[5, j] = 2
tiles[6, j] = 2
tiles[7, j] = 2
tiles[8, j] = 2
tiles[9, j] = 0

j += 1
tiles[0, j] = 2
tiles[1, j] = 2
tiles[2, j] = 2
tiles[3, j] = 2
tiles[4, j] = 2
tiles[5, j] = 2
tiles[6, j] = 2
tiles[7, j] = 2
tiles[8, j] = 2
tiles[9, j] = 2

right_tiles = scr_right_tiles()
left_tiles = scr_left_tiles()
up_tiles = scr_up_tiles()
down_tiles = scr_down_tiles()