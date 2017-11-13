/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < w; i++) {
	for (var j = 0; j < h; j++) {
		neighbours = scr_neighbour_count(array, i, j)
		next[i, j] = array[i, j]
		if array[i, j] == 0 {
			if neighbours == 3 {
				next[i, j] = 1	
			} else {
				next[i, j] = 0	
			}
		} else {
			if neighbours <= 1 {
				next[i, j] = 1	
			} else if neighbours > 4 {
				next[i, j] = 0	
			} else {
				next[i, j] = 1	
			}
		}
	}	
}

for (var i = 0; i < w; i++) {
	for (var j = 0; j < h; j++) {
		array[i, j] = next[i, j]
	}
}


alarm[0] = 1
