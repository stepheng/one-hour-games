/// @description Insert description here
// You can write your code in this editor

text = string(hour) + ":" + (minute < 10 ? "0" : "") + string(minute) + ":" + (second < 10 ? "0" : "") + string(second) + "." + (hundredth < 100 ? "0" : "") + (hundredth < 10 ? "0" : "") + string(hundredth)
draw_text(10, 10, text)
