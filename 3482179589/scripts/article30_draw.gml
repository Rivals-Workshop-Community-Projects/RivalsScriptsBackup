//article30 draw - flash


var a_tmp = ease_expoOut( 120, 0, the_timer, timer_max )/100

draw_sprite_ext( sprite_get("flash"), 0, temp_x, temp_y, 3000, 3000, 0, -1, a_tmp/((a_tmp>1)?1:3));