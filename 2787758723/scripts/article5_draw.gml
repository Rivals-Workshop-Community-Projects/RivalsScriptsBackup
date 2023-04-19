//Dedicated to drawing the camera, STAGE MAIN SPACE


// with oPlayer if state == PS_RESPAWN print("[article5:draw] completed check");
// if debug with oPlayer {
// 	draw_debug_text(floor(x),floor(y),string([floor(x/16),floor(y/16)]));
// 	draw_debug_text(floor(x),floor(y)+16,string(get_state_name(state)));
// 	draw_debug_text(floor(x),floor(y)+32,string(window_timer));
// }
#define set_view_position_smooth(_x,_y,_smooth)
var _xx = clamp(_x, 480, room_width - 480)
var _yy = clamp(_y, 270, room_height - 270)
sm_x = ease_linear(floor(true_pos[0]),floor(_xx),1,_smooth);
sm_y = ease_linear(floor(true_pos[1]),floor(_yy),1,_smooth);
set_view_position(round(sm_x), round(sm_y));
true_pos[0] = sm_x;
true_pos[1] = sm_y;
//set_view_position(sm_x, sm_y);
//background movements
