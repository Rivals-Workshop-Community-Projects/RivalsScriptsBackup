//hit_player.gml

if (jumpsRune){
	djumps = 0;
}

switch (my_hitboxID.attack){
	case AT_DATTACK:
		//sound_play(asset_get("sfx_blow_weak1"));
		break;
	case AT_UTILT:
		//sound_play(asset_get("sfx_gem_collect"), false, noone, 0.7, 1.1);
		break;
	case AT_UAIR:
		if (window == 4){
			if (my_hitboxID.hbox_num == 2){
				sound_play(sfx_blow_2, false, noone, 0.7, 1);
			}
			window = 5;
			window_timer = 0;
			destroy_hitboxes();
		}	
		break;
	case AT_FSTRONG:
		if (my_hitboxID.hbox_num == 2){
			hit_player_obj.vsp = -7;
			hit_player_obj.hsp = 9 * spr_dir;
		}
		break;
	case AT_USTRONG:
		if (my_hitboxID.hbox_num == 2){
			sound_play(asset_get("mfx_ring_bell"));
			spawn_hit_fx( x + (42 * spr_dir), y - 82, 251);
		}
		break;
	case AT_DSTRONG:
		//sound_play(asset_get("sfx_gem_collect"), false, noone, 0.9, 0.7);
		break;
	case AT_FSPECIAL_AIR:
		my_hitboxID.RemoteRobotThrownWithFspecHitSomeone = true
		spawn_hit_fx( hit_player_obj.x, hit_player_obj.y - 12, 143);
		create_hitbox(AT_DSPECIAL, 3, hit_player_obj.x, hit_player_obj.y - 12);
		//sound_play(sfx_krtd_bomb_explode)
		sound_play(asset_get("sfx_ell_big_missile_fire"))
		shake_camera( 6, 3 )
		break;
	case AT_DSPECIAL:
		//
		if (my_hitboxID.hbox_num == 1){
			var touchexplodHitbox = create_hitbox(AT_DSPECIAL, 3, hit_player_obj.x, hit_player_obj.y - 12);
			touchexplodHitbox.hit_effect = 157;
			spawn_hit_fx( touchexplodHitbox.x, touchexplodHitbox.y - 26, 143);
			if (instance_exists(remoteRobot)){
				remoteRobot.throwHitboxHit = true;
			}
			sound_play(asset_get("sfx_absa_kickhit"), false, noone, 0.95, 1.25);
		}
		break;
}

if (nspecMultihitRune){
	if ((my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) || my_hitboxID.attack == AT_NSPECIAL_AIR) {
		nspecRuneHitPlayerX = hit_player_obj.x;
		nspecRuneHitPlayerY = hit_player_obj.y;
		nspecRuneHit = true;
	}
}

if (my_hitboxID.attack == AT_NAIR
	|| my_hitboxID.attack == AT_FAIR
	|| my_hitboxID.attack == AT_UAIR
	|| my_hitboxID.attack == AT_DAIR
	|| my_hitboxID.attack == AT_BAIR){
	aerialattack = 0;
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
		sound_play(sfx_krtd_grab);
		attack = AT_FSPECIAL_2;
		window = 1;
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
}

if (my_hitboxID.attack == AT_FSPECIAL_2) {
	hit_player_obj.x += 28 * spr_dir
	hit_player_obj.y -= 30
}