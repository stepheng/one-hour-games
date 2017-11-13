/// @description Insert description here
// You can write your code in this editor
w = 32
h = 32

for (i = 0; i < w; i++) {
	for (j = 0; j < h; j++) {
		array[i, j] = irandom(100) < 70	? 0 : 1
		//array[i, j] = 0
		neighbours[i, j] = 0
	}	
}

alarm[0] = 5
