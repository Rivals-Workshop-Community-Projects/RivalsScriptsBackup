//hit_player.gml

switch (my_hitboxID.attack){
	case AT_UAIR:
		if (window == 4){
			window = 5
			window_timer = 0
			destroy_hitboxes();
		}	
		break;
	case AT_USTRONG:
		if (my_hitboxID.hbox_num == 2){
			sound_play(asset_get("mfx_ring_bell"));
		}
		break;
	case AT_NSPECIAL:
		shake_camera( 6, 3 )
		sound_play(asset_get("sfx_ell_big_missile_fire"))
		break;
	case AT_DSPECIAL:
		if (my_hitboxID.hbox_num == 3){
			tailsdidstartingdownbhitboxhit = true
		}
		break;
}

//hit_player.gml
if (my_hitboxID.attack == AT_FSPECIAL) {
	
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
		destroy_hitboxes();
		attack_end();
		sound_play(sfx_krtd_grab)
		set_attack(AT_FSPECIAL_2);
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}

if (my_hitboxID.attack == AT_FSPECIAL_2) {
	hit_player_obj.x += 28 * spr_dir
	hit_player_obj.y -= 30
}