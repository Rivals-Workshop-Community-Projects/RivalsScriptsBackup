//hitbox_update
if (attack == AT_JAB && hbox_num == 3){
	if (hitbox_timer > 4 && !melon_powerdecay){
		melon_powerdecay = true;
		image_xscale = 0.2;
		image_yscale = 0.2;
		kb_value = 6;
		kb_scale = 0.4;
		kb_angle = 55;
		hitpause = 8;
		hitpause_growth = 0.5;
		hitstun_factor = 0.5;
	}
	if place_meeting(x,y,(asset_get("par_block"))) || (!free && umbrellaleaf_bounces == 0){
		with player_id{
			sound_play(sound_get("melonimpact2"));
		}
		create_hitbox( AT_JAB, 5, (x),(y) );
		destroyed = true;
	}
	if (y > (room_height + 128)){
		instance_destroy();
		exit;
	}
}

if (attack == AT_EXTRA_2 && hbox_num == 5){
	if (hitbox_timer > 2 && !melon_powerdecay){
		melon_powerdecay = true;
		image_xscale = 0.2;
		image_yscale = 0.2;
		kb_value = 6;
		kb_scale = 0.4;
		kb_angle = 55;
		hitpause = 8;
		hitpause_growth = 0.5;
		hitstun_factor = 0.5;
	}
	if place_meeting(x,y,(asset_get("par_block"))){
		with player_id{
			sound_play(sound_get("melonimpact2"));
		}
		create_hitbox( AT_EXTRA_2, 7, (x),(y) );
		destroyed = true;
	}
	if (y > (room_height + 128)){
		instance_destroy();
		exit;
	}
}

if (attack == AT_USTRONG && hbox_num == 1){
	if (vsp > -4 && !melon_powerdecay){
		melon_powerdecay = true;
		image_xscale = 0.2;
		image_yscale = 0.2;
		kb_value = 7;
		kb_scale = 0.5;
		hitpause = 8;
		hitpause_growth = 0.8;
		hitstun_factor = 0.5;
		img_spd = 1;
	}
	if place_meeting(x,y,(asset_get("par_block"))) || (!free && umbrellaleaf_bounces == 0){
		with player_id{
			sound_play(sound_get("melonimpact2"));
		}
		create_hitbox( AT_USTRONG, 3, (x),(y) );
		destroyed = true;
	}
	with player_id{
		move_cooldown[AT_USTRONG] = 30;
	}
	if (y > (room_height + 128)){
		instance_destroy();
		exit;
	}
}

if (attack == AT_NSPECIAL && hbox_num == 1){
	if (hitbox_timer > 2 && !melon_powerdecay){
		melon_powerdecay = true;
		image_xscale = 0.2;
		image_yscale = 0.2;
		kb_value = 6;
		kb_scale = 0.4;
		kb_angle = 55;
		hitpause = 8;
		hitpause_growth = 0.5;
		hitstun_factor = 0.6;
	}
	if place_meeting(x,y,(asset_get("par_block"))){
		with player_id{
			sound_play(sound_get("melonimpact2"));
		}
		create_hitbox( AT_NSPECIAL, 3, (x),(y) );
		destroyed = true;
	}
	if (y > (room_height + 128)){
		instance_destroy();
		exit;
	}
}