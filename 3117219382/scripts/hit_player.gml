//hit_player.gml
//this script runs every time you hit someone with a hitbox
//NOTE: to check for hitbox variables use [my_hitboxID] like the examples below, otherwise don't include it in you statements

if (my_hitboxID.orig_player_id != self) exit; //this line makes it so only hitboxes that belong to tester work with hit_player

switch (my_hitboxID.attack)
{
  case AT_JAB:
  	// print("WOW")
		if(my_hitboxID.hbox_num == 3 or my_hitboxID.hbox_num == 4){
			if(coins_in_bag < max_coins_in_bag){
				coins_in_bag++;
				coin_fade_in_timer = coin_fade_in_time;
				var hfx = spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, coin_gain_fx_hfx);
				hfx.depth = depth-1
				sound_play(asset_get("mfx_star"))
			}
		}
	break;
	case AT_FTILT:
		sound_play(asset_get("mfx_mm_coin_all"), false, noone, 1, 1);
	break;
	case AT_DTILT:
		if(my_hitboxID.hbox_num == 2) sound_play(asset_get("mfx_mm_coin_all"), false, noone, 1, 1);
	break;
	case AT_DAIR:
		if(my_hitboxID.hbox_num == 1) {
			sound_play(asset_get("sfx_ori_spirit_flame_hit_1"), false, noone, 1, 1);
		}
	break;
	case AT_FSTRONG:
		sound_play(asset_get("sfx_zetter_shine_charged"), false, noone, 1, 1);
	break;
	case AT_DSTRONG:
		sound_play(asset_get("sfx_clairen_fspecial_dash"), false, noone, 1, 1)
	break;
	case AT_USTRONG:
		if(my_hitboxID.hbox_num <= 3) sound_play(asset_get("sfx_ori_spirit_flame_hit_1"), false, noone, 1, 1);
	break;
	case AT_FSPECIAL:
		if(my_hitboxID.hbox_num == 1) hit_player_obj.trail_kill_effect_source = self;
	break;
	case AT_USPECIAL:
		if(my_hitboxID.hbox_num >= 2) sound_play(asset_get("sfx_ori_spirit_flame_hit_1"), false, noone, 1, 1);
		hit_player_obj.trail_kill_effect_source = self;
	break;
	case AT_DSPECIAL:
		//Before grabbing the opponent, first make sure that:
		//-The player is in an attack animation
		//-The opponent is in hitstun
		//-The player did not get parried, and
		//-The opponent is not a Forsburn clone.
		if(my_hitboxID.hbox_num == 1){
			if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
			  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
		    	  && was_parried == false
			  && hit_player_obj.clone == false) {
				
				//transition to the 'throw' part of the attack.
				attack_end();
		
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
		if(my_hitboxID.hbox_num == 2){
			sound_play(asset_get("sfx_clairen_fspecial_dash"), false, noone, 0.9, 1.5)
			// sound_play(asset_get("sfx_bird_sidespecial_start"), false, noone, 0.2, 1)
		}
		if(my_hitboxID.hbox_num == 3){
			hit_player_obj.trail_kill_effect_source = self;	
			sound_play(asset_get("sfx_zetter_shine_charged"), false, noone, 1, 1)
		}
	break;
}

if(my_hitboxID.attack == coin_atk){
	// print("WOW")
	if(player == my_hitboxID.player){
		lvl++;
	  lvl = clamp(lvl, 1, max_lvl);
	  fspecial_hud_timer = fspecial_hud_time;
	}
  if(my_hitboxID.bounces < my_hitboxID.max_bounces){
  	// print("HMM<<<")
  	spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, my_hitboxID.hit_effect)
  }

  with(my_hitboxID){
  	if(bounces > 0){
		  hsp = spr_dir*2
		  // vsp = -13
		  grav = 0.35
		  hitbox_timer = 0
		  bounces--;
		  bounced = true;
		  bounced_hit_timer = 0
		  if(instance_exists(other.hit_player_obj)){

		  	var dest_y = -150
		  	var s = other.hit_player_obj.y + dest_y - other.hit_player_obj.char_height;
				var so = y;
				var v_final = 0;
				
				vsp = sqrt( abs( (v_final*v_final) + (2 * grav * abs(s - so)) )) * sign(s - so) ;
		  	// print(vsp)
		  	// vsp += ((other.hit_player_obj.y-y)/other.hit_player_obj.char_height)*3
		  	
		  	bounced_player_id = other.hit_player_obj;
		  }
	  }else{
	  	hsp = spr_dir*5
	  	vsp = -7
	  }
  }
}

if(my_hitboxID.type == 2 and my_hitboxID.pseudo_melee_hitbox){
	my_hitboxID.in_hitpause = true;

  old_hsp = hsp;
  old_vsp = vsp;
  hitstop = hit_player_obj.hitstop;
  hitstop_full = hit_player_obj.hitstop_full;
  
  hitpause = true;
}


// if (my_hitboxID.attack == AT_USTRONG and my_hitboxID.hbox_num < 4) {
// sound_play(asset_get("sfx_obstacle_hit"), false, noone, 1, 1)
// }