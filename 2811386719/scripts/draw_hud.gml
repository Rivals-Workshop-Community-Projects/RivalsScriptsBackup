// draw_debug_text( temp_x+60, temp_y-15, "state : " + get_state_name(state));
// draw_debug_text( temp_x+60, temp_y-30, "state timer : " + string(state_timer));
// draw_debug_text( temp_x+60, temp_y-45, "attack : " + string(attack));
// draw_debug_text( temp_x+60, temp_y-60, "window : " + string(window));
// draw_debug_text( temp_x+60, temp_y-75, "window timer : " + string(window_timer));
// draw_debug_text( temp_x- 15, temp_y-15, "hsp: " + string(hsp));
// draw_debug_text( temp_x- 15, temp_y-30, "vsp: " + string(vsp));
// draw_debug_text( temp_x- 15, temp_y-45, "x: " + string(x));
// draw_debug_text( temp_x- 15, temp_y-60, "y: " + string(y));
// draw_debug_text( temp_x- 15, temp_y-75, "img ind: " + string(image_index));
// draw_debug_text( floor(x+60 - view_get_xview()), floor(y-15-view_get_yview()), "static: " + string(static));

if(fps_real < lowest_fps) lowest_fps = fps_real;
if(get_gameplay_time()%60 == 0) lowest_fps = fps_real;
// draw_debug_text( 10, 10, "FPS : " + string(lowest_fps));
// draw_debug_text( 10, 80, "grav : " + string(grav));
// var ida;

// with other visible = false;

// saved_id = ida;
shader_start()
draw_hud_bar()
draw_ball_offstage_indicator()
shader_end()
#define draw_hud_bar

var fore_wid = static*2.12;
var fore_img_indx = min(static/33, 2) 
var back_wid = 66;
var back_img_indx = fore_img_indx - 1;

draw_sprite_ext(static_bar_spr, fore_img_indx, temp_x-2, temp_y, fore_wid, 2, 0, c_white, 1)

#define draw_ball_offstage_indicator()

with(right_bubble){
  var n_of = 32
	var view_x = view_get_xview()
	var view_y = view_get_yview()
	var view_w = view_get_wview()
	var view_h = view_get_hview()
	var corrected_x = x - view_x
	var corrected_y = y - view_y
	
	xMag = clamp(corrected_x, 0, view_w)
	yMag = clamp(corrected_y, 0, view_h)
	var offscreen = xMag != corrected_x or yMag !=  corrected_y

	if(offscreen){
  	var view_snap_x = clamp(corrected_x, 0+n_of, view_w - n_of)
    var view_snap_y = clamp(corrected_y, 0+n_of, other.temp_y - n_of)
  	
  	var offset_dir_x = (corrected_x>view_w) - (corrected_x<0)
  	var offset_dir_y = (corrected_y>view_h) - (corrected_y<0)
  	var i = offset_dir_x +1
  	var j = offset_dir_y +1
  	
  	var offset_x = n_of*-offset_dir_x
  	var offset_y = n_of*-offset_dir_y
  	
  	var subImg = other.ball_idc_lup[@ j][@ i]

    draw_sprite_ext(asset_get("offscreen_cloud_bg_spr"), subImg, view_snap_x, view_snap_y, 1, 1, 0, get_player_hud_color( player ), offscreen);
    draw_sprite_ext(other.ball_offscreen_spr, 0, view_snap_x, view_snap_y, 2, 2, 0, c_white, offscreen);
	}
}