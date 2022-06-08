if attack == AT_NSPECIAL {
	//player_id.attack_cooldown[AT_NSPECIAL] = 90
}

//MULTI HITTING PROJECITILES
if attack == AT_NSPECIAL && hbox_num == 1{
	player_id.smoke_counter+=1;						//COUNTS NUMBER OF SMOKES
	vsp = sin(hitbox_timer/10)*0.5; 
	//ANIMATION
	if hitbox_timer >6 {
		if image_index == 4 {
			image_index=0;
		}
	}
	if hitbox_timer <=30{
		transcendent=true;
	} else{
		transcendent = false;
	}
	//proj_angle = 90*smoke_num;

	if state == 1{							//SMOKE IDLE
		//MULTIHIT
		refresh_time = 20;
		if (hitbox_timer % refresh_time == 0) for ( var i =1; i<20; i++) {
			can_hit[i] = 1;
		}

		

		//PLAYER DETECTION USPECIAL
		with oPlayer {
			if url == other.player_url{
				if other.attack == AT_NSPECIAL && other.hbox_num == 1 {
					if attack == AT_USPECIAL  && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window == 1 && special_down{
						if abs(x - (other.x ))<=52{
							if abs(other.y - (y - 32))<=52{
								if absorb == 0 {absorb = 2; }
								other.destroyed = true;								
							}
						}
					}
				} 
			}
		}


		//NAIR DETECTION
		if ( player_id.attack == AT_NAIR) && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.window == 2 {			//WILL O WISP
			if abs(x - (player_id.x ))<=72{
				if abs(y - (player_id.y - 36))<=72{
					state = 2;
					sound_stop(asset_get("sfx_forsburn_reappear"));
					sound_play(asset_get("sfx_forsburn_reappear"));
					player_id.Fcancel = 4;
					sound_stop(sound_get("jingle"));
					sound_play(sound_get("jingle"));
				}
			}
		}

		//TAUNT DETECTION
		if player_id.attack == AT_TAUNT  && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.window == 2 {			//EXPLOTION
			if abs(x - (player_id.x ))<=112{
				if abs(y - (player_id.y - 32))<=112{
					state = 2;
					sound_stop(asset_get("sfx_forsburn_reappear"));
					sound_play(asset_get("sfx_forsburn_reappear"));
					player_id.Fcancel = 4;
					sound_stop(sound_get("jingle"));
					sound_play(sound_get("jingle"));
				}
			}
		}

		//FSPECIAL DETECTION
		if player_id.attack == AT_FSPECIAL  && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.window == 2 {			//FLAMETHROWER
			if abs(x - (player_id.x + 50*player_id.spr_dir))<=68{
				if abs(y - (player_id.y - 37))<=68{
					state = 3;
					sound_stop(asset_get("sfx_forsburn_reappear"));
					sound_play(asset_get("sfx_forsburn_reappear"));
					player_id.Fcancel = 4;
					sound_stop(sound_get("jingle"));
					sound_play(sound_get("jingle"));
				}
			}
		}

		//DSTRONG DETECTION
		if player_id.attack == AT_DSTRONG  && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.window == 3 {			//FIRE BLAST
			if abs(x - (player_id.x))<=100{
				if abs(y - (player_id.y - 16))<=56{
					state = 3;
					sound_stop(asset_get("sfx_forsburn_reappear"));
					sound_play(asset_get("sfx_forsburn_reappear"));
					player_id.Fcancel = 4;
					sound_stop(sound_get("jingle"));
					sound_play(sound_get("jingle"));
				}
			}
		}

		//DSTRONG 2 DETECTION
		if player_id.attack == AT_DSTRONG_2  && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.window == 3 {			//FIRE BLAST
			if abs(x - (player_id.x))<=56{
				if abs(y - (player_id.y - 8))<=70{
					state = 3;
					sound_stop(asset_get("sfx_forsburn_reappear"));
					sound_play(asset_get("sfx_forsburn_reappear"));
					player_id.Fcancel = 4;
					sound_stop(sound_get("jingle"));
					sound_play(sound_get("jingle"));
				}
			}
		}

		//DSPECIAL DETECTION
		if player_id.attack == AT_DSPECIAL  && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.window == 4 {			//EXPLOTION
			if abs(x - (player_id.x ))<=128{
				if abs(y - (player_id.y - 32))<=128{
					state = 4;
					player_id.hitstop = 2;
					player_id.hitpause = true;
					sound_stop(asset_get("sfx_forsburn_reappear"));
					sound_play(asset_get("sfx_forsburn_reappear"));
					//player_id.Fcancel = 4;
					//sound_play(sound_get("jingle"));
				}
			}
		}
		//OTHER SMOKE EXPLOTIONS
		with pHitBox {
			if abs(x - (other.x ))<=136{
				if abs(y - (other.y - 32))<=136{
					if player_id.url == other.player_url && attack == AT_NSPECIAL && hbox_num != 1 && type == 2  {
						other.state = hbox_num;
						sound_stop(asset_get("sfx_forsburn_reappear"));
						sound_play(asset_get("sfx_forsburn_reappear"));
					}
				}
			}
		}


		/*			//No funciona :'v
		//Preventing overlap
		with pHitBox{				//From the perspective of the hitbox
			if  type == 2 && attack == AT_NSPECIAL && hbox_num==1 && other.player_url == player_id.url  {
				if abs(x-other.x)<=35 && abs(y - other.y)<=35{
					hsp = 1.5*spr_dir;
				} else {
					hsp = 0;		
				}
			} 
		}
		*/

		//NUMBER OF SMOKES LIMIT

		if player_id.smoke_counter ==7{
			if smoke_num ==1 {
				destroyed=true;
			}
		}

		//DESTROYING
		if was_parried ||  player_id.was_parried ||  player_id.state = PS_RESPAWN || (hitbox_timer == length -1) {
			destroyed = true;
		}

	} else{																//SMOKE DETONATE
		transcendent=true;
		length = 540;													//extra length
		sprite_index = sprite_get("nspecial_smoke_detonate");
		boom_timer++;
		if boom_timer == 14{
			sound_stop(asset_get("sfx_ell_uspecial_explode"));
			sound_play(asset_get("sfx_ell_uspecial_explode"));
			if !was_parried  {spawn_hit_fx( x, y, 143 );}
			create_hitbox( AT_NSPECIAL, state, x , y );
			destroy_fx = 1;
			destroyed = true;
		}
	}

	
}