//Dedicated to drawing the camera, STAGE MAIN SPACE

with obj_stage_main {
	cam_pos_left = [view_get_xview(),view_get_yview()];
	cam_pos_right = [view_get_xview()+view_get_wview(),view_get_yview()+view_get_hview()];
	true_pos = [cam_pos_left[0]+view_get_wview()/2,cam_pos_left[1]+view_get_hview()/2];
	with room_manager {
		other.g_cam_pos = [follow_point.x,follow_point.y]; //follow_point defined in article5_update
		other.cam_smooth = floor((other.cam_smooth+cam_smooth)/2);
	}
	set_view_position_smooth(g_cam_pos[0],g_cam_pos[1],cam_smooth);
	// if debug draw_circle_color(g_cam_pos[0],g_cam_pos[1],5,c_blue,c_blue,false);
	//set_view_position(g_cam_pos[0],g_cam_pos[1]);

}
#define set_view_position_smooth(_x,_y,_smooth)
sm_x = ease_linear(floor(true_pos[0]),floor(_x),1,_smooth);
sm_y = ease_linear(floor(true_pos[1]),floor(_y),1,_smooth);
set_view_position(round(sm_x), round(sm_y));
true_pos[0] += sm_x;
true_pos[1] += sm_y;
