// hit_player.gml

/*
// Template
if (my_hitboxID.attack == AT_WHATEVER){
	if (my_hitboxID.hbox_num == theNumberOfTheHitboxIdk){
		// do stuff here
	}
}
*/


// Down Tilt
if (my_hitboxID.attack == AT_DTILT){
	window = 3;
	window_timer = 0;
	
	destroy_hitboxes();
}

// Down Air
if (my_hitboxID.attack == AT_DAIR){
	if (my_hitboxID.hbox_num == 1){
		dair_grabbed_player = hit_player_obj;
		
		sound_stop(asset_get("sfx_swipe_heavy2"));
		
		sound_play(sfx_ssbu_grab, false, noone, 1, 1);
		destroy_hitboxes();
		vsp = -8;
		old_vsp = -8;
	}
	
	// spike
	if (my_hitboxID.hbox_num == 4){
		dair_grabbed_player = noone;
	}
}

// Neutral Special - SD Card
if (my_hitboxID.attack == AT_NSPECIAL){
	// make sd card 8 stun for longer at higher percents
	if (my_hitboxID.hbox_num = 8){
		var sdcard8_hit_hitstop = round( get_player_damage(hit_player_obj.player)*0.2 );
		sdcard8_hit_hitstop = clamp(sdcard8_hit_hitstop, 0, 50);
		
		// add it to hit player
		hit_player_obj.hitstop += sdcard8_hit_hitstop;
		
		// :torl:
		sound_play(asset_get("mfx_ring_bell"), false, noone, 0.9, 1.05);
		sound_play(asset_get("mfx_ring_bell2"), false, noone, 0.65, 1.85);
	}
	
	sound_play(sfx_ssbu_megaman_fspec_3, false, noone, 0.5 + (my_hitboxID.hbox_num / 20), 0.5 + (my_hitboxID.hbox_num / 20))
}


// Up Special - USB Cable
if (my_hitboxID.attack == AT_USPECIAL){
	if (my_hitboxID.hbox_num <= 6){
	
		// check if hb group is 1 (mainly so air uspec isn't fully a grab because i fear that would be cheating)
		if (my_hitboxID.hbox_group == 1){
			uspecial_grabbed_player = hit_player_obj;
			
			if (my_hitboxID.hbox_num == 1){
				set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);
				set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 1);
				set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 1);
				set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 1);
			}
			
			sound_play(sfx_ssbu_byleth_uspecial_grab, false, noone, 1, 1);
			// spawn_hit_fx( hit_player_obj.x , hit_player_obj.y - 20, 204 );
		}
		
	}
	
	if (my_hitboxID.hbox_num >= 7){
		old_vsp = -6;
		old_hsp = 5.25 * spr_dir;
	}
}