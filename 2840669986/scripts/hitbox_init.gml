//hitbox_init.gml

//water_proj_pls_die = 0;
water_proj_timer = 0;

//water_proj_was_charged = false;
water_proj_destroy_sfx = player_id.sfx_star_allies_clean_pitch_water

if (attack == AT_NSPECIAL){
	proj_angle = 15*spr_dir
}

blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);

if (attack == AT_NSPECIAL && hbox_num > 1 && hbox_num < 5){
	if (hbox_num == 2){
		var hspSpeedOffset = -.9;
	} else if (hbox_num == 3){
		var hspSpeedOffset = 0;
	} else if (hbox_num == 4){
		var hspSpeedOffset = .9;
	}
	if (instance_exists(player_id.vacuum)){
		if (player_id.vacuum.spr_dir == 1){
			hsp = 7+hspSpeedOffset;
		}
		else{
			hsp = -7+hspSpeedOffset;
		}
	}
}