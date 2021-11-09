if phone_attacking && attack == AT_USTRONG && (window > 2 || window == 2 && window_timer > 4) && !(window == 4 && window_timer > phone_window_end / 2){
	hud_offset = lerp(hud_offset, 200, 0.5);
}

if phone_attacking && attack == AT_UAIR && window == clamp(window, 2, 4){
	hud_offset = lerp(hud_offset, 80, 0.5);
}

if phone_attacking && attack == AT_UAIR && window > 5{
	hud_offset = lerp(hud_offset, 16, 0.5);
}

if phone_attacking && attack == AT_DSTRONG && !(window == 4 && window_timer > phone_window_end / 2){
	hud_offset = round(lerp(hud_offset, 40 + (window > 2) * 20, 0.5));
}

// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}



if phone_attacking && attack == AT_NSPECIAL && window == 2{
	image_index += nspecial_charge * 4;
}



if sprite_index == sprite_get("uspecial"){
	draw_y = -34;
	if window == 2 spr_angle = move_angle - 90;
	else{
		var d = angle_difference(spr_angle, 0);
		spr_angle -= d / 10;
	}
	if window == 4{
		sprite_index = asset_get("empty_sprite");
	}
}
else{
	draw_y = 0;
	spr_angle = 0;
}



switch(state){
	case PS_ROLL_BACKWARD:
	case PS_ROLL_FORWARD:
	case PS_TECH_BACKWARD:
	case PS_TECH_FORWARD:
		sprite_index = sprite_get("roll");
		break;
}



if gravity_speed != orig_gravity for (var i = 0; i < array_length(wing_check_sprites); i++){
	if sprite_index == sprite_get(wing_check_sprites[i]){
		sprite_index = sprite_get(wing_check_sprites[i] + "_wingless");
	}
}

if state == PS_PRATLAND{
	sprite_index = sprite_get("landinglag");
}




if state == PS_SPAWN{
	var frame_dur = 5;
	var amt_frames = 13;
	var dur = frame_dur * amt_frames;
	var delay = 30;
	var s_t = state_timer - delay + player * 5;
	
	if (s_t < dur){
		sprite_index = sprite_get("intro");
		image_index = max(lerp(-1, amt_frames, s_t / dur), 0);
		// image_index = s_t / frame_dur * (s_t >= 0);
		if image_index < 11 draw_indicator = 0;
		
		switch(s_t / frame_dur){
			case 0:
				sound_play(asset_get("sfx_orca_snow_evaporate"));
				sound_play(asset_get("sfx_clairen_sword_activate"));
				break;
			case 7:
				sound_play(asset_get("sfx_ori_ustrong_charge"));
				sound_play(asset_get("sfx_clairen_swing_strong"));
				break;
			case 11:
				sound_play(landing_lag_sound);
				array_push(phone_dust_query, [x, y, "land", spr_dir]);
				break;
		}
	}
}
