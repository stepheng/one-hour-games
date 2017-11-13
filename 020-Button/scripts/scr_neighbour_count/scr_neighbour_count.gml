array = argument[0]
xpos = argument[1]
ypos = argument[2]

counter = 0
for (i = xpos - 1; i <= xpos + 1; i++) {
	for (j = ypos - 1; j <= ypos + 1; j++) {
		if  i == xpos && j == ypos {
			continue	
		}
		if i >= 0 && i < 32 && j >= 0 && j < 32 {
			//show_debug_message("i, j = " + string(i) + ", " + string(j))
			if array[i, j] > round(0) {
				counter++	
			}
		}
	}
}
//show_debug_message("Count: " + string(counter))
return counter