if(attacking){
	if(attack == AT_FSPECIAL and (lvl > 1 or mid_attack_lvl > 1)){
		if(window == 1 or window == 2 or window == 3){
			shader_start()
			var img = window == 1 ? (window_timer*5/window_end) : (5 + (game_time*fspecial_lvl2_anim_speed)%16);
			var offset = window == 1 ? 0 : (hsp != 0)*spr_dir*2*!free;
			draw_sprite_ext(free? fspecial_air_lvl2_fx_spr : fspecial_ground_lvl2_fx_spr, img, x + offset, y, 2*spr_dir, 2, 0, c_white, 1);
			shader_end()
		}
	}
}

if(gs[GS_EXISTS]){
	var st = gs[GS_STATE];
	var img2 = gs_anim_frame_start[st] + gs[GS_STATE_TIMER]*gs_anim_frames[st]/gs_state_end[st];
	var alpha = 1;
	if(st == 1){
		alpha = 0.5 + (sin( (gs[GS_STATE_TIMER]*gs[GS_STATE_TIMER]) *0.0015)+1)/4;
	} 
	if(st == 3){
		alpha = 1-(gs[GS_STATE_TIMER]/gs_state_end[st])
	}
	shader_start()
	draw_sprite_ext(gs_spr, img2, gs[GS_X], gs[GS_Y], 2*gs_spr_dir, 2, 0, c_white, alpha);
	shader_end()
}


#macro GS_X 0
#macro GS_Y 1
#macro GS_TIMER 2
#macro GS_EXISTS 3
#macro GS_STATE 4
#macro GS_STATE_TIMER 5