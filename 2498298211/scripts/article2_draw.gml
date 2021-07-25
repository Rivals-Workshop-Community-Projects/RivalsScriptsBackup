var colour = make_color_rgb(122, 82, 125);
draw_set_alpha(0.5);
draw_rectangle_colour(room_width/2-obj_stage_main.bossMaxHp, y+2, room_width/2-obj_stage_main.bossMaxHp+obj_stage_main.bossMaxHp*2, y+4, colour, colour, colour, colour, 0);
draw_set_alpha(1);