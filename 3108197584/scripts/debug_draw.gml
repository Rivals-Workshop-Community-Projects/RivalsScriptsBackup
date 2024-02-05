var view_left = view_get_xview() + 32;
var view_right = view_get_wview() + view_get_xview() - 32;
var view_up = view_get_yview() + 32;
var view_down = view_get_hview() + view_get_yview() - 32;
var col2 = get_player_hud_color(player);

with pHitBox if player_id = other && attack = AT_NSPECIAL && hb_state == 2 && !(x >= view_left - 60 && x <= view_right + 60 && y >= view_up - 60 && y <= view_down + 60) && player_id.object_index != oTestPlayer{
	var offscreen_x_pos = 0;
	var offscreen_y_pos = 0;
	var offscreen_image = 0;
	
	if (x < view_left) offscreen_x_pos = view_left;
	else if (x > view_right) offscreen_x_pos = view_right;
	else offscreen_x_pos = x;
	
	if (y < view_up) offscreen_y_pos = view_up;
	else if (y > view_down) offscreen_y_pos = view_down;
	else offscreen_y_pos = y;
	
	if (x < view_left){
		if (y < view_up) offscreen_image = 1;
		else if (y > view_down) offscreen_image = 7;
		else  offscreen_image = 0;
	}else if (x > view_right){
		if (y < view_up) offscreen_image = 3;
		else if (y > view_down) offscreen_image = 5;
		else  offscreen_image = 4;
	}else{
		if (y < view_up) offscreen_image = 2;
		else if (y > view_down) offscreen_image = 6;
	}
	var angle = 180 + 45*offscreen_image;
	draw_primitive_begin(pr_trianglestrip);
	draw_vertex_color(offscreen_x_pos + 32*dcos(angle + 120), offscreen_y_pos + 32*dsin(angle + 120), col2, 0);
	draw_vertex_color(offscreen_x_pos + (angle%90 = 45? 44: 32)*dcos(angle), offscreen_y_pos + (angle%90 = 45? 44: 32)*dsin(angle), col2, .8 * clamp(point_distance(x, y, offscreen_x_pos, offscreen_y_pos)/100, 0, 1));
	draw_vertex_color(offscreen_x_pos + 32*dcos(angle - 120), offscreen_y_pos + 32*dsin(angle - 120), col2, 0);
	draw_primitive_end();
	
	maskHeader();
	shader_end();
	draw_sprite_ext(sprite_index, image_index, offscreen_x_pos, offscreen_y_pos, 1, 1, proj_angle, c_white, 0.5 * clamp(point_distance(x, y, offscreen_x_pos, offscreen_y_pos)/100, 0, 1));
	draw_set_alpha(0);
	draw_primitive_begin(pr_trianglestrip);
	draw_vertex_color(offscreen_x_pos + 100*dcos(angle + 140.7), offscreen_y_pos + 100*dsin(angle + 140.7), c_white, 0);
	draw_vertex_color(offscreen_x_pos + (angle%90 = 45? 44: 32)*dcos(angle), offscreen_y_pos + (angle%90 = 45? 44: 32)*dsin(angle), c_white, 0);
	draw_vertex_color(offscreen_x_pos + 200*dcos(angle + 140.7 - 45), offscreen_y_pos + 200*dsin(angle + 140.7 - 45), c_white, 0);
	draw_vertex_color(offscreen_x_pos + 100*dcos(angle + 140.7 - 90), offscreen_y_pos + 100*dsin(angle + 140.7 - 90), c_white, 0);
	draw_primitive_end();
	draw_primitive_begin(pr_trianglestrip);
	draw_vertex_color(offscreen_x_pos + 100*dcos(angle - 140.7), offscreen_y_pos + 100*dsin(angle - 140.7), c_white, 0);
	draw_vertex_color(offscreen_x_pos + (angle%90 = 45? 44: 32)*dcos(angle), offscreen_y_pos + (angle%90 = 45? 44: 32)*dsin(angle), c_white, 0);
	draw_vertex_color(offscreen_x_pos + 200*dcos(angle - 140.7 + 45), offscreen_y_pos + 200*dsin(angle - 140.7 + 45), c_white, 0);
	draw_vertex_color(offscreen_x_pos + 100*dcos(angle - 140.7 + 90), offscreen_y_pos + 100*dsin(angle - 140.7 + 90), c_white, 0);
	draw_primitive_end();
	draw_set_alpha(1);
	maskMidder();
	with other{
		shader_start();
		draw_sprite_ext(other.sprite_index, other.image_index, offscreen_x_pos, offscreen_y_pos, 1, 1, other.proj_angle, c_white, 1);
		shader_end();
	}
	maskFooter(other);
}

if get_match_setting(SET_HITBOX_VIS) && instance_exists(drone) && (drone.state = 2 || drone.state = 4){
	draw_set_alpha(.6);
	draw_sprite_ext(drone.mask_index, 0, drone.x, drone.y, 1, 1, 0, c_blue, .2);
	draw_circle_color(drone.x - 1 + 3*drone.spr_dir, drone.y, 25, c_teal, c_teal, 0);
	draw_set_alpha(1);
}

#define maskHeader()

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);


#define maskMidder()

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);


#define maskFooter(pl)

if pl.object_index = oTestPlayer{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
}
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
gpu_set_blendenable(1);
gpu_set_colorwriteenable(true,true,true,true);