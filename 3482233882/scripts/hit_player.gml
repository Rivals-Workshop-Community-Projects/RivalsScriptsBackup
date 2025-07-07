//                           --hit stuff--                                    //

var hbox_num = my_hitboxID.hbox_num;

// Kragg rock shards
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.type == 2) exit;

//#region DSpec cooldown handling
var is_fake_hit = get_hitbox_value(my_hitboxID.attack, hbox_num, 81);
if ((my_hitboxID.type == 1 && !first_hit) || (my_hitboxID.type == 2 && !is_fake_hit && (my_hitboxID.orig_player != player || my_hitboxID.attack != AT_EXTRA_1))) {
	if (dspec_cooldown_hits == 1) sound_play(s_cd)
	if (dspec_cooldown_hits > 0) dspec_cooldown_hits--;
}
//#endregion

//#region Strong handling
if (my_hitboxID.cmd_strong_finisher) {
	// Kjaro's Band (duplicated later for the sake of Gasoline compat)
	if (item_grid[18][4] > 0) {
		var band_damage = 2 + item_grid[18][4] * 3;
		apply_burn(hit_player_obj, band_damage);
        var kjaro_vfx = spawn_hit_fx(get_effect_offset_x(), get_effect_offset_y(), HFX_SHO_FLAME_BIG);
		kjaro_vfx.depth = hit_player_obj.depth-1;
	}
	
	// Runald's Band
	if (item_grid[19][4] > 0) {
		sound_play(asset_get("sfx_ice_back_air"));
		var runald_vfx = spawn_hit_fx(get_effect_offset_x(), get_effect_offset_y(), HFX_ETA_ICE_BIG);
		runald_vfx.depth = hit_player_obj.depth-1;
	}
}
//#endregion

//#region Ukelele
if (my_hitboxID.attack == AT_USTRONG_2) {
	hit_player_obj.hitpause_shock = true;
	if (my_hitboxID.hbox_num < 4) {
		if (hit_player_obj.y > y-50) hit_player_obj.y = lerp(hit_player_obj.y, y-50, 0.4);
	} else {
		
	}
}
//#endregion

//#region Crit handling
// Critical active is only technically necessary for disabling the crit sound,
// but avoiding the other checks certainly doesn't hurt //i actually want the crit sound to always play so im gonna comment that part out
if (/*critical_active &&*/ my_hitboxID.cmd_is_critical == 1) {
	//print_debug("crit!");
	// Play crit sound
	sound_play(s_crit, 0, noone, 2);
	
	if (item_grid[10][4] > 0) {
		// damage applied in melee hitbox update
		var lens_fx = spawn_hit_fx(get_effect_offset_x(), get_effect_offset_y(), fx_crit_lens);
		lens_fx.depth = hit_player_obj.depth-1;
	}
	
	if (item_grid[24][4] > 0) {
		sound_play(s_critheal)
		do_healing(floor(my_hitboxID.damage * (0.166666666 + 0.166666667*item_grid[24][4]))); // Harvester's Scythe
		for (var i = 0; i < 3; i++) {
			var heal_fx = spawn_hit_fx(x-45+(30*i)+random_func_2(1+i*3, 30, true), y-60+random_func_2(2+i*3, 50, true), fx_item_heal);
			heal_fx.depth = depth-1;
			heal_fx.hit_length = 39+random_func_2(i*3, 7, true);
			heal_fx.vsp = -1;
		}
	}
	
	if (item_grid[26][4] > 0) {
		instincts_timer = 300;
		new_item_id = 26;
		user_event(0); // refresh stats
		sound_play(sound_get("cm_instincts"));
		flash_timer = 15;
		flash_timer_max = 18;
		flash_color = make_color_hsv(250, 200, 150);
	}
	
	if (item_grid[11][4] > 0) {
		var bleed_damage = 2 + item_grid[11][4] * 3 * nectar_mult;
		hit_player_obj.commando_status_owner[1] = player;
		if (hit_player_obj.commando_status_state[1] < bleed_damage) hit_player_obj.commando_status_state[1] = bleed_damage;
		spawn_hit_fx(get_effect_offset_x(), get_effect_offset_y(), fx_crit_blood);
	}
	
	if (item_grid[12][4] > 0) {
		hit_player_obj.hitpause_shock = true;
		var stun_type = (hit_player_obj.commando_status_state[2] == 0 && hit_player_obj.commando_status_state[3] == 0) ? 1 : 2;
		hit_player_obj.commando_status_state[2] = stun_type;
		hit_player_obj.commando_status_counter[2] = 7 + item_grid[12][4] * 7 * nectar_mult;
		hit_player_obj.commando_status_owner[2] = player;
		spawn_hit_fx(get_effect_offset_x(), get_effect_offset_y(), (stun_type == 1) ? fx_crit_shock_long : fx_crit_shock);
		sound_play(asset_get("sfx_absa_cloud_pop"))
	}
	
	if (item_grid[25][4] > 0 && hit_player_obj.burned) {
		do_ignite_hbox = true;
	}
	if (item_grid[40][4] > 0) {
		sound_play(sound_get("BadBlade"))
	}
	if (item_grid[56][4] > 0) {
		snakeeyes_active = true;
		sound_play(sound_get("cm_snakeyes_proc"))
	}
	
	if (item_grid[57][4] > 0) {
		var factory = instance_create(x, y-30, "obj_article3");
		factory.state = 60;
		factory.target_obj = hit_player_obj;
	}
	
}

else if (hit_player_obj.commando_status_state[2] != 0) {
	hit_player_obj.commando_status_state[2] = 2;
	hit_player_obj.commando_status_counter[2] = 0;
	hit_player_obj.commando_status_owner[2] = player;
}
//#endregion

//#region Explosive handling
// UTilt
if (my_hitboxID.attack == AT_UTILT && hbox_num == 2) utilt_do_explosion = true;


if (my_hitboxID.cmd_is_explosive == 1) {
	
	// Concussion Grenade
	if (item_grid[27][4] > 0) {
		var stun_type = (hit_player_obj.commando_status_state[2] == 0 && hit_player_obj.commando_status_state[3] == 0) ? 1 : 2;
		hit_player_obj.commando_status_state[3] = stun_type;
		hit_player_obj.commando_status_counter[3] = 10 + item_grid[27][4] * 10;
		hit_player_obj.commando_status_owner[3] = player;
		hit_player_obj.commando_stored_x = hit_player_obj.x;
		sound_play(asset_get("sfx_mol_flash_explode"));
		// hfx
	}
	
	// Sticky Bomb
	if (item_grid[15][4] > 0 && hit_player_obj.commando_status_state[0] <= 0) {
		hit_player_obj.commando_status_state[0] = 1;
		hit_player_obj.commando_status_counter[0] = 0;
		hit_player_obj.commando_status_owner[0] = player;
		sound_play(asset_get("sfx_absa_cloud_placepop"));
		// hfx
	}
	
	// Gasoline (also accounts for Kjaro's Band)
	if (item_grid[16][4] > 0) {
		var gas_damage = 0 + item_grid[16][4] * 3 * nectar_mult;
		if (!my_hitboxID.cmd_strong_finisher || item_grid[18][4] == 0) {
			apply_burn(hit_player_obj, gas_damage);
		} else {
			var band_damage = 2 + item_grid[18][4] * 3;
			apply_burn(hit_player_obj, gas_damage+band_damage);
		}
	}
	
}

else if (hit_player_obj.commando_status_state[3] != 0) {
	hit_player_obj.commando_status_state[3] = 2;
	hit_player_obj.commando_status_counter[3] = 0;
	hit_player_obj.commando_status_owner[3] = player;
}
//#endregion

//#region Ol' Lopper / Shattering Justice
if (get_player_damage(hit_player_obj.player) >= 120 && hit_player_obj.orig_knock >= 6 && item_grid[34][4] > 0) {
	if (hit_player_obj.commando_status_owner[4] == noone) {
		hit_player_obj.commando_status_state[4] = 1;
		hit_player_obj.commando_status_owner[4] = player;
		hit_player_obj.commando_status_counter[4] = 0;
	}
}

if my_hitboxID.attack == AT_EXTRA_1 && hbox_num == 2 {
	sound_play(sound_get("loph"), 0, noone, 1, .9)
	//print("hi")
}

if (get_player_damage(hit_player_obj.player) >= 100 && item_grid[35][4] > 0) {
	if (hit_player_obj.commando_status_owner[5] == noone) {
		hit_player_obj.knockback_adj += 0.099973;
		hit_player_obj.commando_status_state[5] = hit_player_obj.knockback_adj;
		hit_player_obj.commando_status_owner[5] = player;
	}
	hit_player_obj.commando_status_counter[5] = 90 * item_grid[35][4];
}
//#endregion

//#region FAir extra strong charge damage
if (my_hitboxID.attack == AT_FAIR) take_damage(hit_player_obj.player, player, floor(strong_charge/12 + 0.5));
// Note that strong charge damage isn't factored into the below multiplier, so neither is this
//#endregion

//#region Fractional damage / multiplier handling (crowbar, warbanner, headstompers)

// Crowbar handing (This also increases kb)
var crowbar_mult_add = 0;
if (get_player_damage(hit_player_obj.player) - my_hitboxID.damage <= 50 && item_grid[0][4] > 0) {
	sound_play(s_cbar, 0, noone, 1, 0.95 + 0.1*random_func(player, 1, false));
	crowbar_mult_add = 0 + 0.5*item_grid[0][4]*nectar_mult;
	hit_player_obj.orig_knock += 10 * my_hitboxID.kb_scale * 0.12 * hit_player_obj.knockback_adj * item_grid[0][4] * nectar_mult;
	// Note that this kb increase could result in scenarios where galaxies don't properly trigger. However, given that it only applies at low percents, this is unlikely to occur outside of practice mode.
}

// Warbanner handling
var warbanner_mult_add = 0;
if (commando_warbanner_strength > 0) warbanner_mult_add = 0 + commando_warbanner_strength * 0.2;

// Headstompers handling
var stompers_extra_damage = 0;
if (my_hitboxID.type == 1 && my_hitboxID.attack == AT_EXTRA_1 && 4 <= hbox_num && hbox_num <= 6) {
	stompers_extra_damage = 0.5 * (item_grid[2][4]);
	// while we're here...
	if (hbox_num == 4) {
		sound_play(my_hitboxID.sound_effect);
		
		if (!my_hitboxID.has_hit) {
			if (!hitpause) {
				old_hsp = hsp;
				old_vsp = vsp;
			}
			hitpause = true;
			if (hitstop < my_hitboxID.hitpause) {
				hitstop = my_hitboxID.hitpause;
				hitstop_full = hitstop;
			}
		}
		
		if (!hit_player_obj.hitpause) {
			hit_player_obj.old_hsp = hit_player_obj.hsp;
			hit_player_obj.old_vsp = hit_player_obj.vsp;
		}
		hit_player_obj.hitpause = true;
		if (hit_player_obj.hitstop < my_hitboxID.hitpause) {
			hit_player_obj.hitstop = my_hitboxID.hitpause;
			hit_player_obj.hitstop_full = hit_player_obj.hitstop;
		}
	}
}

// Apply damage amps
var base_damage = my_hitboxID.damage + stompers_extra_damage;
var mult_damage_add = base_damage * (crowbar_mult_add + warbanner_mult_add) + stompers_extra_damage;
take_damage(hit_player_obj.player, player, floor(mult_damage_add));

// Buffer non-integer damage, apply buffer as needed
if (!hit_player_obj.clone) {
	hit_player_obj.u_mult_damage_buffer += mult_damage_add - floor(mult_damage_add);
	if (hit_player_obj.u_mult_damage_buffer >= 1) {
	    take_damage(hit_player_obj.player, player, floor(hit_player_obj.u_mult_damage_buffer));
	    hit_player_obj.u_mult_damage_buffer -= floor(hit_player_obj.u_mult_damage_buffer);
	}
}

//#endregion


//#region DSpec chest hitpause
if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.orig_player == player && "owner_chest" in my_hitboxID) {
	my_hitboxID.owner_chest.hitstop = floor(hit_player_obj.hitstop);
	my_hitboxID.owner_chest.has_hit = true;
}
//#endregion

//#region Kill tracking

if (!hit_player_obj.clone && recently_hit[hit_player_obj.player-1] == noone) {
	recently_hit[hit_player_obj.player-1] = hit_player_obj;
	num_recently_hit++;
}

//#endregion

//#region Monster Tooth
if (item_grid[47][4] > 0 && hit_player_obj.orig_knock >= 12) {
	tooth_awaiting_spawn[hit_player_obj.player-1] = point_direction(0, 0, hit_player_obj.hsp*-1, abs(hit_player_obj.vsp)*-1);
}
//#endregion

//#region Brilliant Behemoth/ATG/Plasma Shrimp
var plimp_active = item_grid[61][4] > 0;

// If this could spawn missiles...
if (my_hitboxID.cmd_strong_finisher || my_hitboxID.cmd_behemoth_applied || plimp_active) {
	// Check lethality
	var kb = get_kb_formula(get_player_damage(hit_player), hit_player_obj.knockback_adj, get_match_setting(SET_SCALING)*2, my_hitboxID.damage, my_hitboxID.kb_value, my_hitboxID.kb_scale);
	var hs = get_hitstun_formula(get_player_damage(hit_player), hit_player_obj.knockback_adj, get_match_setting(SET_SCALING)*2, my_hitboxID.damage, my_hitboxID.kb_value, my_hitboxID.kb_scale)
	var is_galaxy = will_die_from_kb(hit_player_obj, kb, my_hitboxID.kb_angle, hs)
	
	// Store knockback
	hbox_stored_damage = my_hitboxID.damage; // probably won't see use in practice
	hbox_stored_bkb = my_hitboxID.kb_value;
	hbox_stored_kbg = my_hitboxID.kb_scale;
	hbox_stored_angle = point_direction(0, 0, hit_player_obj.hsp, hit_player_obj.vsp);
	hbox_stored_dir = 1;
	hbox_stored_bhp = my_hitboxID.hitpause;
	hbox_stored_hps = my_hitboxID.hitpause_growth;
	hbox_stored_lockout = my_hitboxID.no_other_hit;
}

if (my_hitboxID.cmd_behemoth_applied && item_grid[43][4] > 0) {
	do_behemoth_hbox = 1;
}

if (my_hitboxID.cmd_strong_finisher && atg_freq > 0) {
	var factory = instance_create(x, y, "obj_article3");
	factory.state = 63;
	factory.target_obj = hit_player_obj;
	factory.bkb = hbox_stored_bkb;
	factory.kbg = hbox_stored_kbg;
	factory.kb_angle = hbox_stored_angle;
	factory.spr_dir = hbox_stored_dir;
	factory.bhp = hbox_stored_bhp;
	factory.hps = hbox_stored_hps;
	factory.force_kill = is_galaxy ? hit_player : noone;
}

else if (plimp_active && my_hitboxID.type == 1) {
	if (my_hitboxID.attack != AT_USTRONG && my_hitboxID.attack != AT_USTRONG_2 && my_hitboxID.attack != AT_DSTRONG && my_hitboxID.attack != AT_FSTRONG) {
		var factory = instance_create(x, y, "obj_article3");
		factory.state = 68;
		factory.target_obj = hit_player_obj;
		factory.bkb = hbox_stored_bkb;
		factory.kbg = hbox_stored_kbg;
		factory.kb_angle = hbox_stored_angle;
		factory.spr_dir = hbox_stored_dir;
		factory.bhp = hbox_stored_bhp;
		factory.hps = hbox_stored_hps;
	}
}

// Galaxy insurance
if (my_hitboxID.attack == AT_EXTRA_1 && "force_kill" in my_hitboxID) {
	if (hit_player == my_hitboxID.force_kill) {
		hit_player_obj.orig_knock += 5;
	}
}

//#endregion

//#region Laser Turbine
if (item_grid[41][4] > 0) {
	turbine_stored_charge += item_grid[41][4] * my_hitboxID.damage;
}
//#endregion

//#region Ceremonial Dagger

if (my_hitboxID.attack == AT_EXTRA_1 && hbox_num == 7) {
    
    sound_play(my_hitboxID.sound_effect);
    if (!hit_player_obj.hitpause) {
	    hit_player_obj.old_hsp = hit_player_obj.hsp;
	    hit_player_obj.old_vsp = hit_player_obj.vsp;
    }
    hit_player_obj.hitpause = true;
    hit_player_obj.hitstop += my_hitboxID.extra_hitpause;
    hit_player_obj.hitstop_full = hit_player_obj.hitstop;
    
}

//#endregion


// hitbox lerp code
if (get_hitbox_value(my_hitboxID.attack, hbox_num, HG_HAS_LERP) == true) {
	if (my_hitboxID.type == 1) { //if physical, pull relative to player
		hit_player_obj.x = lerp(hit_player_obj.x, x + get_hitbox_value(my_hitboxID.attack, hbox_num, HG_LERP_POS_X)*spr_dir, get_hitbox_value(my_hitboxID.attack, hbox_num, HG_LERP_PERCENT));
		hit_player_obj.y = lerp(hit_player_obj.y, y + get_hitbox_value(my_hitboxID.attack, hbox_num, HG_LERP_POS_Y), get_hitbox_value(my_hitboxID.attack, hbox_num, HG_LERP_PERCENT));
	} else if (my_hitboxID.type == 2) { // otherwise pull relative to hitbox
		hit_player_obj.x = lerp(hit_player_obj.x, my_hitboxID.x + get_hitbox_value(my_hitboxID.attack, hbox_num, HG_LERP_POS_X)*spr_dir, get_hitbox_value(my_hitboxID.attack, hbox_num, HG_LERP_PERCENT));
		hit_player_obj.y = lerp(hit_player_obj.y, my_hitboxID.y + get_hitbox_value(my_hitboxID.attack, hbox_num, HG_LERP_POS_Y), get_hitbox_value(my_hitboxID.attack, hbox_num, HG_LERP_PERCENT));
	}
}

// command grab code
if (get_hitbox_value(my_hitboxID.attack, hbox_num, HG_HAS_GRAB) == true) {
	
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
		if (get_hitbox_value(my_hitboxID.attack, hbox_num, HG_GRAB_WINDOW_GOTO) != -1) {
			destroy_hitboxes();
			attack_end();
			window = get_hitbox_value(my_hitboxID.attack, hbox_num, HG_GRAB_WINDOW_GOTO);
			window_timer = 0;
			old_hsp = get_window_value(my_hitboxID.attack, window, AG_WINDOW_HSPEED);
			old_vsp = get_window_value(my_hitboxID.attack, window, AG_WINDOW_VSPEED);
			
			if (get_hitbox_value(my_hitboxID.attack, hbox_num, HG_GRAB_WINDOWS_NUM) != -1) {
				set_attack_value(attack,AG_NUM_WINDOWS,get_hitbox_value(my_hitboxID.attack, hbox_num, HG_GRAB_WINDOWS_NUM));
			}
		}
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
			// setting it in case of an attack that continues the current window
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
	}
}

// break grab
if (get_hitbox_value(my_hitboxID.attack, hbox_num, HG_BREAKS_GRAB) == true && instance_exists(grabbed_player_obj)) {
	grabbed_player_obj = noone;
}

// multihit projectile code
if (get_hitbox_value(my_hitboxID.attack, hbox_num, HG_PROJECTILE_MULTIHIT) == true) {
	if (!my_hitboxID.proj_hitpause) {
		my_hitboxID.proj_old_hsp = my_hitboxID.hsp;
		my_hitboxID.proj_old_vsp = my_hitboxID.vsp;
		my_hitboxID.proj_old_img_spd = my_hitboxID.img_spd;
		my_hitboxID.proj_hitpause = true;
	}
	my_hitboxID.proj_hitstop = my_hitboxID.hitpause;
	my_hitboxID.hitbox_hit_player_count[hit_player_obj.player] += 1;
	my_hitboxID.hitbox_hit_player_timers[hit_player_obj.player] = 0;
}


//                          --hit gamefeel--                                  //

switch(my_hitboxID.attack) {
    case AT_JAB:
        //a
        break;
    case AT_FTILT:
        //a
        break;
    case AT_DTILT:
        //a
        break;
    case AT_UTILT:
    	//a
        break;
    case AT_DATTACK:
        //a
        break;
        
    case AT_NAIR:
        //a
        break;
    case AT_FAIR:
        //a
        break;
    case AT_BAIR:
    	if (hbox_num = 1) {
        	hit_player_obj.x = lerp(floor(hit_player_obj.x), x-20 * spr_dir, .2)
			hit_player_obj.y = lerp(floor(hit_player_obj.y), y-5, .2)
			sound_play(asset_get("sfx_mol_flare_shoot"), 0, noone, 1, 1.03)
			sound_play(asset_get("sfx_blow_weak1"), 0, noone, .6, 1.05)
    	} else {
    		sound_play(asset_get("sfx_blow_medium3"), 0, noone, .6, 1.05)
    	}
        break;
    case AT_DAIR:
        if hbox_num == 2 {
        	//sound_play(asset_get("sfx_blow_weak1"))
        }
        break;
    case AT_UAIR:
        //a
        break;
       
    case AT_FAIR:
    	var dir_fx = spawn_hit_fx(get_effect_offset_x(), get_effect_offset_y(), fx_blast);
    	dir_fx.draw_angle = -40 * spr_dir;
    	break;
    case AT_FSTRONG:
    	var dir_fx = spawn_hit_fx(get_effect_offset_x(), get_effect_offset_y(), fx_blast);
    	dir_fx.draw_angle = 10 * spr_dir;
    	break;
    case AT_FSTRONG_2: // Tricorn FStrong
    	var dir_fx = spawn_hit_fx(get_effect_offset_x(), get_effect_offset_y(), fx_blast);
    	dir_fx.draw_angle = 10 * spr_dir;
    	sound_play(sound_get("c_tricorn_get")) //too lazy to init this one lol
    	
    	if (!hit_player_obj.clone) {
	    	var trophy = instance_create(hit_player_obj.x-8, hit_player_obj.y-30, "obj_article3");
	    	trophy.state = 55;
	    	if (hit_player_obj.custom) {
	    		trophy.icon = get_char_info(hit_player_obj.player, INFO_ICON);
	    		trophy.icon_index = 0;
	    		trophy.icon_scale = 2;
	    	} else {
	    		trophy.icon = sprite_get("bc_icons");
	    		trophy.icon_index = other.url;
	    		trophy.icon_scale = 1;
	    	}
    	}
    	break;
    case AT_USTRONG:
    	if hbox_num == 2 {
    		sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .7, 1.15)
    	}
    	break;
    case AT_USTRONG_2:
    	if hbox_num == 4 {
    		sound_play(sound_get("uke2"), 0, noone, 1.6)
    		var fx = spawn_hit_fx(get_effect_offset_x(), get_effect_offset_y(), fx_crit);
    	} else {
    		sound_play(sound_get("uke1"), 0, noone, 1.3)
    	}
    	break;
    case AT_DSTRONG:
    	if (hbox_num < 4 && hbox_num != 1) {
    		sound_play(asset_get("sfx_mol_flare_shoot"), 0, noone, 1, 1.03)
    	}
    	if (hbox_num > 3) {
    		sound_play(asset_get("sfx_mol_bat_bombhit"), 0, noone, .3, 1.3)
    	}
    	break;
    
    
    case AT_NSPECIAL:
        //a
        break;
    case AT_FSPECIAL:
        //a
        break;
    case AT_DSPECIAL:
        //a
        break;
    case AT_USPECIAL:
        //a
        break;
       
    case AT_EXTRA_1:
    	if (my_hitboxID.orig_player == player) switch hbox_num { 
    		case 1: // Brilliant Behemoth
    			behemoth_hfx_hitstop = max(0, hit_player_obj.hitstop);
    			break;
    		case 10: // Legendary Spark
    			var _x = round(lerp(my_hitboxID.x, hit_player_obj.x, 0.8));
    			var _y = hit_player_obj.y - floor(hit_player_obj.char_height*0.7);
    			spawn_hit_fx(_x, _y, vfx_zap_1);
    			break;
    		case 11: // Legendary Spark
    			var _x = round(lerp(my_hitboxID.x, hit_player_obj.x, 0.8));
    			var _y = hit_player_obj.y - floor(hit_player_obj.char_height*0.7);
    			spawn_hit_fx(_x, _y, vfx_zap_2);
    			break;
    	}
    	
    	break;
    
}


#define do_healing(amount)
// Helper function to ensure that Aegis is always accounted for.
take_damage(player, player, -amount);
aegis_barrier += aegis_ratio * item_grid[42][4] * amount;

#define apply_burn(target_player_obj, burn_damage)
	var ticks = 150 - 30*burn_damage;
	if (!target_player_obj.burned || ticks < target_player_obj.burn_timer) target_player_obj.burn_timer = ticks; // don't reduce an existing burn
	target_player_obj.burned = true;
    target_player_obj.burnt_id = self;
    target_player_obj.burned_color = 0;
    enemy_burnID = target_player_obj;
    other_burned = true;
    with (target_player_obj) init_shader();
    sound_play(asset_get("sfx_burnapplied"));

#define get_effect_offset_x

return (hit_player_obj.x + my_hitboxID.x) * 0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num, HG_VISUAL_EFFECT_X_OFFSET) * spr_dir;

#define get_effect_offset_y

return (hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25;

#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
	default: 
	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	case "doublejump": 
	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;
