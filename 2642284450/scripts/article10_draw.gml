//article10 draw - this may be fountain





var a_tmp = ease_cubeOut( 100, 0, the_timer, timer_max )/100

var anim_spd = get_bg_data(3, BG_LAYER_ANIMSPD)
//print (string(anim_spd))
var anim_frm = (get_gameplay_time()-8) / 20
//image_index = 0 + (get_gameplay_time()%state_end) * 3 / state_end;
//get_gameplay_time()/anim_spd%3

var coltmp = make_colour_hsv( (get_gameplay_time()/4)%255, 100, 255);
draw_sprite_ext( sprite_get("fountain2"), anim_frm, temp_x, temp_y, 2, 2, 0, coltmp, 1 );

draw_sprite_ext( sprite_get("fountain3"), anim_frm, temp_x-4, temp_y, 2, 2, 0, -1, a_tmp );
draw_sprite_ext( sprite_get("fountain3"), anim_frm, temp_x+4, temp_y, 2, 2, 0, -1, a_tmp );
//print(string(temp_x)+", "+string(temp_y));