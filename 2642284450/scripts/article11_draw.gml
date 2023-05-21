//article11 draw - this may be city




var a_tmp = ease_quartOut( 0, 100, the_timer, timer_max )/100

var anim_spd = get_bg_data(4, BG_LAYER_AUTOSCROLL_X)

x_tmper = temp_x + ((get_gameplay_time()*anim_spd)%608)

var coltmp = make_colour_hsv( (get_gameplay_time()/4)%255, 100, 255);
draw_sprite_ext( sprite_get("bg4_overlay"), 0, x_tmper-608, temp_y, 2, 2, 0, coltmp, a_tmp );
draw_sprite_ext( sprite_get("bg4_overlay"), 0, x_tmper, temp_y, 2, 2, 0, coltmp, a_tmp );
draw_sprite_ext( sprite_get("bg4_overlay"), 0, x_tmper+608, temp_y, 2, 2, 0, coltmp, a_tmp );
draw_sprite_ext( sprite_get("bg4_overlay"), 0, x_tmper+608+608, temp_y, 2, 2, 0, coltmp, a_tmp );
//print(string(temp_x)+", "+string(temp_y));