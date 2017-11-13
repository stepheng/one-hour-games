/// @description Insert description here
// You can write your code in this editor

xpos = floor((mouse_x - x) / 16)
ypos = floor((mouse_y - y) / 16)

if xpos >= 0 && xpos < w && ypos >= 0 && ypos < h {
	if array[xpos, ypos] == 0 {
		array[xpos, ypos] = 1
	} else {
		array[xpos, ypos] = 0	
	}
}


