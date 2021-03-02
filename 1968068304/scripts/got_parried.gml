//got_parried.gml

//ignore everything if the attack parried was a reflected attack.
if (my_hitboxID.player != my_hitboxID.orig_player) exit;


if (my_hitboxID.type == 1 && (my_hitboxID.attack != AT_JAB || window >= 8) ) {
	//if this attack was a melee attack, make epinel's 'crumbling' platforms break.

	with (obj_article_platform) {
		if (player_id != other.id || draw_hp > 1) continue;
		
		hp = min(hp, 0);
		draw_hp = min(draw_hp, hp);
		time_until_crumble = min(time_until_crumble, 0);
		sound_play(asset_get("sfx_kragg_roll_end"));
		break_when_not_stood_on = true;
	}
	
	//if this attack was a melee attack, destroy inertia pillar articles.
	with (obj_article3) {
		if (player_id != other.id) continue;
		lifetime = 0;
		image_alpha = min(0.9, image_alpha);
		max_xscale *= 0.9;
		image_xscale = max_xscale;
	}
	
	//if epinel is standing on one of his platforms, slow that platform's movement speed.
	if (!free && instance_exists(epinel_other_standing_on_platform_id)) {
		with (epinel_other_standing_on_platform_id) {
			hsp = clamp(hsp, -1, 1);
		}
	}
	
	//finally, reset epinel's heavy state
	epinel_heavy_state = 0;
}


switch (my_hitboxID.attack) {


	case AT_DSPECIAL:
		//projectile 6 can be parried. extend length, remove gravity.
		switch (my_hitboxID.hbox_num) {
			//projectile 6 can be reflected. extend length, remove gravity.
			case 6:
				my_hitboxID.length = 60;
				my_hitboxID.grav = 0;
				//my_hitboxID.vsp = -12;
				my_hitboxID.hsp = 0;
				my_hitboxID.free = true;
				my_hitboxID.walls = 0; //go through walls
				my_hitboxID.grounds = 0; //go through ground
				my_hitboxID.through_platforms = 999;
			break;
			
			//if projectiles 3, 4 and 5 are parried before Epinel creates his platform, skip the attack entirely.
			case 3:
			case 4:
			case 5:
				was_parried = true;
				parry_lag = 40; //normal parry stun
			    if (window < 5) {
					window = get_attack_value( AT_DSPECIAL, AG_NUM_WINDOWS ) - 2;
					window_timer = 1;
				}
			break;
		}

	break;
	
	case AT_DSPECIAL_AIR:
		//cancel to window 15 if this move is parried early.
		if (my_hitboxID.hbox_num <= 3) {
			window = 15;
			window_timer = 0;
		}
	break;
	
	case AT_FSPECIAL: //clamp speed on parry.
		old_hsp = clamp(old_hsp, -4, 4);
		hsp = clamp(hsp, -4, 4);
	break;
	
	case AT_FSPECIAL_AIR:
		old_hsp = clamp(old_hsp, -4, 4);
		hsp = clamp(hsp, -4, 4);
		old_vsp = clamp(old_vsp, -4, 4);
		vsp = clamp(vsp, -4, 4);
	break;

}

