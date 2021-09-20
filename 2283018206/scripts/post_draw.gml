muno_event_type = 4;
user_event(14);

shader_start();

if (state == PS_AIR_DODGE && image_index == clamp(image_index, 1, 3)){
	
	var angle = (point_direction(0, 0, hsp, vsp) - 90) * (abs(hsp) > 1 || abs(vsp) > 1);
	draw_sprite_ext(spr_airdodge_overlay, image_index, x, y - 28, 1, 1, angle, image_blend, 1);
	draw_sprite_ext(spr_airdodge_overlay_invul, image_index, x, y - 28, 1, 1, angle, image_blend, 0.5);
	
}

if phone_fast{
	shader_end();
	exit;
}

if bike_vfx_time{
	draw_sprite(sprite_get("vfx_bike_mount"), lerp(5, 0, bike_vfx_time / bike_vfx_time_max), x, y);
}

shader_end();



if afterimg_timer{

	maskHeader();
	
	draw_sprite_ext(afterimg_sprite, afterimg_frame, afterimg_x, afterimg_y, afterimg_dir, 1, afterimg_angle, c_white, afterimg_timer * 0.5 / afterimg_timer_max);

	maskMidder();
	
	if ("fix_stupid_flash_thing" in self) draw_rectangle_colour(0,0, room_width,room_height, afterimg_col, afterimg_col, afterimg_col, afterimg_col, false);
	
	maskFooter();
	
	fix_stupid_flash_thing = true;
}



if phone_attacking switch(attack){
    case AT_FSPECIAL:
    case AT_USPECIAL:
    case AT_DSPECIAL_AIR:
    	if "ball_id" in self && ball_id != noone && instance_exists(ball_id){
    		maskHeader();
	
			draw_sprite_ext(sprite_index, image_index, ball_x, ball_y + 32, spr_dir, 1, image_angle, c_white, window_timer * 0.5 / window_end);
		
			maskMidder();
			
			if ("fix_stupid_flash_thing" in self) draw_rectangle_colour(0,0, room_width,room_height, afterimg_col, afterimg_col, afterimg_col, afterimg_col, false);
			
			maskFooter();
			
			fix_stupid_flash_thing = true;
    	}
    	break;
}



#define maskHeader

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);



#define maskMidder

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);



#define maskFooter

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);