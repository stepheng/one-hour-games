/// @description Insert description here
// You can write your code in this editor
for (i = 0; i < w; i++) {
	for (j = 0; j < h; j++) {
		xpos = x + (i * 16)
		ypos = y + (j * 16)
		if array[i, j] == 0 {
			draw_rectangle(xpos, ypos, xpos + 16, ypos + 16, true)
		} else {
			draw_rectangle(xpos, ypos, xpos + 16, ypos + 16, false)
		}
	}	
}