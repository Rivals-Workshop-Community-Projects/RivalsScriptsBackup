// hit_player.gml

/*
// Template
if (my_hitboxID.attack == AT_WHATEVER){
	if (my_hitboxID.hbox_num == theNumberOfTheHitboxIdk){
		// do stuff here
	}
}
*/

// Jab
if (my_hitboxID.attack == AT_JAB){
	if (my_hitboxID.hbox_num == 2){
		sound_play(sfx_nsmbds_hitblock, false, noone, 1, 1.15);
		sound_play(sfx_nsmbds_kick, false, noone, 0.45, 1.15);
	}
}

// Forward Strong
if (my_hitboxID.attack == AT_FSTRONG){
	// clean hit
	if (my_hitboxID.hbox_num == 1){
		sound_play(sfx_nsmbds_hitblock, false, noone, 1, 1.35);
		sound_play(sfx_nsmbds_hitblock, false, noone, 1, 0.9);
		sound_play(sfx_nsmbds_kick, false, noone, 0.85, 0.95);
		sound_play(sfx_nsmbds_kick, false, noone, 0.65, 1.35);
		sound_play(sfx_nsmbds_groundpound_landshell, false, noone, 1, 0.65);
	}
	
	// late hit
	if (my_hitboxID.hbox_num == 2){
		sound_play(sfx_nsmbds_hitblock, false, noone, 0.6, 1.2);
		sound_play(sfx_nsmbds_kick, false, noone, 0.45, 1);
		sound_play(sfx_nsmbds_groundpound_landshell, false, noone, 0.65, 0.85);
	}
}

// Down Strong
if (my_hitboxID.attack == AT_DSTRONG){
	
	dstrongShouldLoopTwice = false;
	
	sound_play(sfx_nsmbds_hitblock, false, noone, 1, 0.85);
	sound_play(sfx_nsmbds_kick, false, noone, 0.35, 1.15);
}

// Neutral Air
if (my_hitboxID.attack == AT_NAIR){
	
	lastHitNairHitbox = my_hitboxID.hbox_num;
	
	var thingnum = my_hitboxID.hbox_num;
	if (thingnum > 3){
		thingnum -= 3;
	}
	thingnum--;
	
	sound_play(sfx_nsmbds_kick, false, noone, 0.3 + (thingnum * 0.2), 0.95 + (thingnum * 0.1));
	if (!free){
		sound_play(sfx_nsmbds_hitblock, false, noone, 0.75, 1.25 + (thingnum * 0.125));
	}
}

// Neutral Special
if (my_hitboxID.attack == AT_NSPECIAL){
	if (my_hitboxID.hbox_num == 1){
		if (instance_exists(currKoopaShell)){	
			numShellTimeRebound++;
			shellhittracker++;
			numShellTimeRebound = clamp(numShellTimeRebound, 0, 5);
			take_damage(hit_player_obj.player, player, (numShellTimeRebound - 1));

			// sound pitch
			var shellSoundPitch = (.075 * shellhittracker);
			shellSoundPitch = clamp(shellSoundPitch, 0, 1.1);
			// print(1.10 + shellSoundPitch);
			sound_play(sfx_nsmbds_kick, false, noone, 1, 1.10 + 0.075 + shellSoundPitch);
			
			// 
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