//hit_player - called when one of your hitboxes hits a player

if (my_hitboxID.attack == AT_DTILT) {
	if my_hitboxID.hbox_num == 2 {
		my_hitboxID.hittimer = 15;
		my_hitboxID.hitAgain = true;
		
		if my_hitboxID.hitAgain = true {	
			spawn_hit_fx(my_hitboxID.x+2*spr_dir,my_hitboxID.y, 301);
		}
	}
}
if (my_hitboxID.attack == AT_UAIR) {
	if my_hitboxID.hbox_num == 1 {
		sound_play(asset_get("sfx_blow_medium2"));
	}
}

if (my_hitboxID.attack == AT_DAIR) {
	if my_hitboxID.hbox_num == 1 {
		spawn_hit_fx(my_hitboxID.x+2*spr_dir,my_hitboxID.y, cementspill);
	}
}

if !(my_hitboxID.attack == AT_FTILT && 3 > my_hitboxID.hbox_num || 
	my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 1 || 
	my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 1) {
	hit_player_obj.sdi_mult = 1;
}

if (my_hitboxID.attack == AT_NSPECIAL) {
	if my_hitboxID.hbox_num != 5 {
		if my_hitboxID.hbox_num == 4 {
			my_hitboxID.hitbox_timer = my_hitboxID.length-7;
		} else { my_hitboxID.hitbox_timer = my_hitboxID.length-30; }
		my_hitboxID.has_hit = true;
		my_hitboxID.hsp = 0;
		my_hitboxID.vsp = 0;
	}
}

if (my_hitboxID.attack == AT_FSPECIAL) {	
	if my_hitboxID.hbox_num == 12 {
		spawn_hit_fx(hit_player_obj.x-20*hit_player_obj.spr_dir, hit_player_obj.y+6, stung2);
		spawn_hit_fx(hit_player_obj.x+10*hit_player_obj.spr_dir, hit_player_obj.y-50, stung2);
		spawn_hit_fx(hit_player_obj.x+24*hit_player_obj.spr_dir, hit_player_obj.y-40, stung);
		spawn_hit_fx(hit_player_obj.x-10*hit_player_obj.spr_dir, hit_player_obj.y+10, stung);
		spawn_hit_fx(hit_player_obj.x-20*hit_player_obj.spr_dir, hit_player_obj.y-70, stung);
	}
	if my_hitboxID.hbox_num == 13 {
		spawn_hit_fx(hit_player_obj.x-20*hit_player_obj.spr_dir, hit_player_obj.y+6, 109);
		spawn_hit_fx(hit_player_obj.x+10*hit_player_obj.spr_dir, hit_player_obj.y-50, stung3);
		spawn_hit_fx(hit_player_obj.x+24*hit_player_obj.spr_dir, hit_player_obj.y-40, 109);
		spawn_hit_fx(hit_player_obj.x-10*hit_player_obj.spr_dir, hit_player_obj.y+10, stung4);
		spawn_hit_fx(hit_player_obj.x-20*hit_player_obj.spr_dir, hit_player_obj.y-70, stung4);
	}
}


if (my_hitboxID.attack == AT_DSPECIAL) {	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		//nah we staying here
			window = 5;
			window_timer = 0;

		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
	if (real(grabbed_player_obj.url) > 20){
		dspecial_icon = get_char_info(grabbed_player_obj.player, INFO_ICON);
	} else {
		basecast_hit = true;
		dspecial_icon = sprite_get("basecast_icons");
		dspecial_icon_bc = hit_player_obj.url-2;
	}
}