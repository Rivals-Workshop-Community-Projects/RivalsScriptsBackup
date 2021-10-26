//Dedicated to drawing the camera, STAGE MAIN SPACE

with obj_stage_main {
	cam_state_time++;
	if old_cam_state != cam_state {
		cam_state_time = 0;
		old_cam_state = cam_state;
	}
	cam_pos_left = [view_get_xview(),view_get_yview()];
	cam_pos_right = [view_get_xview()+view_get_wview(),view_get_yview()+view_get_hview()];
	true_pos = [cam_pos_left[0]+view_get_wview()/2,cam_pos_left[1]+view_get_hview()/2];
	switch cam_state {
		case -1: //nothing
			break;
		case 1: //Controlled by action manager
			with action_manager {
				other.g_cam_pos = cam_pos;
				// other.cam_smooth = cam_smooth;
				other.cam_smooth = floor((other.cam_smooth+cam_smooth)/2);
			}
			//print_debug(string(g_cam_pos));
			break;
		case 2: //Controlled by Camera article7
			with room_manager other.g_cam_pos = [follow_point.x,follow_point.y]; //follow_point defined in article5_update
			if !instance_exists(cam_override_obj) {
				cam_state = 0; //reset to room managing if can object is not available
				break;
			}
			with cam_override_obj {
				// other.cam_smooth = cam_smooth;
				other.cam_smooth = floor((other.cam_smooth+cam_smooth)/2);
				switch lock_type {
	                case 0: //Lock xy
	                	other.g_cam_pos = cam_pos;
	                    break;
	                case 1: //Lock y
	                	other.g_cam_pos[1] = cam_pos[1];
	                    break;
	                case 2: //Lock x
	                	other.g_cam_pos[0] = cam_pos[0];
	                    break;
	            }
			}
			break;
		default: //not defined, controlled by global/room_manager - "world cam"
			with room_manager {
				other.g_cam_pos = [follow_point.x,follow_point.y]; //follow_point defined in article5_update
				// other.cam_smooth = floor((other.cam_smooth+cam_smooth)/2);
				other.cam_smooth = floor(ease_linear(other.cam_smooth,cam_smooth,1,100));
				// if other.cam_state_time > 30/other.cam_smooth other.cam_smooth = cam_smooth;
				// if (cur_room_time < 30 || other.cam_state_time > 30*floor(other.cam_smooth/2)) other.cam_smooth = cam_smooth;
				
			}
			break;
		
	}
	set_view_position_smooth(g_cam_pos[0],g_cam_pos[1],cam_smooth);
	// if debug draw_circle_color(g_cam_pos[0],g_cam_pos[1],5,c_blue,c_blue,false);
	//set_view_position(g_cam_pos[0],g_cam_pos[1]);

}
// with oPlayer if state == PS_RESPAWN print("[article5:draw] completed check");
// if debug with oPlayer {
// 	draw_debug_text(floor(x),floor(y),string([floor(x/16),floor(y/16)]));
// 	draw_debug_text(floor(x),floor(y)+16,string(get_state_name(state)));
// 	draw_debug_text(floor(x),floor(y)+32,string(window_timer));
// }
#define set_view_position_smooth(_x,_y,_smooth)
sm_x = ease_linear(floor(true_pos[0]),floor(_x),1,floor(_smooth));
sm_y = ease_linear(floor(true_pos[1]),floor(_y),1,floor(_smooth));
set_view_position(round(sm_x), round(sm_y));
true_pos[0] = sm_x;
true_pos[1] = sm_y;
//set_view_position(sm_x, sm_y);
//background movements
with obj_stage_article {
	if num == 1 && static {
		x = round(other.sm_x);
		y = round(other.sm_y);
		// x = round(view_get_xview());
		// y = round(view_get_yview());
	}
}

