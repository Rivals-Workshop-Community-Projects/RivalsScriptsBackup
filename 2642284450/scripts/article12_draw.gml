//article12 draw - this may be city


var a_tmp = ease_cubeOut( 100, 0, the_timer, timer_max )/100

draw_sprite_ext( sprite_get("gradient_fade"), 0, temp_x, temp_y, 3000, 3, 0, -1, a_tmp/3 );


var thingy = ease_quartOut( 0, 100, the_timer, timer_max )/100

draw_sprite_ext( sprite_get("gradient_fade"), 0, temp_x, temp_y, 3000, thingy*2.6, 0, c_black, thingy/1.2 );