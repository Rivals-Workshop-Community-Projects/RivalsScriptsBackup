//hit_player.gml

//=========================================================
// ADJUST PLAYER STATS
//=========================================================

//----------------------------
// LIFE damage
//----------------------------
if ("sna_dmg_life" in my_hitboxID) && ("sna_life" in hit_player_obj) {
	var _dmg_life = my_hitboxID.sna_dmg_life;
	
	var _sfx_ko_bullet = my_hitboxID.sna_sfx_deplete;
	var _force_deplete = my_hitboxID.sna_force_deplete;
	
	with (hit_player_obj) {
		//if (sna_life) > 100 sna_life = 100;										// If the LIFE gauge is somehow over 100, reset it to 100. (Probably unnecessary.)
		
		if (!sna_life_depleted || _force_deplete )									// If the LIFE gauge is NOT depleted, or the hitbox is set to force deplete...
			sna_life = clamp(sna_life - _dmg_life * knockback_adj, 0, 100);			// Apply LIFE damage. Scales based on player weight.
		
		// On Hit
		if ("sna_ui_status_state" in self && _dmg_life > 0) {						// If the damage dealt was greater than 0...
			// Play KO sounds.
			if (sna_life == 0 && !sna_life_depleted && _sfx_ko_bullet != noone)
				sound_play(_sfx_ko_bullet);						// If depleting the LIFE gauge to 0, play the bullet KO sound.
			
			// Display Status
			sna_ui_status_state = 1;												// Display the status of the hit player.
			sna_ui_status_timer = 0;												// Reset the status UI state timer.
		}
		
	}
}

//----------------------------
// PSYCHE damage
//----------------------------
if ("sna_dmg_psyche" in my_hitboxID) && ("sna_psyche" in hit_player_obj) {
	var _dmg_psyche = my_hitboxID.sna_dmg_psyche;
	var _dmg_psyche_ko_type = my_hitboxID.sna_dmg_psyche_ko_type;
	
	var _sfx_ko_tranq = my_hitboxID.sna_sfx_deplete;
	var _force_deplete = my_hitboxID.sna_force_deplete;
	
	with (hit_player_obj) {
		//if (sna_psyche) > 100 sna_psyche = 100;									// If the psyche gauge is somehow over 100, reset it to 100. (Probably unnecessary.)
		
		if (!sna_psyche_depleted || _force_deplete)									// If the PSYCHE gauge is NOT depleted, or the hitbox is set to force deplete...
			sna_psyche = clamp(sna_psyche - _dmg_psyche * knockback_adj, 0, 100);	// Apply PSYCHE damage. Scales based on player weight.
		
		if (_dmg_psyche_ko_type != -1)												// If this hitbox sets the knockout type...
			sna_psyche_ko_type = _dmg_psyche_ko_type;								// Set the opponent to either be stunned, or put to sleep when knocked out.
		
		// On Hit
		if ("sna_ui_status_state" in self && _dmg_psyche > 0) {						// If the damage dealt was greater than 0...
			// Play KO sounds.
			if (sna_psyche == 0 && !sna_psyche_depleted && _sfx_ko_tranq != noone)
				sound_play(_sfx_ko_tranq);											// If depleting the PSYCHE gauge to 0, play the tranq KO sound.
			
			// Display Status
			sna_ui_status_state = 1;												// Display the status of the hit player.
			sna_ui_status_timer = 0;												// Reset the status UI state timer.
		}
		
	}
}


//=========================================================
// CUSTOM HIT EFFECTS
//=========================================================

switch (my_hitboxID.attack) {
	
	case AT_FSPECIAL:
		
		//----------------------------
		// Bullets
		//----------------------------
		if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3) {				// Get bullet hitbox ID
			
			// Disable Shockwave
			hit_player_obj.should_make_shockwave = false;							// Disable purple shockwave effect.
			
			
			if (!my_hitboxID.in_hitpause) {										// If NOT in hitpause...
				
				// Hit sound effects
				
				var _rand = random_func(0, 3, true);
				var _rand_sfx = noone;
				//var _ko_sfx = sound_get("sfx_hit_bullet_ko_lyr");
	
			    switch (_rand){
			        case 0:
			        	_rand_sfx = sound_get("sfx_hit_bullet_01");
			        break;
			        case 1:
			        	_rand_sfx = sound_get("sfx_hit_bullet_02");
			        break;
			        case 2:
			        	_rand_sfx = sound_get("sfx_hit_bullet_03");
			        break;
			    }
				
				with (hit_player_obj) {
					
					sound_play(_rand_sfx);													// Play bullet hit sound.
					
				}
			
			}
			
		}
		
		//----------------------------
		// Anesthetic Rounds
		//----------------------------
		else if (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 4) {					// Get tranq hitbox IDs
			
			if (!my_hitboxID.in_hitpause) {
				
				// Hit sound effects
				
				var _rand = random_func(0, 3, true);
				var _rand_sfx = noone;
				//var _ko_sfx = sound_get("sfx_hit_tranq_ko_lyr");
	
			    switch (_rand){
			        case 0:
			        	_rand_sfx = sound_get("sfx_hit_tranq_01");
			        break;
			        case 1:
			        	_rand_sfx = sound_get("sfx_hit_tranq_02");
			        break;
			        case 2:
			        	_rand_sfx = sound_get("sfx_hit_tranq_03");
			        break;
			    }
				
				with (hit_player_obj) {
					
					sound_play(_rand_sfx);													// Play tranq hit sound.
					
				}
				
			}
			
		}
		
	break;
	
	case AT_NSPECIAL:
		
		//---------------------------------
		// Throwable Player Bounce Sound
		//---------------------------------
		if (my_hitboxID.hbox_num == 2) {										// Get the non-hitstun bounce hitbox.
			
			if (get_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK) > 0) break;	// Don't run this if the hitbox has knockback.
			
			if (!my_hitboxID.in_hitpause) {	
				
				var _hit_sfx = get_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX);		// Get the hit sound effect.
				
				with (hit_player_obj) {
					sound_stop(_hit_sfx);											// If the sound is already playing, stop it to avoid it playing too many times.
					sound_play(_hit_sfx);											// Play throwable hit sound.
				}
				
			}
			
		}
		
		
	break;
	
	case AT_NTHROW:
		
		//---------------------------------
		// Grab Hitbox
		//---------------------------------
		if (my_hitboxID.attack == AT_NTHROW && my_hitboxID.hbox_num == 1) {		// If the hitbox is the grab hitbox...
			
			if (!instance_exists(sna_grabbed_playerid)) {								// If we do NOT have a grabbed player...
			
				// Grab the hit Player
				if !(hit_player_obj.sna_grabbed_cooldown > 0 && !hit_player_obj.sna_psyche_depleted) {	// If the grabbed player is NOT in a grab cooldown (unless the PSYCHE gauge is depleted)...
				
					sna_grabbed_playerid = hit_player_obj;								// Set the grabbed player to the hit player.
					
					if (right_down - left_down == spr_dir) {							// If holding forward...
						sound_play(sound_get("sfx_at_grab"));							// Play the grab sound effect.
						spr_dir *= -1;													// Flip the player.
						window = 16;													// Go to FThrow antic window.
						window_timer = 0;
					}
					else {																// If NOT holding forward...
						window = 3;														// Go to grab transition window.
						window_timer = 0;
					}
					
				}
			
			}
			
		}
		//---------------------------------
		// CQC Slam
		//---------------------------------
		else if (my_hitboxID.attack == AT_NTHROW) {								// If the hitbox is a slam hitbox...
			
			// Move and Unlink the Grabbed Player
			if (hit_player_obj == sna_grabbed_playerid)	{						// If the hitbox hits the grabbed player...
				hit_player_obj.x = x + (sna_grabbed_x + 20) * spr_dir;			// Move the grabbed player to the desired end position.
				hit_player_obj.y = y + sna_grabbed_y;
				sna_grabbed_playerid = noone;									// Unlink the grabbed player.
			}
			
			
			//---------------------------------
			// DROP PICKUPS
			//---------------------------------
			var _play_itemdrop_sfx = false;
			var _cur_firearm = (inv_firearm == EQ_EMPTY) ? inv_firearm_prev : inv_firearm; // Get the currently equipped (or last equipped if unarmed) firearm.
			var _dict_firearm = dict_equipment[_cur_firearm];
			var _dict_throwable = dict_equipment[inv_throwable];
			var _dict_plantable = dict_equipment[inv_plantable];
			
			var _full_on_firearms = ((_dict_firearm.ammo_total == _dict_firearm.ammo_total_max) &&
				(_dict_firearm.num_suppressors >= 3 || !_dict_firearm.uses_suppressors) || _cur_firearm == EQ_EMPTY);
			var _full_on_throwables = ((_dict_throwable.ammo_total == _dict_throwable.ammo_total_max) ||
				inv_throwable == EQ_MAGAZINE || inv_throwable == EQ_EMPTY);
			var _full_on_plantables = ((_dict_plantable.ammo_total == _dict_plantable.ammo_total_max) ||
				inv_plantable == EQ_EMPTY);
			
			var _full_on_everything = (_full_on_firearms && _full_on_throwables && _full_on_plantables);
			
			// Set the queue based on what you're full on.
			if (_full_on_everything) { // Bonus Items
				sna_pkupdrop_queue = 3;											// If full on everything, go to the bonus items queue.
			}
			else if (sna_pkupdrop_queue == 3) {									// If NOT full on everyhing, go to the start of the queue.
				sna_pkupdrop_queue = 0;
			}
			
			if (sna_pkupdrop_queue == 0) { // Firearms
				if (_full_on_firearms)
					sna_pkupdrop_queue++;
			}
			if (sna_pkupdrop_queue == 1) { // Throwables
				if (_full_on_throwables)
					sna_pkupdrop_queue++;
			}
			if (sna_pkupdrop_queue == 2) { // Plantables
				if (_full_on_plantables)
					sna_pkupdrop_queue = 0;
			}
			
			// Queue 0: Spawn Firearm Ammo / Rations
			if (sna_pkupdrop_queue == 0) {
				switch(_cur_firearm) {
					
					case 2: // M9
						if (dict_equipment[_cur_firearm].ammo_total < dict_equipment[_cur_firearm].ammo_total_max) {	// If this equipment is NOT full on ammo...
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, 0, -5, ENT_PKUP_M9_AMMO);				// Spawn ammo.
							_play_itemdrop_sfx = true;
						}
						else if (dict_equipment[_cur_firearm].num_suppressors < 3) {									// If this firearm has less than 3 suppressors...
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, 0, -5, ENT_PKUP_M9_SUPP);				// Spawn a suppressor.
							_play_itemdrop_sfx = true;
						}
					break;
					
					case 3: // SOCOM
						if (dict_equipment[_cur_firearm].ammo_total < dict_equipment[_cur_firearm].ammo_total_max) {	// If this equipment is NOT full on ammo...
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, 0, -5, ENT_PKUP_SOCOM_AMMO);				// Spawn ammo.
							_play_itemdrop_sfx = true;
						}
						else if (dict_equipment[_cur_firearm].num_suppressors < 3) {										// If this firearm has less than 3 suppressors...
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, 0, -5, ENT_PKUP_SOCOM_SUPP);			// Spawn a suppressor.
							_play_itemdrop_sfx = true;
						}
					break;
					
					case 4: // Mosin
						if (dict_equipment[_cur_firearm].ammo_total < dict_equipment[_cur_firearm].ammo_total_max) {	// If this equipment is NOT full on ammo...
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, 0, -5, ENT_PKUP_MOSIN_AMMO);				// Spawn ammo.
							_play_itemdrop_sfx = true;
						}
					break;
					
					case 5: // M4
						if (dict_equipment[_cur_firearm].ammo_total < dict_equipment[_cur_firearm].ammo_total_max) {	// If this equipment is NOT full on ammo...
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, 0, -5, ENT_PKUP_M4_AMMO);				// Spawn ammo.
							_play_itemdrop_sfx = true;
						}
					break;
					
				}
			}
			
			// Queue 1: Spawn Grenades
			else if (sna_pkupdrop_queue == 1) {
				switch(inv_throwable) {
					
					case 9: // Smoke Grenade
						if (dict_equipment[inv_throwable].ammo_total < dict_equipment[inv_throwable].ammo_total_max) {	// If this equipment is NOT full on ammo...
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, 0, -5, ENT_PKUP_SMOKE_GRENADE);		// Spawn ammo
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, 1, -5, ENT_PKUP_SMOKE_GRENADE);
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, -1, -5, ENT_PKUP_SMOKE_GRENADE);
							_play_itemdrop_sfx = true;
						}
					break;
					
					case 10: // Stun Grenade
						if (dict_equipment[inv_throwable].ammo_total < dict_equipment[inv_throwable].ammo_total_max) {	// If this equipment is NOT full on ammo...
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, 0, -5, ENT_PKUP_STUN_GRENADE);
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, 1, -5, ENT_PKUP_STUN_GRENADE);
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, -1, -5, ENT_PKUP_STUN_GRENADE);
							_play_itemdrop_sfx = true;
						}
					break;
					
					case 11: // Grenade
						if (dict_equipment[inv_throwable].ammo_total < dict_equipment[inv_throwable].ammo_total_max) {	// If this equipment is NOT full on ammo...
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, 0, -5, ENT_PKUP_GRENADE);
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, 1, -5, ENT_PKUP_GRENADE);
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, -1, -5, ENT_PKUP_GRENADE);
							_play_itemdrop_sfx = true;
						}
					break;
					
				}
			}
			
			// Queue 2: Spawn Plantables
			else if (sna_pkupdrop_queue == 2) {
				switch(inv_plantable) {
					case 12: // C4
						if (dict_equipment[inv_plantable].ammo_total < dict_equipment[inv_plantable].ammo_total_max) {	// If this equipment is NOT full on ammo...
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, 0, -5, ENT_PKUP_C4);
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, -1 * spr_dir, -5, ENT_PKUP_C4);
							_play_itemdrop_sfx = true;
						}
					break;
					
					case 13: // Claymore
						if (dict_equipment[inv_plantable].ammo_total < dict_equipment[inv_plantable].ammo_total_max) {	// If this equipment is NOT full on ammo...
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, 0, -5, ENT_PKUP_CLAYMORE);
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, -1 * spr_dir, -5, ENT_PKUP_CLAYMORE);
							_play_itemdrop_sfx = true;
						}
					break;
					
					/*case 14: // Book
						if (dict_equipment[inv_plantable].ammo_total < dict_equipment[inv_plantable].ammo_total_max) {	// If this equipment is NOT full on ammo...
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, 0, -5, ENT_PKUP_BOOK);
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, -1 * spr_dir, -5, ENT_PKUP_BOOK);
							_play_itemdrop_sfx = true;
						}
					break;*/
					
					case 15: // Satchel
						if (dict_equipment[inv_plantable].ammo_total < dict_equipment[inv_plantable].ammo_total_max) {	// If this equipment is NOT full on ammo...
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, 0, -5, ENT_PKUP_SATCHEL);
							pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, -1 * spr_dir, -5, ENT_PKUP_SATCHEL);
							_play_itemdrop_sfx = true;
						}
					break;
				}
			}
			
			// Queue 3: Spawn Bonus Items
			else if (sna_pkupdrop_queue == 3) {
				if (dict_equipment[EQ_RATION].ammo_total < dict_equipment[EQ_RATION].ammo_total_max) {			// If rations are NOT maxed out...
					pickup_spawn(hit_player_obj.x, hit_player_obj.y - 4, 0, -5, ENT_PKUP_RATION);				// Spawn a ration.
					_play_itemdrop_sfx = true;
				}
			}
			
			// Advance / Loop the Queue
			if (sna_pkupdrop_queue != 3) {										// If not in the bonus items queue...
				sna_pkupdrop_queue++;											// Advance the queue
				if (sna_pkupdrop_queue > 2) sna_pkupdrop_queue = 0;				// Loop the queue
				
				// Skip queues with full ammo
				if (sna_pkupdrop_queue == 0) { // Firearms
					if (_full_on_firearms)
						sna_pkupdrop_queue++;
				}
				if (sna_pkupdrop_queue == 1) { // Throwables
					if (_full_on_throwables)
						sna_pkupdrop_queue++;
				}
				if (sna_pkupdrop_queue == 2) { // Plantables
					if (_full_on_plantables)
						sna_pkupdrop_queue = 0;
				}
				
			}
			
			// Play the spawn sound effect.
			if (_play_itemdrop_sfx) sound_play(sound_get("ui_item_drop"));		// Play the item drop sound effect, if an item was dropped.
			
		}
		
		
	break;
		
}


//=========================================================
// CUSTOM KNOCKBACK FOR LETHAL HITS
//=========================================================

if (hit_player_obj.sna_life_depleted) {											// If the opponent's LIFE gauge is depleted...
	
	// Set the new knockback based on the current hitbox.
	switch(my_hitboxID.attack){
		
		// Normals
		/*case AT_JAB:
			if (my_hitboxID.hbox_num == 3) {
				apply_custom_knockback(8, 0.4);
				//sound_stop(sound_get("sfx_hit_punch_ko"));
				//sound_play(sound_get("sfx_hit_kick"));
				sound_play(sound_get("sfx_hit_punch_ko_lyr"));
				//sound_play(sound_get("sfx_hit_cqc_ko"));
			}
		break;
		case AT_FTILT:
			if (my_hitboxID.hbox_num == 2) {
				apply_custom_knockback(8, 0.65);
				sound_stop(sound_get("sfx_hit_punch_ko"));
				sound_play(sound_get("sfx_hit_kick"));
				sound_play(sound_get("sfx_hit_cqc_ko"));
			}
		break;
		case AT_DTILT:
			apply_custom_knockback(7, 0.8);
			sound_play(sound_get("sfx_hit_punch_ko"));
			sound_play(sound_get("sfx_hit_punch_ko_lyr"));
		break;
		case AT_UTILT:
			apply_custom_knockback(12, 0.9);
			sound_stop(sound_get("sfx_hit_punch_ko"));
			sound_play(sound_get("sfx_hit_kick"));
			sound_play(sound_get("sfx_hit_cqc_ko"));
		break;
		case AT_FSTRONG:
			apply_custom_knockback(12, 1.2);
			sound_stop(sound_get("sfx_hit_punch_ko"));
			sound_play(sound_get("sfx_hit_kick"));
			sound_play(sound_get("sfx_hit_cqc_ko"));
			//sound_play(sound_get("sfx_at_punch_ko_lyr_01"));
		break;
		case AT_USTRONG:
			apply_custom_knockback(13, 1.2);
			sound_stop(sound_get("sfx_hit_punch_ko"));
			sound_play(sound_get("sfx_hit_kick"));
			sound_play(sound_get("sfx_hit_cqc_ko"));
			sound_play(sound_get("sfx_at_punch_ko_lyr_02"));
		break;
		case AT_DSTRONG:
			if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2)
				apply_custom_knockback(10, 0.9);
			else // 3 and 4
				apply_custom_knockback(10, 1.0);
			sound_stop(sound_get("sfx_hit_punch_ko"));
			sound_play(sound_get("sfx_hit_kick"));
			sound_play(sound_get("sfx_hit_cqc_ko"));
		break;
		case AT_BAIR:
			if (my_hitboxID.hbox_num == 1)
				apply_custom_knockback(10, 0.9);
			else if (my_hitboxID.hbox_num == 2)
				apply_custom_knockback(10, 0.8);
			sound_play(sound_get("sfx_hit_cqc_ko"));
		break;*/
		
		// Lethal Weapons
		case AT_FSPECIAL:
			
			// Create hitboxes that have more knockback.
			
			// .45 Round
			if (my_hitboxID.hbox_num == 1) {
				create_hitbox(AT_FSPECIAL, 5, round(my_hitboxID.x), round(my_hitboxID.y));
			}
			
			// 5.56 Round
			if (my_hitboxID.hbox_num == 3 && hit_player_obj.state_cat != SC_HITSTUN) {		// Only apply the M4 knockback when the opponent is NOT in histun.
				create_hitbox(AT_FSPECIAL, 6, round(my_hitboxID.x), round(my_hitboxID.y));
			}
			
		break;
		
	}

}


//=========================================================
// CUSTOM HIT SOUND LAYERS													    (The anticipation sound layers are in attack_update.gml)
//=========================================================

switch (my_hitboxID.attack) {																// Plays different sound layers for different hitboxes.
	
	case AT_JAB:
		
		if (!my_hitboxID.in_hitpause) {
			//if (my_hitboxID.hbox_num == 3) sound_play(sound_get("sfx_hit_punch_lyr_01"));
		}
	
	break;
	
	case AT_EXTRA_2:
		
		if (!my_hitboxID.in_hitpause) {
			if (my_hitboxID.hbox_num == 1) sound_play(sound_get("sfx_hit_punch_lyr_01"), false, noone, 0.3);
		}
	
	break;
	
	case AT_FTILT:
		
		if (!my_hitboxID.in_hitpause) {
			if (my_hitboxID.hbox_num == 2) sound_play(sound_get("sfx_hit_punch_lyr_02"));
		}
	
	break;
	
	case AT_UTILT:
		
		if (!my_hitboxID.in_hitpause) {
			if (my_hitboxID.hbox_num < 6) sound_play(sound_get("sfx_hit_punch_lyr_01"));
		}
	
	break;
	
	case AT_NAIR:
		
		if (!my_hitboxID.in_hitpause) {
			//if (my_hitboxID.hbox_num < 4) sound_play(sound_get("sfx_hit_punch_lyr_01"));
			if (my_hitboxID.hbox_num == 4) sound_play(sound_get("sfx_hit_punch_ko_lyr"));
		}
	
	break;
	
	case AT_UAIR:
		
		if (!my_hitboxID.in_hitpause) {
			if (my_hitboxID.hbox_num == 1) sound_play(sound_get("sfx_hit_punch_lyr_01"), false, noone, 0.4);
		}
	
	break;
	
	case AT_BAIR:
		
		if (!my_hitboxID.in_hitpause) {
			if (my_hitboxID.hbox_num != 2 && my_hitboxID.hbox_num != 4) sound_play(sound_get("sfx_hit_punch_lyr_01"), false, noone, 0.4);
		}
	
	break;
	
	case AT_FAIR:
		
		if (!my_hitboxID.in_hitpause) {
			sound_play(sound_get("sfx_hit_punch_lyr_02"));
			sound_play(sound_get("sfx_hit_punch_ko_lyr"));
			
			if (my_hitboxID.hbox_num != 3) {
				//sound_play(sound_get("sfx_hit_punch_lyr_02"));
				sound_play(sound_get("sfx_at_punch_ko_lyr_01"));
				sound_play(sound_get("sfx_at_punch_ko_lyr_02"));
			}
			
		}
	
	break;
	
	case AT_FSTRONG:
		
		if (!my_hitboxID.in_hitpause) {
			sound_play(sound_get("sfx_hit_punch_ko_lyr"), false, noone, 1.0);
		}
	
	break;
	
	case AT_USTRONG:
		
		if (!my_hitboxID.in_hitpause) {
			sound_play(sound_get("sfx_hit_punch_ko_lyr"), false, noone, 1.0);
		}
	
	break;
	
}


//=========================================================
// HITBOX ENTITY PARENTING (For entity collision damage)
//=========================================================
if (variable_instance_exists(my_hitboxID, "sna_parent_ent") ) {
	
	if (my_hitboxID.sna_parent_ent != noone) {													// If the hitbox has a parent entity...
		with (my_hitboxID.sna_parent_ent) {
	    	// "DING!" Bounce
	    	if (other.my_hitboxID.attack == AT_NSPECIAL && other.my_hitboxID.hbox_num == 3) {	// If using a "DING!" hitbox...
	    		hsp_float *= -1;																// Create a custom bounce that launches the magazine away. (To avoid stunlocking the player.)
	    		vsp_float = -14;
	    		//print_debug("DING!");
	    	}
	    	// Normal Bounce
	    	else {																				// If this is a regular bonk hitbox...
	    		hsp_float *= -bounciness;                                               		// Horizontal bounce off the player.
	    	}
		}
	}
    
}



//=========================================================
// TURBO MODE BUGFIXES
//=========================================================
if (sna_stealth_state == 0) {													// If in the sneak phase...
	switch (my_hitboxID.attack) {
		case AT_DATTACK:														// If Snake hit an opponent with a dash attack...
			clear_button_buffer(PC_ATTACK_PRESSED);								// Clear the input buffer.
			clear_button_buffer(PC_RIGHT_STICK_PRESSED);
			clear_button_buffer(PC_LEFT_STICK_PRESSED);
		break;
	}
}


//=========================================================
// FUNCTIONS
//=========================================================

//---------------------------------------------------------
// Apply Custom Knockback
//---------------------------------------------------------
#define apply_custom_knockback(_new_base_knockback, _new_kb_scale)

/*
KNOCKBACK FORMULA:

BKB + damage * knockback_scaling * 0.12 * knockback_adj
*/

var _dmg = get_player_damage(hit_player);									// Hit player's current damage
var _kb_adj = hit_player_obj.knockback_adj; 									// Hit player's weight

hit_player_obj.orig_knock = _new_base_knockback + _dmg * _new_kb_scale * 0.12 * _kb_adj;



//---------------------------------------------------------
// Spawn Pickup Item
//---------------------------------------------------------
#define pickup_spawn(_x, _y, _hsp, _vsp, _ent_idx)

// Spawn the item
var _new_item = instance_create(_x, _y, "obj_article1");						// Spawn the entity
variable_instance_set(_new_item, "ent_idx", _ent_idx);							// Set the entity index
variable_instance_set(_new_item, "depth", -2);									// Set the item depth to be visible in smoke.

// Set Initial Item Movement
variable_instance_set(_new_item, "hsp_float", _hsp);							// Apply hspeed float
variable_instance_set(_new_item, "vsp_float", _vsp);							// Apply vspeed float








