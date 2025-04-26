//hitbox_update
if (attack == AT_JAB && hbox_num == 3){
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
	if place_meeting(x,y,(asset_get("par_block"))) || (!free && umbrellaleaf_bounces == 0){
		with player_id sound_play(sound_get("melonimpact2"));
		create_hitbox( AT_JAB, 5, (x),(y) );
		destroyed = true;
	}
	if (umbrellaleaf_bounces > 0) projectile_parry_stun = false;
	if (y > (room_height + 128)){
		instance_destroy();
		exit;
	}
}

if (attack == AT_EXTRA_2 && hbox_num == 5){
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
	if place_meeting(x,y,(asset_get("par_block"))){
		with player_id sound_play(sound_get("melonimpact2"));
		create_hitbox( AT_EXTRA_2, 7, (x),(y) );
		destroyed = true;
	}
	if (umbrellaleaf_bounces > 0) projectile_parry_stun = false;
	if (y > (room_height + 128)){
		instance_destroy();
		exit;
	}
}

if (attack == AT_USTRONG && hbox_num == 1){
	if (vsp > -4) && !melon_powerdecay{
		damage = 8;
		melon_powerdecay = true;
		/*
		image_xscale = 0.2;
		image_yscale = 0.2;
		*/
		kb_value = 7;
		kb_scale = 0.5;
		kb_angle = 80;
		hitpause = 8;
		hitpause_growth = 0.8;
		hitstun_factor = 0.5;
		img_spd = 1;
	}
	if (collision_circle(x, y, 20, asset_get("par_block"), false, true)) || (!free && umbrellaleaf_bounces == 0){
		with player_id sound_play(sound_get("melonimpact2"));
		create_hitbox( AT_USTRONG, 3, (x),(y) );
		destroyed = true;
	}
	with player_id move_cooldown[AT_USTRONG] = 40;
	if (umbrellaleaf_bounces > 0) projectile_parry_stun = false;
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
		with player_id sound_play(sound_get("melonimpact2"));
		create_hitbox( AT_NSPECIAL, 3, (x),(y) );
		destroyed = true;
	}
	if (umbrellaleaf_bounces > 0) projectile_parry_stun = false;
	if (y > (room_height + 128)){
		instance_destroy();
		exit;
	}
}

if (attack == 49 && hbox_num == 1){
	if (vsp > 0){
		if !melon_powerdecay{
			melon_powerdecay = true;
			img_spd = 1;
			/*
			for (var i = 0; i < array_length(can_hit); i++) {
				can_hit[i] = true;
			}
			*/
		}
		if (y <= -16 && y > -32){
			vsp = 16;
			if (target != -4) && "target" in self {
				//print_debug(target);
				//print_debug(target.y/room_height);
				x = target.x + round(target.hsp * 28 * (target.y/room_height));
			}
		}
	}
	if (collision_circle(x, y, 20, asset_get("par_block"), false, true)){
		with player_id sound_play(sound_get("melonimpact2"));
		create_hitbox( 49, 3, (x),(y) );
		destroyed = true;
		shake_camera( 2, 6 );
	}
	if (umbrellaleaf_bounces > 0) projectile_parry_stun = false;
	if (y > (room_height + 128)){
		instance_destroy();
		exit;
	}
}