//post-draw

shader_start() 

if (attack==AT_FSPECIAL&&(state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR)){
	var tmp_a = ease_linear( 0, 50, fsp_a_time, fsp_a_t_max )/50
	draw_sprite_ext( sprite_get("nspecial_blue"), image_index, x, y, spr_dir, 1, 0, -1, tmp_a/(1.8-(fsp_level/5)) )
	gpu_set_blendmode(bm_add);
	draw_sprite_ext( sprite_get("nspecial_blue"), image_index, x, y, spr_dir, 1, 0, -1, tmp_a )
	gpu_set_blendmode(bm_normal);
}

if (attack==36&&(state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR)&&mode=="B"){if (window==1||window==3){repeat(200){draw_sprite_ext(sprite_get("wave_buffer"),0,x+(-2*spr_dir),y,2*spr_dir,-2,0,-1,1);draw_sprite_ext(sprite_get("wave_buffer"),6,x+(-2*spr_dir),y,2*spr_dir,-2,0,-1,1);}}if (window==2){repeat(200){draw_sprite_ext(sprite_get("wave_buffer"),1,x+(-2*spr_dir),y,2*spr_dir,-2,0,-1,1);draw_sprite_ext(sprite_get("wave_buffer"),7,x+(-2*spr_dir),y,2*spr_dir,-2,0,-1,1);}}}

if ((state==PS_ATTACK_GROUND || state==PS_ATTACK_AIR) && attack==AT_NSPECIAL){
	if (window == 4){
		if (window_timer > 3){
			var trail_frame = ((image_index==5)?0:(image_index==6)?1:(image_index==7)?2:0) + (nsp_direction_storage_for_post_draw*3);
			draw_sprite_ext( sprite_get("nspecial2_comettrail"), trail_frame, x-spr_dir, y, 2*spr_dir, 2, 0, -1, 1 ) 
		}
	}
}
shader_end() 