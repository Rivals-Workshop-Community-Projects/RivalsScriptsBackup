//This is for code that had to be moved to another file since update.gml was getting too big
//Yeah, turns out if your file is too long Rivals just can't read it anymore...
//Is that a sign that there's something terribly, fundamentally wrong with my character's design? Yes absolutely!
//Do I care? No way girl

switch(event3_context) {
	case "pre-update":
		muno_event_type = 1; user_event(14); //MunoPhone Touch stuff :3
		
		if(mirror_spr_dir != 0) {
			spr_dir = mirror_spr_dir;
			mirror_spr_dir = 0;
		}
		
		//First Update actions
		if(first_update || (was_reloaded && get_gameplay_time() < init_time + -600)) {
			if(first_update) {
				first_update = false;
				if("fake_stock" in self) {
					boss_hud = true;
					stage_boss = true;
				}
			}
			
			// event4_phase = "update"; user_event(4);
			if(stage_boss || enemy_boss) {
				set_victory_theme(sound_get("victory_" + neo_char.prefix + "castle"));
			}
		}
		
		//Intro Effects
		if(get_gameplay_time() == intro_timing) {
			sound_play(sound_get("mario_start"), false, noone, 1, 1);
		}
		//Randomize victory background
		if(get_gameplay_time() % 60 == 0) {
			set_victory_bg(sprite_get("victory_bg_" + string(random_func(1, 4, true) + 1)));
		}
		
		//Limit Rivals behaviours as much as possible
		can_fast_fall = false;
		do_a_fast_fall = false;
		fast_falling = false;
		can_wall_jump = false;
		can_air_dodge = false;
		can_tech = false;
		can_wall_tech = false;
		go_through = true;
		
		//Prepare some Neo Mario variables in advance
		animation_frozen = false;
		cancel_state_processing = false;
		
		neo_draw_x = 0;
		neo_draw_y = 0;
		
		//Reset compat variables
		training_town_crouch = false;
		fs_force_fs = false;
		
		no_override = (override_anim_timer <= 0 && override_anim_timer != -1);
		get_inputs(); //if(player == 2) down_down = true;
		
		//#mark Evaluate movetype
		move_type = MOVESTATS_OBJ.normal; move_air = MOVESTATS_AIR_OBJ.normal; echoing_voice = false;
		var on_puddle = false;
		with(asset_puddle_obj) {
			if(collision_line(get_instance_x(self) + 1 - 26, get_instance_y(self) - 5, get_instance_x(self) + 1 + 26, get_instance_y(self) - 5, other, true, false)) {
				on_puddle = true;
				other.puddle_colour = c_white;
			}
		}
		
		if(phone_cheats[CHEAT_ALWAYSONICE] != undefined) move_type = phone_cheats[CHEAT_ALWAYSONICE];
		else if(neo_data.starman_time > 0) {
			move_type = MOVESTATS_OBJ.starman;
			move_air = MOVESTATS_AIR_OBJ.starman;
			echoing_voice = true;
		}
		else if(agent4_data != undefined && agent4_data.in_ink_time == get_gameplay_time()) {
			move_type = MOVESTATS_OBJ.agent4_ink;
		}
		else if(place_meeting(x, y, asset_wolf_grass_obj)) {
			move_type = MOVESTATS_OBJ.grass;
		}
		else if(movetype_override != undefined) {
			if(is_string(movetype_override))
				move_type = variable_instance_get(MOVESTATS_OBJ, movetype_override, MOVESTATS_OBJ.normal);
			else
				move_type = movetype_override;
			
			if(move_type.floortype != "default") floortype_override = undefined;
		}
		else if(on_puddle) move_type = MOVESTATS_OBJ.puddle;
		else if(place_meeting(x, y + 5, asset_get("ice_obj"))) {
			move_type = MOVESTATS_OBJ.ice;
		}
		else if(instance_exists(carry_obj) && carry_obj.object_index != oPlayer && carry_obj.object_index != oTestPlayer && carry_obj.player_id.url == url && object_index == obj_article_solid && carry_obj.variant == "heavy stone") {
			move_type = MOVESTATS_OBJ.superheavy;
			move_air = MOVESTATS_AIR_OBJ.superheavy;
		}
		
		if(move_type.floortype != undefined)
			floor_type = move_type.floortype;
		else if(floortype_override != undefined)
			floor_type = floortype_override;
		else
			floor_type = (free || (ground_type == 2))?default_floortype_plats:default_floortype;
		
		floortype_override = undefined; movetype_override = undefined;
		
		//Ranno swallow functionality
		if(ranno_swallow != noone) {
			if(instance_exists(ranno_swallow)) {
				cancel_state_processing = true;
				
				//Exit conditions
				repeat(1) {
					if(ranno_swallow.state != PS_ATTACK_GROUND && ranno_swallow.state != PS_ATTACK_AIR) {
						ranno_swallow = noone;
						print_debug("ranno has left attacking state???");
						continue;
					}
					
					if(ranno_swallow.attack != AT_DSPECIAL && ranno_swallow.attack != AT_DSPECIAL_AIR) {
						ranno_swallow = noone;
						print_debug("ranno has entered a different attack??!?!?!");
						continue;
					}
					
					if(state != PS_HITSTUN) {
						ranno_swallow = noone;
						print_debug("escaped Ranno swallow???");
						continue;
					}
					
					if(ranno_swallow.window == 6 && ranno_swallow.window_timer == 10) {
						with(ranno_swallow) { set_state(PS_LANDING_LAG); landing_lag_time = 16; }
						set_attack(AT_NSPECIAL);
						create_deathbox(floor(x), floor(y - 16), 64, 64, player, true, 1, 2, 1);
						ranno_swallow = noone;
						continue;
					}
				}
			}
			else {
				ranno_swallow = noone;
			}
		}
		
		//Enter NSpecial when actionable
		var in_nspecial_or_phone = (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_NSPECIAL || attack == AT_PHONE);
		// var legal_state_transition = (state != PS_PRATLAND && state != PS_SPAWN && state != PS_DEAD && state != PS_RESPAWN);
		var legal_state_transition = state == PS_DASH || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL || state == PS_HITSTUN_LAND;
		if(!in_nspecial_or_phone && legal_state_transition && !hitpause && !bubbled) {
			if(nspecial_leniency_timer > 0) {
				nspecial_leniency_timer--;
			}
			else if(nspecial_leniency_timer != -1) {
				// if(debug_nspecial_entry) print_debug("entered NSpecial from " + get_state_name(state));
				
				// sound_play(sound_get("bookworm_gem"));
				// print_debug("entered NSpecial from " + get_state_name(state));
				set_attack(AT_NSPECIAL);
			}
		}
		if(state == PS_RESPAWN && visible) {
			set_attack(AT_NSPECIAL);
			// change_neostate("Respawn Plat", "Roulette Selection", "idle");
			// neo_power = POWER_OBJ.fire_flower;
			anim_is_flickering = false;
			// if(debug_nspecial_entry) print_debug("entered Respawn Plat state from respawn");
		}
		
		mask_override = "none";
		
		// print(`${hitpause}; ${hitstop}`)
		
		if(state == PS_PRATFALL) {
			if(vsp < MOVESTATS_AIR_OBJ.normal.fall_speed) vsp += MOVESTATS_AIR_OBJ.normal.fall_accel;
		}
	break;
	case "early update":
		if(state == PS_HITSTUN) {
			if(neo_state == "Helpless" || (neo_state == "Cutscene" && neo_substate == "Death")) {
				hitstun_grav = 0;
				hitstun++;
				dumb_di_mult = 0;
			}
			else set_attack(AT_NSPECIAL);
		}
		else hitstun_grav = move_air.fall_accel * 0.85;
		
		neo_armor = false; super_armor = false; damage_scaling = 1.4; knockback_adj = 1.1;
		in_shell = false;
		helpless_darken = false;
		reserve_allowed = true;
		performed_stomp = false;
		performed_shell_slide = false;
		play_skid_freq = 0;
		dust_status = neo_substate;
		render_holp = false;
		neo_state_changed = false; neo_substate_changed = false; neo_animstate_changed = false;
		holp_player_escapable = false;
		reserve_blocked = false;
		override_ignore = true;
		prohibit_stomp = false;
		resist_carrier_holp_dir = false;
		
		mask_stance = "stand_";
		disjoint_level = 0;
		char_height = neo_power.size_profile.height_normal;
		
		if(found_hitpause) free = true;
		
		if(give_flicker_frames > 0 && neo_state != "Helpless") {
			invincible = 2; invince_time = give_flicker_frames;
			give_flicker_frames = 0;
		}
	break;
	case "post-update":
		//Bounce Discriminator
		bounce_discriminator(evaluate_stomp());
		
		stomped_player = false;
		stomped_clone = false;
		stomp_parried = false;
		found_hitpause = false;
		stomped_success = false;
		
		if(instance_exists(stomp_hitbox) && !performed_stomp) instance_destroy(stomp_hitbox);
		if(instance_exists(shell_hitbox) && !performed_shell_slide) instance_destroy(shell_hitbox);
		
		//Mario is immune to poison because it doesn't really work on him
		poison = false; //TODO: Make my own poison code maybe?
		
		//#mark Process Echoing Voice
		if(array_length(schedule_echo_sfx) > 0) {
			var found_voice_sfx = false;
			for(var counteroo = 0; counteroo < array_length(schedule_echo_sfx); counteroo++) {
				var order = schedule_echo_sfx[counteroo];
				if(order == noone) continue;
				
				found_voice_sfx = true;
				
				if(get_gameplay_time() >= order.at_time) {
					schedule_echo_sfx[counteroo] = noone;
					// if(debug_echoes) print_debug("Playing echo of " + order.full_name);
					
					var echo_sfx_instance = sound_play(sound_get(order.full_name), false, noone, order.volume / 2, neo_power.size_profile.voice_pitch);
					array_push(echo_array, echo_sfx_instance);
				}
			}
			
			if(!found_voice_sfx) {
				schedule_echo_sfx = [];
				// if(debug_echoes) print_debug("Echo schedule is empty; clearing");
			}
		}
		
		//Projectile hitpause behaviour
		with(pHitBox) { //TODO: use an array of projectiles in hitpause rather than iterating through all projectiles like a dummy
			if(in_hitpause && "neo_hitstop" in self) {
				neo_hitstop--;
				if(neo_hitstop <= 0) {
					in_hitpause = false;
					hsp = old_hsp;
					vsp = old_vsp;
					getting_bashed = false;
				}
			}
		}
		
		//Low timer & music suppression
		if(!low_timer && get_game_timer() < 3600) {
			low_timer = true;
			music_suppression_time = 162;
			sound_play(sound_get("hurry_up"));
		}
		if(music_suppression_time) {
			music_suppression_time--;
			suppress_stage_music(0.1, (music_suppression_time <= 0)?0.02:0.25);
		}
		
		//Random silly things
		if(neo_power.name != prev_neo_power_name) {
			prev_neo_power_name = neo_power.name;
			neo_data_compat.has_tail = false;
			am_has_tail = false;
			link_spear_drop = 1; //Traveler's Spear
			
			
			//If I add the Super Acorn I need to update this, since Flying Squirrel Mario also has a tail :)
			if(neo_power.name == "Tanooki Leaf") {
				
			}
			switch(neo_power.name) {
				case "Tanooki Leaf":
					//this is pointless because it only matters for characters who can't actually equip the Leaf
					neo_data_compat.has_tail = true;
					am_has_tail = true;
				break;
				case "Fire Flower":
					link_spear_drop = 5; //Flamespear
				break;
				case "Ice Flower":
					link_spear_drop = 6; //Frostspear
				break;
			}
		}
		if(neo_char.name != prev_neo_char_name) {
			prev_neo_char_name = neo_char.name;
			set_victory_portrait(sprite_get("char_" + neo_char.unique_prefix + "victory"));
		}
		
		//Munophone Behaviour
		muno_char_name = ((neo_power.has_alts && neo_char.use_alts)?neo_power.alt_display_prefix:neo_power.display_prefix) + neo_char.name;
		if(phone_cheats_updated[CHEAT_POWER_STATE]) {
			phone_cheats_updated[CHEAT_POWER_STATE] = false;
			neo_power = phone_cheats[CHEAT_POWER_STATE];
		}
		if(phone_cheats_updated[CHEAT_RESERVE_CONTENTS]) {
			phone_cheats_updated[CHEAT_RESERVE_CONTENTS] = false;
			reserve_slot = phone_cheats[CHEAT_RESERVE_CONTENTS];
		}
		if(phone_cheats_updated[CHEAT_CHANGE_CHAR]) {
			phone_cheats_updated[CHEAT_CHANGE_CHAR] = false;
			neo_char = phone_cheats[CHEAT_CHANGE_CHAR];
		}
		if(phone_cheats[CHEAT_NOHUD]) draw_indicator = false;
		if(phone_cheats[CHEAT_FIRESPAM]) {
			first_fireball_time = -100;
			allow_fireballs_time = -100;
		}
	break;
}

#define get_inputs
	input_run = attack_down || special_down; input_run_pressed = (attack_pressed && !special_down) || (special_pressed && !attack_down);
	input_jump = jump_down; input_jump_pressed = jump_pressed;
	input_spin = shield_down; input_spin_pressed = shield_pressed;
	
	//Complex inputs
	input_grab = input_run;
	input_grab_pressed = input_run_pressed;
	
	input_lift = right_stick_down || left_stick_down || input_run;
	input_lift_pressed = (right_stick_pressed || left_stick_pressed) || (input_run && input_spin_pressed);
	
	input_roll = down_stick_down || (down_down && input_spin);
	input_roll_pressed = down_stick_pressed || (down_down && input_spin_pressed);
	
	input_reserve = up_stick_down || (attack_down && special_down);
	input_reserve_pressed = up_stick_pressed || (attack_down && special_pressed) || (attack_pressed && special_down);

#define queue_change_neostate(new_neostate, new_substate, new_animstate)
	if(!queued_change_neostate[0]) queued_change_neostate = [true, new_neostate, new_substate, new_animstate];

#define queue_play_prog_sfx
/// queue_play_prog_sfx(prog_sfx, pitch_mod = null, value = consecutive_stomps)
var prog_sfx = argument[0];
var pitch_mod = argument_count > 1 ? argument[1] : null;
var value = argument_count > 2 ? argument[2] : consecutive_stomps;
	if(!queued_play_prog_sfx[0]) queued_play_prog_sfx = [true, prog_sfx, pitch_mod, value];

#define queue_earn_coins_for
/// queue_earn_coins_for(x, y, give_to = id, asset_owner = id, quantity = 1, moving = false)
var x = argument[0], y = argument[1];
var give_to = argument_count > 2 ? argument[2] : id;
var asset_owner = argument_count > 3 ? argument[3] : id;
var quantity = argument_count > 4 ? argument[4] : 1;
var moving = argument_count > 5 ? argument[5] : false;
	if(!queued_earn_coins_for[0]) queued_earn_coins_for = [true, x, y, give_to, asset_owner, quantity, moving];

#define queue_earn_points_for
/// queue_earn_points_for(x = self.x, y = self.y, give_to = id, asset_owner = id, value = consecutive_stomps)
var x = argument_count > 0 ? argument[0] : self.x;
var y = argument_count > 1 ? argument[1] : self.y;
var give_to = argument_count > 2 ? argument[2] : id;
var asset_owner = argument_count > 3 ? argument[3] : id;
var value = argument_count > 4 ? argument[4] : consecutive_stomps;
	if(!queued_earn_points_for[0]) queued_earn_points_for = [true, x, y, give_to, asset_owner, value];

#define queue_earn_life_for
/// queue_earn_life_for(x = self.x, y = self.y, give_to = id, asset_owner = id, coin_life = false)
var x = argument_count > 0 ? argument[0] : self.x;
var y = argument_count > 1 ? argument[1] : self.y;
var give_to = argument_count > 2 ? argument[2] : id;
var asset_owner = argument_count > 3 ? argument[3] : id;
var coin_life = argument_count > 4 ? argument[4] : false;
	if(!queued_earn_life_for[0]) queued_earn_life_for = [true, x, y, give_to, asset_owner, coin_life];

#define queue_flotbox(flotbox_identity, x, y)
	if(!queued_flotbox[0]) queued_flotbox = [true, flotbox_identity, x, y];

#define evaluate_stomp
	if(last_stomp_data.time < get_gameplay_time() - 1) {
		return("too old");
	}
	
	if(stomp_parried) return(last_stomp_data.type.parry_function);
	if(stomped_clone) return(last_stomp_data.type.clone_function);
	if(stomped_player) return(last_stomp_data.type.player_function);
	if(found_hitpause) return(last_stomp_data.type.hitpause_function);
	
	if(instance_exists(last_stomp_data.hitbox)) {
		switch(last_stomp_data.type.hitbox_interaction) {
			case "destroy projectiles":
				with(pHitBox) {
					if(player_id != other && type == 2 && !transcendent && !unbashable && (place_meeting(x, y, other.last_stomp_data.hitbox) || place_meeting(x + hsp - other.hsp, y + vsp - other.vsp, other.last_stomp_data.hitbox))) {
						var vanquish = true;
						
						for(var counteroo = 0, total = array_length_1d(other.UNSTOMPABLE_HITBOXES); counteroo < total; counteroo++) {
							var check_attack = other.UNSTOMPABLE_HITBOXES[counteroo];
							if(attack == check_attack.attack)
								if(check_attack.hbox_num == -1 || hbox_num == check_attack.hbox_num)
									vanquish = false;
						}
						
						if(player_id.object_index != oPlayer && player_id.object_index != oTestPlayer && hsp == 0 && vsp == 0)
							vanquish = false;
						
						if(vanquish) {
							destroyed = true;
							can_hit[other.player] = false;
							return(other.last_stomp_data.type.hitbox_function);
						}
					}
				}
			break;
			case "bounce":
				with(pHitBox) if(player_id != other && place_meeting(x, y, other.last_stomp_data.hitbox)) {
					can_hit[other.player] = false;
					return(other.last_stomp_data.type.hitbox_function);
				}
			break;
		}
		
		if(!free && last_stomp_data.type.name == "Ground Pound") {
			with(last_stomp_data.hitbox)
				var hit_pillar = instance_place(x, y, player_id.asset_pillar_obj);
			
			if(hit_pillar != noone) {
				var pillar_x = get_instance_x(hit_pillar), pillar_y = get_instance_y(hit_pillar);
				if(neo_power.name == "Depowered") var break_pillar = false;
				else {
					var break_pillar = jump_down || consecutive_stomps % 8 == 7;
					if(!break_pillar) with(hit_pillar)
						break_pillar = collision_point(pillar_x - 45, pillar_y + 20, other.asset_par_block, false, true)
								&& collision_point(pillar_x, pillar_y + 20, other.asset_par_block, false, true)
								&& collision_point(pillar_x + 45, pillar_y + 20, other.asset_par_block, false, true);
				}
				if(break_pillar) {
					queue_flotbox(ATTACKS_OBJ.pillar_breaker, pillar_x, pillar_y + 30);
					return("pound_pillar_final");
				}
				else {
					return("pound_pillar");
				}
			}
		}
	}
	
	return("none");

#define bounce_discriminator(evaluation)
	if(neo_state == "Cutscene" || evaluation == "none" || evaluation == "too old") return(false);
	
	var old_queue_first_index = queued_change_neostate[0];
	queue_change_neostate(last_stomp_data.new_neostate, last_stomp_data.new_substate, last_stomp_data.new_animstate);
	queued_change_neostate[0] = old_queue_first_index; //allow the bounce response function to change the neostate if it wants to
	switch(evaluation) {
		case "stomp_player":		bounce_stomp(0, PROG_SFX_OBJ.stomp); break;
		case "stomp_clone":			bounce_stomp(3, PROG_SFX_OBJ.yoshi_stomp); break;
		case "stomp_hitpause":		bounce_stomp(1, PROG_SFX_OBJ.stomp); break;
		case "stomp_projectile":	bounce_stomp(5, PROG_SFX_OBJ.stomp); break;
		case "stomp_parried":		bounce_stomp_parried(); break;
		
		case "pound":				bounce_pound(); break;
		case "pound_parried":		bounce_pound_parried(); break;
		case "pound_pillar":		bounce_pound_pillar(false); break;
		case "pound_pillar_final":	bounce_pound_pillar(true); break;
		
		case "spin_bounce":			bounce_spin(1, PROG_SFX_OBJ.spin_stomp, 0.5); break;
		case "spin_hitpause":		bounce_spin(1, PROG_SFX_OBJ.spin_stomp, 1); break;
		case "spin_hitbox":			bounce_spin_hitbox(); break;
		case "spin_parried":		bounce_spin_parried(); break;
		
		default:
			sound_play(sound_get("bookworm_buzzer"));
			print_debug("Invalid stomp evaluation: " + evaluation);
		break;
	}
	queued_change_neostate[0] = true;

#define bounce_velocities(mult_vsp, add_vsp, mult_hsp, add_hsp)
	if(hitpause) {
		old_vsp *= mult_vsp; old_vsp += add_vsp; old_hsp *= mult_hsp; old_hsp += add_hsp;
	}
	else {
		vsp *= mult_vsp; vsp += add_vsp; hsp *= mult_hsp; old_hsp += add_hsp;
	}

#define bounce_stomp(coins, prog_sfx)
	//Bounce
	bounce_velocities(0, -15.75, (abs(hitpause?old_hsp:hsp) < move_air.fast_drift_speed)?0.5:1.0, random_func(0, 1, false) * consecutive_stomps - (0.5 * consecutive_stomps));
	neo_substate = "Stomp";
	wall_jump_y = 0;
	if(!free) y--;
	
	//Effects
	queue_play_prog_sfx(prog_sfx);
	create_burst_decal();
	
	//Rewards
	queue_earn_coins_for(x, y, id, id, coins);
	queue_earn_points_for(x, y, id, id, QMP_POINTS_ARRAY[consecutive_stomps % 8]);
	if(abs(hsp) > move_air.slow_drift_speed) p_speed += 0.5;
	if(neo_animstate == "run_jump" && p_speed >= 0.99) p_flashing = true;
	if(consecutive_stomps % 8 == 7) queue_earn_life_for(x, y - char_height - 10);
	consecutive_stomps++;

#define bounce_stomp_parried
	//Bounce
	bounce_velocities(0, -15.75, 0, 0);
	queue_change_neostate("Helpless", "Parried", "jump");
	
	//Effects
	queue_play_prog_sfx(PROG_SFX_OBJ.heavy_stomp, 0);
	create_burst_decal();
	
	//Rewards
	consecutive_stomps = 0;

#define bounce_pound
	//Bounce
	// if(!free) y--;
	
	//Effects
	queue_play_prog_sfx(PROG_SFX_OBJ.kick);
	make_stars(0, 0);
	
	//Rewards
	queue_earn_coins_for(x, y, id, id, 3);
	queue_earn_points_for(x, y, id, id, QMP_POINTS_ARRAY[consecutive_stomps % 8]);
	if(consecutive_stomps % 8 == 7) queue_earn_life_for(x, y - char_height - 10);
	consecutive_stomps++;

#define bounce_pound_parried
	//Bounce
	var bonk_dir = sign(x - stomped_id.x); if(bonk_dir == 0) bonk_dir = -1 * spr_dir;
	bounce_velocities(0, -1, 0, bonk_dir * 4);
	queue_change_neostate("Bonk", "Parried", "bonk");
	spr_dir = -1 * bonk_dir;
	
	//Effects
	queue_play_prog_sfx(PROG_SFX_OBJ.heavy_stomp, 0);
	create_burst_decal();
	
	//Rewards
	consecutive_stomps = 0;

#define bounce_pound_pillar(final)
	//Bounce
	queue_change_neostate("Aerial", jump_down?"Jump":"Pound Pillar", final?"jump":"somersault");
	bounce_velocities(0, final?-19:-6.75, 0, 0);
	
	//Effects
	queue_play_prog_sfx(PROG_SFX_OBJ.kick);
	make_stars(0, 0);
	
	//Rewards
	queue_earn_coins_for(x, y, id, id, final?5:3);
	queue_earn_points_for(x, y, id, id, QMP_POINTS_ARRAY[consecutive_stomps % 8]);
	if(consecutive_stomps % 8 == 7) queue_earn_life_for(x, y - char_height - 10);
	consecutive_stomps++;

#define bounce_spin(coins, prog_sfx, hsp_throw_factor)
	//Bounce
	bounce_velocities(0, -15.75, 0, (consecutive_stomps >= 4)?(hsp_throw_factor * (random_func(0, consecutive_stomps * 2, false) - (consecutive_stomps))):0);
	neo_substate = "Stomp"; if(!free) y--;
	
	//Effects
	queue_play_prog_sfx(prog_sfx);
	create_burst_decal();
	
	//Rewards
	queue_earn_coins_for(x, y, id, id, coins);
	queue_earn_points_for(x, y, id, id, QMP_POINTS_ARRAY[consecutive_stomps % 8]);
	if(consecutive_stomps % 8 == 7) queue_earn_life_for(x, y - char_height - 10);
	consecutive_stomps++;

#define bounce_spin_hitbox
	//Bounce
	bounce_velocities(0, -15.75, 1, 0);
	
	//Effects
	sound_play(sound_get("stomp_spike"));
	create_burst_decal();
	
	//Rewards
	

#define bounce_spin_parried
	//Bounce
	bounce_velocities(0, -15.75, 0, sign(x - room_width / 2) * 6);
	queue_change_neostate("Helpless", "Parried", "spin");
	
	//Effects
	queue_play_prog_sfx(PROG_SFX_OBJ.heavy_stomp, 0);
	create_burst_decal();
	
	//Rewards
	consecutive_stomps = 0;


//DUPLICATES FROM UPDATE.GML BELOW
//-------------------------------------------------------------------------

#macro QMP_POINTS_ARRAY [200, 400, 800, 1000, 2000, 4000, 8000, 0]
#macro QMP_POINTS_IMAGES [[100, 0], [200, 1], [400, 2], [800, 3], [1000, 4], [2000, 5], [4000, 6], [8000, 7]]

#define create_burst_decal
/// create_burst_decal(burst_x = x, burst_y = y, rng_index = 0)
var burst_x = argument_count > 0 ? argument[0] : x;
var burst_y = argument_count > 1 ? argument[1] : y;
var rng_index = argument_count > 2 ? argument[2] : 0;
	var burst = instance_create(round(burst_x), round(burst_y), "obj_article1");
	burst.sprite_index = sprite_get("decal_burst");
	burst.image_angle = random_func(rng_index, 4, true) * 90;
	burst.life = 6; burst.variant = "burst";
	
	return(burst);

#define make_stars
/// make_stars(x_offset = spr_dir * 16, y_offset = char_height / -2)
var x_offset = argument_count > 0 ? argument[0] : spr_dir * 16;
var y_offset = argument_count > 1 ? argument[1] : char_height / -2;
	var star_hsp = 5, star_vsp = 5;
	repeat(4) {
		var star = instance_create(round(x + x_offset), round(y + y_offset), "obj_article1");
		star.variant = "star"; star.life = 16; star.sprite_index = sprite_get("decal_star");
		star.image_xscale = 2; star.image_yscale = 2;
		star.fake_hsp = star_hsp; star.fake_vsp = star_vsp;
		
		if(star_hsp > 0 && star_vsp > 0) star_vsp = -5;
		else if(star_hsp > 0 && star_vsp < 0) star_hsp = -5;
		else if(star_hsp < 0 && star_vsp < 0) { star_hsp = -5; star_vsp = 5; }
	}