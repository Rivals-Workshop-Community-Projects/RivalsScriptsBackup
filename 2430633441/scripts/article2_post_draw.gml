var c = get_player_color(player)
var t = clamp(time-40, 0, time_total)
var red = floor(ease_circOut(get_color_profile_slot_r(c, 7),255, t, time_total))
var green = floor(ease_circOut(get_color_profile_slot_g(c, 7),255, t, time_total))
var blue = floor(ease_circOut(get_color_profile_slot_b(c, 7),255, t, time_total))
set_article_color_slot(0, red, green, blue)

var col = make_color_rgb(red, green, blue);
draw_sprite_ext(sprite_index,image_index,x,y+y_off,image_xscale*spr_dir,image_yscale,image_angle,c_white,1)
draw_sprite_ext(sprite_index,image_index,x,y+y_off,image_xscale*spr_dir,image_yscale,image_angle,col,1)