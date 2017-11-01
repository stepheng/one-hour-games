if(!variable_instance_exists(id, "score")) score = 0;
draw_set_font(fnt_arial)
draw_text(50, 20, string("Score: ") + string(score));