shader_start();
draw_sprite_ext(sprite_get("jethud"), (jet_charge ?  get_gameplay_time()/4 : 0) , temp_x+200, temp_y, 1,1, 0, (jet_charge ? c_white : c_gray), 1);
shader_end();