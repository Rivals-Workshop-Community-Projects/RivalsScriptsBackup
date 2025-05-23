// hit_player.gml

/*
// Template
if (my_hitboxID.attack == AT_WHATEVER){
	if (my_hitboxID.hbox_num == theNumberOfTheHitboxIdk){
		// do stuff here
	}
}
*/

// Down Strong
if (my_hitboxID.attack == AT_DSTRONG){
	
	dstrongShouldLoopTwice = false;
	
}

// Neutral Air
if (my_hitboxID.attack == AT_NAIR){
	
	lastHitNairHitbox = my_hitboxID.hbox_num;
	
}

// Neutral Special
if (my_hitboxID.attack == AT_NSPECIAL){
	if (my_hitboxID.hbox_num == 1){
		if (instance_exists(currKoopaShell)){	
			numShellTimeRebound++;
			numShellTimeRebound = clamp(numShellTimeRebound, 0, 5);
			take_damage(hit_player_obj.player, player, (numShellTimeRebound - 1));
		
			sound_play(sfx_nsmbds_kick, false, noone, 1, 1.25);
			with (currKoopaShell){
				if (whoHitShell == other.player){
					ownedByOriginalKoopaAndReboundedOffOfEnemy = true;
					// print("hit, owned by og");
					
					with (other){
						move_cooldown[AT_NSPECIAL] = 0;
					}
				} else {
					// print("who tf is this");
					ownedByOriginalKoopaAndReboundedOffOfEnemy = false;
				}
			}
			
			if (get_hitbox_value( AT_NSPECIAL, 1, HG_VISUAL_EFFECT ) == 1 && my_hitboxID.type == 2){
				// print("ueah")
				spawn_hit_fx(my_hitboxID.x ,my_hitboxID.y - 24, vfx_shell_hit_med);
			}
		}
	}
}

// Forward Special
if (my_hitboxID.attack == AT_FSPECIAL){
	// if (my_hitboxID.hbox_num == 1){
		window = 7;
		window_timer = 0;
		destroy_hitboxes();
		sound_play(sfx_nsmbds_kick, false, noone, 1, 1.25);
		if (fspecUsedAtMaxCharge){
			sound_play(sfx_ttydR_koops_field_return, false, noone, 0.5, 1.2);
			
			if (my_hitboxID.hbox_num == 2){
				// print("is this running");
				sound_play(sfx_nsmbds_groundpound_land, false, noone, 1, 1.2);
				sound_play(sfx_nsmbds_hitblock, false, noone, 1, 4);
			}
		}
	//  }
}

// Down Special
if (my_hitboxID.attack == AT_DSPECIAL){
	if (my_hitboxID.hbox_num == 1){
		djumps = 0;	// awesome?
	
		window = 4;
		window_timer = 0;
		destroy_hitboxes();
		vsp = 0;
		
		sound_play(landing_lag_sound);
		sound_play(sfx_nsmbds_groundpound_land, false, noone, 1, 1);
		sound_play(sfx_nsmbds_groundpound_landshell, false, noone, 1, 1);
		sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.25, 1);
	}
}