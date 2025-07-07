if get_gameplay_time() == 4 {
	set_state(PS_ATTACK_GROUND)
	attack = 2
}

if (init_prompt_active) {
	if (attack == AT_EXTRA_3 || attack == AT_DSPECIAL || debug_display_opened || init_prompt_timer > 360) {
		init_prompt_active = false;
		init_prompt_timer = 20;
	}
	init_prompt_timer++;
} else if (init_prompt_timer > 0) init_prompt_timer--;

with hit_fx_obj if player_id == other {
    if hit_fx == other.vfx_explosion_med {
        depth = player_id.depth-100;
    }
}
// Utility menu subroutines
if (tmu_state != -1) user_event(3);
if (debug_display_opened) user_event(5);

// reset idle_air_looping if the character isn't in air idle anymore
if (!(state == PS_FIRST_JUMP || state == PS_IDLE_AIR)) {
	idle_air_looping = false;
	idle_air_platfalling = false;
}

// Fix hud_offset jittering
if (hud_offset < 0) hud_offset = 0;

//#region Limitless mode
if (limitless_mode) dspec_cooldown_hits = 0;
// Cancel handling
if (limitless_mode && !limitless_mode_locked) {
	with oPlayer if (state == PS_PARRY_START && down_down) {
		other.limitless_mode = false;
		other.limitless_mode_cancelled = true;
		if (player != other.player) with other {
			commando_status_state[3] = 1;
			commando_status_counter[3] = 180;
			commando_status_owner[3] = player;
			last_player = player;
			commando_stored_x = x;
			
			hitpause = true;
			hitstop = 1;
			hitstop_full = 1;
			destroy_hitboxes();
			attack_end();
			set_state(free ? PS_HITSTUN : PS_HITSTUN_LAND);
			hitstun = 1;
			hitstun_full = 1;
			
			sound_play(asset_get("sfx_mol_bat_whack"));
		}
	}
}
//#endregion


//#region Cooldown management

// FSpec cooldown
if (!free || state_cat == SC_HITSTUN || state == PS_RESPAWN || state == PS_WALL_JUMP) {
	fspec_air_uses = fspec_air_max_uses;
}
if (fspec_air_uses <= 0 && move_cooldown[AT_FSPECIAL_AIR] < 2) move_cooldown[AT_FSPECIAL_AIR] = 2;

// FSpec DJump penalty
if (fspec_clamp_hsp && state != PS_ATTACK_AIR) {
	fspec_clamp_hsp = false;
	var sp = 1.5 * air_max_speed;
	if (state == PS_IDLE_AIR || state == PS_DOUBLE_JUMP) hsp = clamp(hsp, -sp, sp);
}

// DSpec cooldown
if (dspec_cooldown_hits	> 0) move_cooldown[AT_DSPECIAL] = 2;
first_hit = has_hit;

//#endregion

//#region Lightweight particle management

if (do_wind_streaks && get_gameplay_time()%4 == 0 && abs(hsp) > 4 && state_cat != SC_HITSTUN) {
	var dir = (hsp > 0) ? 1 : -1
	var spr_name = "vfx_item_dashlines_" + string(random_func(14, 4, true));
	var in_fspec = (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2)
	var y_off = in_fspec ? 2 : -6;
	spawn_lfx(sprite_get(spr_name), x, y+y_off, 30, dir, false, -dir, 0);
}
do_wind_streaks = false;

// See also: pre_draw.gml, post_draw.gml
for (var i = 0; i < ds_list_size(lfx_list); i++) {
    var lfx = ds_list_find_value(lfx_list, i);
    lfx.lfx_lifetime++;
    lfx.lfx_x += lfx.lfx_hsp;
    lfx.lfx_y += lfx.lfx_vsp;
    if (lfx.lfx_lifetime >= lfx.lfx_max_lifetime) {
        ds_list_remove(lfx_list, lfx);
        i--;
    }
}
//#endregion


//#region Status management
// Since this spawns hitboxes, it should be above the hitbox update block
with oPlayer {
	
	var update_outline = false;
	var nectar_mult = other.nectar_mult;
	
	if (state == PS_DEAD || state == PS_RESPAWN) {
		if (commando_status_owner[1] == other.player && commando_status_state[1] > 0) {
			if (array_equals(outline_color, other.bleeddagger_outline_col)) {
				outline_color = [0, 0, 0];
				update_outline = true;
			}
		}
		for (var i = 0; i < 7; i++) {
			commando_status_state[i] = 0;
			commando_status_counter[i] = 0;
			commando_status_owner[i] = noone;
		}
	}
	
	// Sticky Bomb (state 1 indicates active, >1 indicates cooldown)
	if (commando_status_owner[0] == other.player && commando_status_state[0] > 0) {
		if (!hitpause) commando_status_counter[0]++;
		if (commando_status_state[0] == 1 && commando_status_counter[0] >= 30) {
			var _x = floor(x);
			var _y = floor(y - (char_height*0.7));
			with (other) {
				var hbox = create_hitbox(AT_EXTRA_1, 3, _x, _y);
				hbox.damage += (2) * (item_grid[15][4]*nectar_mult - 1);
				var fx = spawn_hit_fx(_x, _y, fx_explode_small);
				fx.depth = other.depth-1;
				sound_play(asset_get("sfx_mol_flare_shoot"));
			}
			commando_status_state[0] = 2;
			commando_status_counter[0] = 0;
		}
		else if (commando_status_state[0] > 1 && commando_status_counter[0] >= 45) {
			commando_status_state[0] = 0;
			commando_status_counter[0] = 0;
			commando_status_owner[0] = noone;
		}
	}
	
	// Bleed (state indicates damage ticks remaining)
	if (commando_status_owner[1] == other.player && commando_status_state[1] > 0) {
		
		commando_status_counter[1]++;
		
		if (array_equals(outline_color, [0, 0, 0])) {
			outline_color = other.bleeddagger_outline_col;
			update_outline = true;
		}
		
		if (get_gameplay_time() % 8 == player) with other {
			var _x = -36 + random_func_2(9, 73, true);
			var _y = -floor(other.char_height * (0.3 + 0.8*random_func_2(7, 1, false))); 
			var _type = random_func_2(14, 2, true)
			var bleed_fx = spawn_hit_fx(other.x+_x, other.y+_y, fx_bleed[_type]);
			bleed_fx.spr_dir = other.spr_dir;
			//bleed_fx.depth = other.depth-1;
		}
		
		if (commando_status_counter[1] >= 45) {
			commando_status_state[1]--;
			commando_status_counter[1] = 0;
			take_damage(player, other.player, 1);
			if (commando_status_state[1] <= 0) {
				commando_status_owner[1] = noone;
				if (array_equals(outline_color, other.bleeddagger_outline_col)) {
					outline_color = [0, 0, 0];
					update_outline = true;
				}
			}
		}
		
	}
	
	// Electric stun (state 1 is active, state 2 is lockout. Status counter counts down to allow external stun time setting)
	if (commando_status_owner[2] == other.player && commando_status_state[2] > 0) {
		commando_status_counter[2]--;
		if (last_player != commando_status_owner[2]) { // mirrored in hit_player
			commando_status_state[2] = 0;
			commando_status_counter[2] = 0;
			commando_status_owner[2] = noone;
		}
		switch (commando_status_state[2]) {
			case 1:
				if (commando_status_counter[2] <= 0) {
					commando_status_state[2] = 2;
					commando_status_counter[2] = 0;
				}
				else hitstop++;;
				break;
			case 2:
				if (!hitpause) {
					commando_status_state[2] = 0;
					commando_status_counter[2] = 0;
					commando_status_owner[2] = noone;
				}
				break;
		}
	}
	
	// Explosive stun (state 1 is active, state 2/3 are lockout. Status counter counts down to allow external stun time setting)
	if (commando_status_owner[3] == other.player && commando_status_state[3] > 0) {
		commando_status_counter[3]--;
		if (last_player != commando_status_owner[3]) { // mirrored in hit_player
			commando_status_state[3] = 0;
			commando_status_counter[3] = 0;
			commando_status_owner[3] = noone;
		}
		var timer = commando_status_counter[3];
		switch commando_status_state[3] {
			case 1:
				var attenuation = (timer > 10) ? 2 : timer/5;
				x = commando_stored_x + attenuation*(abs(3-(timer%6))-2);
				if (timer <= 0) {
					commando_status_state[3] = 2;
					commando_status_counter[3] = 0;
				}
				else hitstop++;
				break;
			case 2:
				if (!hitpause) {
					commando_status_state[3] = 3;
					commando_status_counter[3] = 12;
				}
				break;
			case 3:
				if (commando_status_counter[3] <= 0) {
					commando_status_state[3] = 0;
					commando_status_counter[3] = 0;
					commando_status_owner[3] = noone;
				}
				break;
		}
	}
	
	// The Ol' Lopper effect (state 1 is awaiting, state 2 is hitpause, state 3 is lockout)
	if (commando_status_owner[4] == other.player && commando_status_state[4] > 0) {
		if (!hitpause) commando_status_counter[4]++;
		
		switch (commando_status_state[4]) {
			case 1:
				if  commando_status_counter[4] == 1 && !hitpause {
					sound_play(other.s_toll, 0, noone, 2)
				}
				if (commando_status_counter[4] >= 100) {
					sound_play(other.s_lops, 0, noone, 1, .9)
				//	sound_play(asset_get("sfx_swipe_heavy1"), 0, noone, 1, .8)
					commando_status_state[4] = 2;
					commando_status_counter[4] = 0;
					with (other) {
						create_hitbox(AT_EXTRA_1, 2, other.x, other.y+floor(char_height/2));
						other.commando_lop_fx = spawn_hit_fx(other.x, other.y+floor(other.char_height/3), fx_lopper_active);
					}
					commando_lop_fx.spr_dir = spr_dir;
					commando_lop_fx.depth = depth-1;
				}
				break;
			case 2:
				if (hitpause) commando_lop_fx.step_timer--;
				if (!hitpause) {
					commando_status_state[4] = 3;
					commando_status_counter[4] = 0;
				}
				break;
			case 3:
				if (commando_status_counter[4] >= 300) {
					commando_status_state[4] = 0;
					commando_status_counter[4] = 0;
					commando_status_owner[4] = noone;
				}
				break;
		}
	}
	
	// Shattering Justice effect (state is cheatily used to store the modified knockback_adj)
	if (commando_status_owner[5] == other.player && commando_status_state[5] > 0) {
		if (!hitpause) commando_status_counter[5]--;
		if (knockback_adj != commando_status_state[5]) { // If knockback_adj was changed externally, reapply the shred
			knockback_adj += 0.099973;
			commando_status_state[5] = knockback_adj;
		}
		if (commando_status_counter[5] <= 0) { // Reset upon finishing duration
			knockback_adj -= 0.099973;
			commando_status_state[5] = 0;
			commando_status_counter[5] = 0;
			commando_status_owner[5] = noone;
		}
	}
	
	if (update_outline) init_shader();
	
}
//#endregion


//#region dodge_duration_add management

switch state {
	case PS_PARRY_START:
		dodge_duration_timer = 0;
		break;
	
	case PS_AIR_DODGE:
		if (state_timer == 0) dodge_duration_timer = 0;
	
	case PS_PARRY:
	case PS_ROLL_BACKWARD:
	case PS_ROLL_FORWARD:
		if (state_timer == 6 && dodge_duration_timer < dodge_duration_add) {
			dodge_duration_timer++;
			state_timer--;
			window_timer--;
		}
		break;
		
}

//#endregion


//#region Hit/kill detection

if (num_recently_hit > 0) for (var i = 0; i < 20; i++) {
	if (recently_hit[i] != noone) {
		
		// On kill and/or object ceases to exist
		if (!instance_exists(recently_hit[i]) || recently_hit[i].state == PS_DEAD || recently_hit[i].state == PS_RESPAWN) {
			// Topaz Brooch
			var brooches = item_grid[9][4];
			if (brooches > 0) brooch_barrier += 5 + 5 * brooches * nectar_mult; // Topaz Brooch
			recently_hit[i] = noone;
			
			// Benthic Bloom
			if (item_grid[62][4] > 0) {
				for (var j = 0; j < 3; j++) {
					var num_upgradable = 0;
					var upgrade_commons = (uncommon_pool_size > 0 || limitless_mode);
					var upgrade_uncommons = (rares_remaining > 0 || limitless_mode);
					if (upgrade_commons) num_upgradable += common_count;
					if (upgrade_uncommons) num_upgradable += uncommon_count;
					new_item_id = noone;
					if (num_upgradable > 0) {
						var inventory_len = array_length(inventory_list);
						var advances_remaining = random_func(j, num_upgradable, true);
						for (var k = 0; k < inventory_len; k++) {
							var rty = item_grid[inventory_list[k]][1];
							if ((rty == 0 && upgrade_commons) || (rty == 1 && upgrade_uncommons)) {
								for (var num = 0; num < item_grid[inventory_list[k]][4]; num++) {
									if (advances_remaining == 0) new_item_id = inventory_list[k];
									advances_remaining--;
								}
							}
						}
						if (new_item_id != noone) {
							grant_rarity = item_grid[new_item_id][1]+1;
							ue1_command = 2;
							user_event(1);
							ue1_command = 0;
							user_event(1);
							ue1_command = 1;
							item_silenced = true;
							user_event(1);
						} else {
							print_debug("update.gml error: Benthic failed to retrieve an item to upgrade")
						}
					} else j = 3; // break loop if there's nothing to upgrade
				} 
			}
		}
		
		// Opponent has left hitstun
		else if (recently_hit[i].state_cat != SC_HITSTUN) {
			recently_hit[i] = noone;
		}
		
		// Opponent is leaving hitpause
		else if (recently_hit[i].hitstop < 2) {
			// Monster Tooth
			if (tooth_awaiting_spawn[i] != -1) {
				var temp_angle = tooth_awaiting_spawn[i];
				for (var j = 0; j < item_grid[47][4]*nectar_mult; j++) {
					spawn_hit_fx(recently_hit[i].x, recently_hit[i].y-4, fx_tooth_despawn);
					var orb = instance_create(recently_hit[i].x, recently_hit[i].y-4, "obj_article3");
					orb.state = 10;
					var orb_angle = temp_angle - 5 + random_func_2((player*j + 3*j)%200, 10, false);
					orb.hsp = lengthdir_x(7 + random_func_2((player*i + 7*j)%200, 5, false), orb_angle);
					orb.vsp = lengthdir_y(7 + random_func_2((player*j + 5*j)%200, 5, false), orb_angle);
				}
				tooth_awaiting_spawn[i] = -1;
			}
		}
		
	}
}

//#endregion

//#region Item timers/states

// Visual flash effect (Predatory Instincts, Energy Cell)
if (flash_timer > 0) flash_timer--;

// Dashline effects (Arcane Blades, Locked Jewel, FSpecial
if ((item_grid[7][4] > 0 && get_player_damage(player) >= 100) || jewel_barrier_timer > 0) {
	do_wind_streaks = true;
}

// Warbanner
if (commando_warbanner_updated) { 
	commando_warbanner_updated = 0;
	new_item_id = 1;
	user_event(0); // refresh stats
}

// Headstompers
if (item_grid[2][4] != 0) {
	if (stompers_active) {
		if (!free) {
			// Entering the land state automatically destroys melee hitboxes
			stompers_active = false;
			stompers_timer = 0;
			stompers_hbox_air = noone;
			stompers_hbox_ground = noone;
			create_hitbox(AT_EXTRA_1, 6, x, y);
		}
		else if (state_cat == SC_HITSTUN || (vsp < fast_fall && !hitpause)) {
			stompers_active = false;
			if (instance_exists(stompers_hbox_air)) stompers_hbox_air.hitbox_timer = 999; // destroy
			stompers_hbox_air = noone;
			//if (instance_exists(stompers_hbox_ground)) stompers_hbox_ground.hitbox_timer = 999; // destroy
			//stompers_hbox_ground = noone;
		}
	}
	else if (fast_falling && !hitstop && state_cat != SC_HITSTUN) {
		attack_end(AT_EXTRA_1);
		stompers_active = true;
		stompers_timer = 0;
		stompers_hbox_air = create_hitbox(AT_EXTRA_1, 4, x, y);
		//stompers_hbox_ground = create_hitbox(AT_EXTRA_1, 5, x, y);
	}
	land_sound = (stompers_active) ? land_sound_stompers : land_sound_base;
	stompers_timer++;
}

// Bustling Fungus
if (item_grid[4][4] != 0) {
	var attack_crouching = (state == PS_ATTACK_GROUND) && (attack == AT_DTILT || attack == AT_DSPECIAL);
	if (state == PS_CROUCH || attack_crouching) { 
		if (!bungus_active && bungus_timer > 90) {
			bungus_active = 1;
			bungus_timer = 0;
			bungus_vis_timer = 0;
		}
		if (bungus_active && bungus_timer > floor(30/nectar_mult/item_grid[4][4])) {
			bungus_timer = 0;
			do_healing(1);
			for (var i = 0; i < 3; i++) {
				var heal_fx = spawn_hit_fx(x-45+(30*i)+random_func_2(1+i*3, 30, true), y-50+random_func_2(2+i*3, 40, true), fx_item_heal);
				heal_fx.depth = depth-1;
				heal_fx.hit_length = 39+random_func_2(i*3, 7, true);
				heal_fx.vsp = -1;
			}
		}
		bungus_timer++;
		bungus_vis_x = x;
		bungus_vis_y = y;
	}
	else {
		if (bungus_active) bungus_vis_timer = 0;
		bungus_active = 0;
		bungus_timer = 0;
	}
	bungus_vis_timer++;
}

// Guardian Heart
if (item_grid[22][4] != 0) {
	
	if (heart_barrier_endangered && heart_barrier_timer > 300) {
		heart_barrier_endangered = 0;
		heart_barrier_timer = 0;
	}
	if (!heart_barrier_endangered && heart_barrier_timer > 60 && heart_barrier < heart_barrier_max) {
		heart_barrier++;
		heart_barrier_timer = 0;
	}
	heart_barrier_timer++;
	
}

// Locked Jewel
if (jewel_barrier_timer > 0) {
	
	jewel_barrier_timer--;
	if (jewel_barrier_timer == 0 || jewel_barrier == 0) {
		jewel_barrier = 0;
		jewel_barrier_timer = 0;
		new_item_id = 23;
    	user_event(0); // refresh move speed
	}
	
}

// Predatory Instincts
if (instincts_timer > 0) {
	instincts_timer--;
	if (instincts_timer == 0) {
		new_item_id = 26;
		user_event(0); // refresh stats
	}
}

// Legendary Spark
var target = floor((player-1)/4 * 600);
if (item_grid[30][4] > 0 && get_gameplay_time() % 600 == target) {
	// Determine y-position
	var spark_y = y;
	if (free || ground_type == 2) {
		var b_y = get_stage_data(SD_BOTTOM_BLASTZONE_Y);
		// First, check if there's any ground at all. If so, we can save some time.
		if (!collision_line(x, y, x, b_y, asset_get("par_block"), false, false)) {
			spark_y = b_y;
		}
		// Otherwise, we'll have to do a binary search for a valid position
		else {
			var t_y = y;
			var loops = log2(b_y - y);
			for (var i = 0; i < loops; i++) {
				spark_y = (t_y+b_y)/2;
				if (!collision_line(x, y, x, spark_y, asset_get("par_block"), false, false)) {
					t_y = spark_y;
				} else {
					b_y = spark_y;
				}
			}
			spark_y = ceil((t_y+b_y)/2);
		}
	}
	
	var spark = instance_create(x, spark_y, "obj_article3");
	spark.state = 80;
}

// Fireman's Boots
if (item_grid[32][4] > 0) {
	if (fireboots_lockout <= 0) {
		fireboots_distance += abs (x - fireboots_prev_x);
		fireboots_prev_x = x;
		if (free) fireboots_distance = 26;
		if (!free && fireboots_distance >= 26) {
			var burnbox = instance_create(x, y, "obj_article3")
			burnbox.state = 00;
			fireboots_distance = 0;
		}
	}
	else if (state != PS_HITSTUN && state != PS_HITSTUN_LAND && !was_parried) fireboots_lockout--;
}

// Photon Jetpack
if (item_grid[37][4] > 0) { 
	if (!free) {
		pjetpack_fuel = pjetpack_fuel_max;
		pjetpack_available = false;
	}
	else if ((state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP) && state_timer == 0) {
		pjetpack_available = false;
	}
	else if (free && vsp >= -1) {
		pjetpack_available = true;
	}
	
	var inactionable = hitpause || (state_cat == SC_HITSTUN) || (state == PS_PRATFALL) || (state == PS_ATTACK_AIR && get_attack_value(attack, 40));
	if (!inactionable && jump_down && pjetpack_available && pjetpack_fuel > 0) {
		pjetpack_fuel--;
		vsp = clamp(vsp-gravity_speed-0.3, -5, 3);
		if (get_gameplay_time() % 6 == 0) spawn_hit_fx(x, y-10, fx_jetpack_steam);
		if (pjetpack_sound == noone) {
			pjetpack_sound = sound_play(sound_get("jetpack"), true, noone);
		}
	}
	else if (pjetpack_sound != noone) {
		sound_stop(pjetpack_sound);
		pjetpack_sound = noone;
	}
	
	if (free) {
		pjetpack_hud_alpha = clamp(pjetpack_hud_alpha+0.1, pjetpack_hud_alpha, 1);
		pjetpack_vis_fuel = pjetpack_fuel
	} else {
		pjetpack_hud_alpha = clamp(pjetpack_hud_alpha-0.1, 0, pjetpack_hud_alpha);
	}
} else pjetpack_available = false;

// H3AD-5T V2
if (item_grid[38][4] > 0) { 
	// Fast falls
	h3ad_lockout_timer++;
	if (!free) h3ad_lockout_timer = 0;
	if (state_cat == SC_HITSTUN || state == PS_RESPAWN || state == PS_DEAD) can_fast_fall = false;
	if ((state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP) && state_timer == 0) h3ad_lockout_timer = 0;
	else if (h3ad_lockout_timer >= 8 && can_fast_fall && vsp < 0 && down_hard_pressed) {
		vsp = 0;
		do_a_fast_fall = true;
	}
	if (h3ad_was_fast_falling != fast_falling) {
		if (fast_falling) sound_play(asset_get("sfx_land_heavy"));
		h3ad_was_fast_falling = fast_falling;
	}
	
	// Jump attenuation
	if (state == PS_JUMPSQUAT) {
		h3ad_jump_released = false;
		h3ad_jump_timer = jump_down; // short-hop detection
	}
	else if (h3ad_jump_timer > 0) {
		if (!jump_down) {
			h3ad_jump_released = (h3ad_jump_timer != 1);
			h3ad_jump_timer = 0;
		} else {
			h3ad_jump_timer++;
			if (h3ad_jump_timer > 6) h3ad_jump_timer = 0;
		}
	}
	else if (h3ad_jump_released && (state == PS_FIRST_JUMP || state == PS_IDLE_AIR || state == PS_ATTACK_AIR)) {
		if (vsp < 0) vsp -= vsp/10;
		else h3ad_jump_released = false;
	}
	else h3ad_jump_released = false;
}

// Brilliant Behemoth
if (instance_exists(behemoth_hfx) && behemoth_hfx_hitstop > 0) {
	behemoth_hfx_hitstop--;
	behemoth_hfx.step_timer--;
}

// Laser Turbine
if (turbine_stored_charge < 90 || state == PS_DEAD) {
	if (turbine_sfx_instance != noone) {
		sound_stop(turbine_sfx_instance);
		turbine_sfx_instance = noone;
	}
} else if (turbine_sfx_instance == noone) {
	turbine_sfx_instance = sound_play(sound_get("turbinecharge"), 1);
}

// Dio's Best Friend
if (dios_revive_timer > 0) {
	
	dios_revive_timer--;
	set_state(PS_HITSTUN);
	hitstop = 3;
	
	if (dios_revive_timer == 60-1) {
		var res_fx = spawn_hit_fx(x, y, fx_item_res); // uses VFX object due to visible == false disabling drawing
		res_fx.spr_dir = 1;
	}
	
	if (dios_revive_timer == 0) {
		set_state(PS_IDLE_AIR);
		var respawn_damage = get_player_damage(player)
		if (respawn_damage != 0) take_damage(player, player, -respawn_damage)
		take_damage(player, player, dios_stored_damage);
		initial_invince = 1;
		invince_time = 60;
		visible = true;
		
		item_grid[@ 44][@ 4]--;
		item_grid[@ 45][@ 4]++; // spent dios
		if (item_grid[45][4] == 1) array_push(inventory_list, 45);
		
		// Remove Dios from item display
		if (item_grid[44][4] == 0) {
			var i = 0;
			var num_items = array_length(inventory_list)
			while (inventory_list[i] != 44) i++;
			while (i < num_items-1) {
				inventory_list[i] = inventory_list[i+1];
				i++;
			}
			inventory_list = array_slice(inventory_list, 0, num_items-1);
		}
		
		// In practice mode: return Dios to item pool to permit testing
		if (get_match_setting(SET_PRACTICE)) {
			var access_id = item_grid[44][7];
			p_item_remaining[@ 2][@ access_id] += 1;
			p_item_weights[@ 2][@ access_id] += p_item_values[2][access_id];
			rares_remaining++;
		}
		
	}
	
}

else if (dios_revive_timer > -30) {
	dios_revive_timer--;
	if (dios_revive_timer == -30) {
		var popup = instance_create(x-172, y-90, "obj_article2");
		popup.item_id = 45;
	}
}

// 57-Leaf Clover
if (clover_do_test) {
	if (activated_kill_effect) {
		clover_timer = 45;
		clover_active--;
	}
	clover_do_test = false;
}

if (clover_timer == 45) {
	clover_caught = [];
	var _y = y + -20;
	with oPlayer {
        if (collision_circle(other.x, _y, 120, hurtboxID, true, false)) {
            array_push(other.clover_caught, self);
            hitpause = true;
            hitstop = 2;
            hitstop_full = 2;
            invincible = true;
            invince_time = 2;
        }
	}
	spawn_hit_fx(x, _y, HFX_MAY_LEAF_HUGE);
	sound_play(asset_get("sfx_abyss_hazard_start"));
	clover_timer--;
}
else if (clover_timer > 1) {
	for (var i = 0; i < array_length(clover_caught); i++) {
		with clover_caught[i] {
			hitstop = 2;
            hitstop_full = 2;
            invincible = true;
            invince_time = 2;
		}
	}
	clover_timer--;
}
else if (clover_timer == 1) {
	for (var i = 0; i < array_length(clover_caught); i++) {
		with clover_caught[i] {
            hitpause = false;
            hitstop = 0;
            hitstop_full = 0;
            if (state_cat == SC_HITSTUN) {
				invincible = true;
				invince_time = 20;
				hsp = 0;
				vsp = -6;
				set_state(PS_IDLE_AIR);
			} else {
	            invincible = true;
	            invince_time = 2;
			}
		}
	}
	spawn_hit_fx(x, y+-20, HFX_MAY_LEAF_HUGE);
	sound_play(asset_get("sfx_oly_flashstun"));
	clover_caught = [];
	clover_timer--;
}

// Wax Quail
if (item_grid[48][4] > 0) {
	var attack_dashing = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && ((attack == AT_DATTACK && has_hit) || attack == AT_FSPECIAL);
	if (state == PS_DASH || state == PS_DASH_START || attack_dashing) quail_do_boost = true;
	else if (state != PS_JUMPSQUAT && state != PS_FIRST_JUMP && state != PS_AIR_DODGE && state != PS_WAVELAND) quail_do_boost = false;
	
	if (quail_do_boost) {
		if (state == PS_FIRST_JUMP && state_timer == 0) {
			hsp = spr_dir * (max_jump_hsp + 1 + 1*item_grid[48][4]);
			spawn_base_dust(x, y, "dash_start");
			quail_burst_obj = spawn_base_dust(x-(14*spr_dir), y-42, "djump");
			quail_burst_obj.draw_angle = -90*spr_dir;
			sound_play(asset_get("sfx_birdflap"));
		}
		if (state == PS_WAVELAND && state_timer == 0) {
			var waveland_dir = (hsp == 0) ? 0 : round(hsp/abs(hsp))
			if (waveland_dir == spr_dir) {
				hsp += spr_dir * (2 + 3*item_grid[48][4]);
			} else if instance_exists(quail_burst_obj) {
				quail_burst_obj.step_timer = 999; // destroy
			}
			quail_burst_obj = noone; // We no longer need to track this
		}
	}
}

// Filial Imprinting / Legendary Spark
var filial_outline_type = 0;
var filial_fx = noone;

if (filial_speed_timer > 0) {
	filial_outline_type = 1;
	filial_speed_timer--;
	if (filial_speed_timer == 0) {
		filial_outline_type = -1;
		filial_do_update = true;
	}
	if (get_gameplay_time() % 24 == 0) filial_fx = spawn_hit_fx(x+30, y-random_func_2(player+5, char_height, true), fx_sucker_buff_blue);
	if (get_gameplay_time() % 24 == 12) filial_fx = spawn_hit_fx(x-30, y-random_func_2(player+5, char_height, true), fx_sucker_buff_blue);
}

if (filial_aspeed_timer > 0) {
	if (filial_outline_type == 1) filial_outline_type = 3;
	else filial_outline_type = 2;
	filial_aspeed_timer--;
	if (filial_aspeed_timer == 0) {
		filial_outline_type = (filial_outline_type == 3) ? 1 : -1;
		filial_do_update = true;
	}
	if (get_gameplay_time() % 24 == 6) filial_fx = spawn_hit_fx(x+30, y-random_func_2(player+5, char_height, true), fx_sucker_buff_red);
	if (get_gameplay_time() % 24 == 18) filial_fx = spawn_hit_fx(x-30, y-random_func_2(player+5, char_height, true), fx_sucker_buff_red);
}

if (spark_buff_timer > 0) {
	if (get_gameplay_time() % 24 == 0) filial_fx = spawn_hit_fx(x+30, y-random_func_2(player+5, char_height, true), fx_sucker_buff_blue);
	if (get_gameplay_time() % 24 == 12) filial_fx = spawn_hit_fx(x-30, y-random_func_2(player+5, char_height, true), fx_sucker_buff_blue);
	if (get_gameplay_time() % 24 == 6) filial_fx = spawn_hit_fx(x+30, y-random_func_2(player+5, char_height, true), fx_sucker_buff_red);
	if (get_gameplay_time() % 24 == 18) filial_fx = spawn_hit_fx(x-30, y-random_func_2(player+5, char_height, true), fx_sucker_buff_red);
	spark_buff_timer--;
	if (spark_buff_timer == 0) {
		if (filial_outline_type == 0) filial_outline_type = -1;
		spark_do_update = true;
	} else {
		filial_outline_type = 3;
	}
}

if (filial_do_update) {
	new_item_id = 49;
	user_event(0);
	filial_do_update = false;
	spark_do_update = false; // filial covers the same bases
}

if (spark_do_update) {
	new_item_id = 30;
	user_event(0);
}

if (filial_fx != noone) filial_fx.depth = depth-1;

if (filial_outline_type != 0) {
	var filial_outline = noone;
	switch filial_outline_type {
		case 3:
			filial_outline = filial_double_outline;
			break;
		case 2:
			filial_outline = filial_aspeed_outline;
			break;
		case 1:
			filial_outline = filial_speed_outline;
			break;
		default:
			filial_outline = [0, 0, 0];
			break;
	}
	
	if (!array_equals(filial_outline, outline_color)) {
		outline_color = filial_outline;
		init_shader();
	}
}

// Fire Shield
if (fshield_damage != 0) {
	if (!hurtboxID.dodging) fshield_triggered = false;
	else if (!fshield_triggered) {
		var _y = y-10;
		with (pHitBox) {
			var can_hit = !other.fshield_triggered && (get_match_setting(SET_TEAMATTACK) ? self.player != other.player : get_player_team(player) != get_player_team(other.player));
			if (can_hit && collision_circle(other.x, _y, 60, self, true, false)) other.fshield_triggered = true;
		}
		if (fshield_triggered) {
		    spawn_hit_fx(x, _y, HFX_ZET_SHINE_BIG_FG);
		    sound_play(asset_get("sfx_burnapplied"));
		    with oPlayer {
		        var can_hit = get_match_setting(SET_TEAMATTACK) ? self != other : get_player_team(player) != get_player_team(other.player);
		        if (can_hit && collision_circle(other.x, _y, 100, hurtboxID, true, false)) {
		            burned = true;
		            burnt_id = other;
		            burn_timer = 150 - 30*other.fshield_damage;
		            burned_color = 0;
		            init_shader();
		        }
		    }
		}
	}
}

// Trophy Hunter's Tricorn
if (state != PS_ATTACK_GROUND && do_tricorn_remove) {
	do_tricorn_remove = false;
	new_item_id = 53;
	ue1_command = 2;
	user_event(1);
	new_item_id = 54;
	ue1_command = 1;
	user_event(1);
}


//#endregion

//#region Damage management (Barriers/state changes)

if (old_damage != get_player_damage(player)) {
	
	// Barrier handling
	var damage_taken = get_player_damage(player) - old_damage;
	if (damage_taken > 0) {
		jewel_barrier = do_barrier(damage_taken, jewel_barrier);
		heart_barrier = do_barrier(damage_taken, heart_barrier);
		aegis_barrier = do_barrier(damage_taken, aegis_barrier);
		brooch_barrier = do_barrier(damage_taken, brooch_barrier);
	}
	
	// Arcane Blades stat update
	if ((item_grid[7][4] > 0) && ((old_damage >= 100) != (get_player_damage(player) >= 100))) {
		new_item_id = 7;
		user_event(0);
	}
	
	// Energy Cell
	if (item_grid[50][4] > 0) {
		new_item_id = 50;
	    user_event(0);
	}
	
	old_damage = get_player_damage(player);
	
}

var barrier = floor(brooch_barrier + heart_barrier + jewel_barrier + aegis_barrier);

if (barrier > 0) {
	if (hud_barrier_fade_alpha < 0.8) hud_barrier_fade_alpha += 0.1;
} else {
	if (hud_barrier_fade_alpha > 0) hud_barrier_fade_alpha -= 0.1;
}

//#endregion


//#region hitbox_update (for the sake of melee hitboxes)
with pHitBox if (player_id == other) {
	var nectar_mult = player_id.nectar_mult;
	// Init
	if (hitbox_timer == 0) {
		with (other) {
			other.cmd_is_critical = get_hitbox_value(other.attack, other.hbox_num, 80);
			other.cmd_strong_finisher = get_hitbox_value(other.attack, other.hbox_num, 82);
			other.cmd_is_explosive = get_hitbox_value(other.attack, other.hbox_num, 83);
			other.cmd_is_gunshot = get_hitbox_value(other.attack, other.hbox_num, 84);
			other.cmd_behemoth_applied = (item_grid[43][4] > 0) && other.cmd_is_gunshot;
			if (shaped_glass_active) other.damage *= 2;
		}
		if (cmd_is_critical) {
			if (player_id.item_grid[10][4] > 0) { // Lens Maker's Glasses
				damage += 2 + 2 * player_id.item_grid[10][4] * nectar_mult;
			}
		}
		if (cmd_strong_finisher) {
			if (player_id.item_grid[3][4] > 0) { // Armor-Piercing Rounds
				damage += 2 * player_id.item_grid[3][4] * nectar_mult;
				kb_value += 0.75 * player_id.item_grid[3][4] * nectar_mult;
				kb_scale += 0 * player_id.item_grid[3][4] * nectar_mult;
			}
			if (player_id.item_grid[19][4] > 0) { // Runald's Band
				kb_scale += 0.1 * player_id.item_grid[19][4];
				hitpause += 8;
				extra_hitpause += 4;
			}
		}
		if (cmd_strong_finisher || cmd_behemoth_applied) {
			orig_lockout = no_other_hit;
			if (cmd_behemoth_applied) no_other_hit = 0; // ATG should also trigger this eventually
		}
		if (attack == AT_EXTRA_1 && 4 <= hbox_num && hbox_num <= 6) { // headstompers
			// since damage scaling is non-integer, it has to be handled on-hit ~ see hit_player.gml
			hitpause += 1 * player_id.item_grid[2][4] * nectar_mult
		}
	}
}
//#endregion

//#region Rune for free rare (post-init)
if (get_gameplay_time() == 1) {
	if (has_rune("L")) { // spawns an orb for clarity reasons
        var seed = 0;
        with oPlayer {
            if ("url" not in self || url == "") seed += (player + 1) * player;
            else {
                var mult = (player + 1) * player;
                seed += real(url) * player;
                seed %= 200;
            }
            item_seed = seed;
        }
        var item = instance_create(x, y-10, "obj_article3");
        item.rarity = 2;
        item.state = 20;
    }
}
//#endregion


//#region Reset fractional damage on enemy death
with object_index {
    if (!clone && (state == PS_DEAD || state == PS_RESPAWN)) {
        u_mult_damage_buffer = 0;
    }
}
//#endregion

//#region Death message
if (final_death_timer > 0) final_death_timer--;
//#endregion


#define do_healing(amount)
// Helper function to ensure that Aegis is always accounted for.
take_damage(player, player, -amount);
aegis_barrier += aegis_ratio * item_grid[42][4] * amount;


#define do_barrier(damage_taken, barrier_val)
// Applies a barrier to absorb damage taken. (Assumes damage_taken > 0)
// Returns the new value for the barrier.
if (damage_taken > barrier_val) {
	take_damage(player, player, -floor(barrier_val));
	barrier_val = barrier_val - floor(barrier_val);
} else {
	take_damage(player, player, -damage_taken);
	barrier_val -= damage_taken;
}
return barrier_val;


#define spawn_lfx(in_sprite, _x, _y, in_lifetime, in_spr_dir, in_foreground, in_hsp, in_vsp)
var new_lfx = {
    lfx_x : _x,
    lfx_y : _y,
    lfx_sprite_index : in_sprite,
    lfx_max_lifetime : in_lifetime,
    lfx_lifetime : 0,
    lfx_spr_dir : in_spr_dir,
    lfx_foreground : in_foreground,
    lfx_hsp : in_hsp,
    lfx_vsp : in_vsp,
};
ds_list_add(lfx_list, new_lfx);


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



#define random_weighted_roll(seed, weight_array)
// Picks one index from a given array of weights.
// Each index's odds of being picked is (weight at index) / (total of weights in array)
// Uses random_func_2, so 0 <= seed <= 200.
var array_len = array_length(weight_array);
var total_weight = 0;
for (var i = 0; i < array_len; i++) {
	total_weight += weight_array[i];
}
// on each loop, check if rand_int is less than the sum of all previous weights
var rand_int = random_func_2(seed, total_weight, true);
// print_debug(string(rand_int) + " " + string(total_weight));
for (var i = 0; i < array_len; i++) {
	if (rand_int < weight_array[i]) {
		// print_debug("In: " + string(weight_array) + ", Out: " + string(i));
		return i;
	}
	rand_int -= weight_array[i];
}