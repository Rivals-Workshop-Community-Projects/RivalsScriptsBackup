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
shader_end()
#define draw_hud_bar

var fore_wid = static*2.12;
var fore_img_indx = min(static/33, 2) 
var back_wid = 66;
var back_img_indx = fore_img_indx - 1;

draw_sprite_ext(static_bar_spr, fore_img_indx, temp_x-2, temp_y, fore_wid, 2, 0, c_white, 1)