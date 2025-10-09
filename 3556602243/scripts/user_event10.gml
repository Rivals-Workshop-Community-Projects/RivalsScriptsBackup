//This Event Changes Gameplay every frame
var kirby_heal_sfx = sound_get("ror_kirbheal");
var tomoko_cold_sfx = sound_get("ror_icewall_hit");
var thwomp_sfx = sound_get("ror_urgh");
var melon_sfx = sound_get("ror_melon");
var r00_sfx = sound_get("ror_switch");
var runstart_sfx = sound_get("ror_runstart");
var rungo_sfx = sound_get("ror_rungo");
var ping_sfx = sound_get("ror_ping");
var aa_sfx = sound_get("ror_aa_counter");
var statup_sfx = sound_get("ror_statup");
var statdown_sfx = sound_get("ror_statdown");
var statup_regi_sfx = sound_get("ror_regiup");
var statdown_regi_sfx = sound_get("ror_regidown");
var tam_sfx = sound_get("ror_tambourine");
var crit_sfx = sound_get("ror_crit");
var throw_sfx = sound_get("ror_throw");
//Dragoon SFX
var dragoon_assemble_sfx = sound_get("ror_dragoon_assemble");
var dragoon_collect_sfx = sound_get("ror_dragoon_collect");
var dragoon_fire_sfx = sound_get("ror_dragoon_fire");
var dragoon_ping_sfx = sound_get("ror_dragoon_ping");
var dragoon_piece_sfx = sound_get("ror_dragoon_piece");
//VFX
var ping_vfx = sprite_get("discord_ping");
var _hex_red_vfx = vfx_red;
var _hex_green_vfx = vfx_green;
var _hex_blue_vfx = vfx_blue;



//

var _stage_height = get_marker_y(96)

var _parry_hurtbox = sprite_get("ror_brook");


if get_gameplay_time() == 90 {
	with oPlayer {
		//var _star_rerolls = ror_card_star;
		
		var _total_checks = 0;
		var _accurate_checks = 0;
		var _attacks_array = []
		var _item_damage_buff = 0;
		var _item_startup_buff = 0;
		var _item_whifflag_buff = 0;
		//
		var _info_start_up = -4;
		//
		for (var i = 0; i <= 50; i++) {
			if (get_attack_value( i, AG_SPRITE ) != 0) {
				var _attack_index = i //array_push(_attacks_array, attack_to_name(i))
				var _max_hitboxes = 0
				
				var _has_vertical = false;
				var _has_horizontal = false;
				var _has_spike = false;
				var _has_projectile = false;
				var _has_physical = false;
				
				for (var j = 1; j <= 25; j++) {
					_total_checks++
					if (get_hitbox_value( i, j, HG_LIFETIME) != 0) {
						_accurate_checks++
						_max_hitboxes = j;
						//Attack Info for Taunt
						var _sakurai = get_hitbox_value(i, j, HG_ANGLE) == 361;
						var _angle = get_hitbox_value(i, j, HG_ANGLE) mod 360;
						/*
						var _hitbox_kbs = get_hitbox_value(i j, HG_KNOCKBACK_SCALING);
							var _hitbox_strong = _hitbox_kbs >= 0.6;
						*/
						
						if (_angle >= 70 && _angle <= 110) {
							_has_vertical = true;
						} else if (_angle >= 25 && _angle < 70) || (_angle > 110 && _angle <= 155) || _sakurai {
							_has_horizontal = true;
						} else if (_angle >= 200 && _angle <= 340) {
							_has_spike = true;
						} else {
							//print([attack_to_name(i), _angle, "Semi-Spike"])
						}
						
						//Projectile
						if (get_hitbox_value(i,j, HG_HITBOX_TYPE) == 1) {
							var _has_physical = true;
						} else if (get_hitbox_value(i,j, HG_HITBOX_TYPE) == 2) {
							var _has_projectile = true;
						}
					}
				}
				//print(i);
				//Attack Info for Taunt
				_info_start_up = get_window_value(i, 1, AG_WINDOW_LENGTH)
				//Available Attacks
				array_push(_attacks_array, [
						attack_to_name(i),
						i,
						_max_hitboxes,
						_item_damage_buff,
						_item_startup_buff,
						_item_whifflag_buff,
						//
						_info_start_up,
						_has_vertical,
						_has_horizontal,
						_has_spike,
						_has_physical,
						_has_projectile,
						-4 //Grab Attack
					]
				)
			}	
		}
		//if player == 1 {
		//	get_string("Previous Count: " + string(_total_checks) + " | Current Count : " + string(_accurate_checks) + " | Attacks Count : " + string(array_length(_attacks_array)), string(_attacks_array));
		//}
		//get_string("Attacks", _attacks_array)
		ror_valid_attack_array = _attacks_array;
	}
}
//
//More of SuperSonic's code. Please thank him in the comments if you see this
var num_player_objs = instance_number(oPlayer);
for (var pnum = 0; pnum < num_player_objs; pnum++) with instance_find(oPlayer, pnum) {
	if !("ror_previous_damage" in self || is_player_on(player)) { break; };
	//
	var _hit_player_obj = hit_player_obj;
	if instance_exists(_hit_player_obj) && _hit_player_obj.object_index != oPlayer && "player_id" in _hit_player_obj {
		_hit_player_obj = _hit_player_obj.player_id; //If an Article Hits the player make the _hit_player_obj the original player instead
	}
	//Stage Projectiles
	//print(ror_stage_hit)
	var _stage_can_hit_self = false;
	var _stage_hit = false;
	if instance_exists(ror_stage_hit) {
		hit_player_obj = ror_stage_hit;
		_hit_player_obj = ror_stage_hit;
		ror_stage_hit = -4;
		//Self-Destruct Missile Combo
		_stage_can_hit_self = ror_stage_can_hit_self;
		ror_stage_can_hit_self = false;
		//print(["Self-Destruct + FLM", _stage_can_hit_self]);
		
		//print("Stage Projectile has hit");
		_stage_hit = true;
		
		last_attack = 0;
	}	
	
	//Specifically only for Self Defense Missile (so far)
	var _stage_parry_missile_id = -4;
	if instance_exists(ror_stage_parry_missile) {
		_stage_parry_missile_id = ror_stage_parry_missile;
		//print("Stage got Parried")
	}
	
	//
	var _curr_player = instance_find(oPlayer, pnum);
	//
	#region //Vars
	var _damage_changed = false;
	var _damage_change = -4;
	// Don't change this
	var _base_damage = abs(get_player_damage(player) - ror_previous_damage);
	var _total_damage = 0;
	var _self_damage = 0;
	var _spawn_missile = false;
	//Change these
	var _bonus_base_damage = 0;
	var _bonus_damage = 0;
	var _bonus_multi = 1;
	//
	var _got_hit_player = self;
	//
	var last_attack_hit = last_attack;
	var hitbox_num_hit = last_hbox_num;
	
	//Boss Variable
	var _ror_is_boss = (obj_stage_main.ror_boss_mode && obj_stage_main.ror_boss_player == player);
	//print(_ror_is_boss);
	
	
	//var _has_max_strong_charge = (strong_charge >= 60 || ror_inf_charge >= 60);
	
	//Bubble
	if (state_cat != SC_HITSTUN) {
		ror_bubble_hsp = hsp;
		ror_bubble_vsp = vsp;
	}
	
	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && state_timer == 0 {
		var ror_random_damage_modifier_range = ror_card_todayslook ? 2 + (ror_card_todayslook - 1) : 0
		
		ror_today_modifier = random_func(6, ror_random_damage_modifier_range*2 + 1, true) + 1 - (ror_random_damage_modifier_range + 1)
	}
	#endregion
	
	//Resets
	var _was_invis = ror_is_invis;
	if (ror_is_invis) {
		visible = true;
		ror_is_invis = false;
	}
	//
	
	#region //Decay
	if (get_player_damage(player) < ror_decay_health) {
		set_player_damage(player, ror_decay_health);
		ror_previous_damage = get_player_damage(player);
	}
	#endregion
	
	#region//Damage Stuff Start
	if (get_player_damage(player) != ror_previous_damage) {
		_damage_changed = true;
		_damage_change = sign(get_player_damage(player) - ror_previous_damage) == 1 ? "damage" : "heal"
		//print(_damage_change)
	}
	#endregion

	#region //Printer
	//print(["Printer Meter", ror_print_timer, ror_print_timer_max])
	if (state != PS_CROUCH && ror_print_timer < ror_print_timer_max) {
		ror_print_timer += 3;
		ror_print_timer = clamp(ror_print_timer, 0, 60);
	}
	#endregion
	
	#region//Parry Masher
	var ror_parry_extra_length = (ror_card_parry_masher * 4)
	if (ror_parry_extra_length && state == PS_PARRY) {
		//print(ror_parry_extra_length)
		if (window == 1 && window_timer >= 1 && state_timer - 2 <= ror_parry_extra_length) {
			window_timer = 1;
		}
	}
	#endregion
    #region //Parry Armor on Roll/Airdodge (Must be the highest item)
	ror_roll_parried = false;
    if (ror_card_parry_armor) {
        if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD) || (ror_card_dark_reflection && state == PS_AIR_DODGE){
            if (window == 1 && state_timer >= 2 && state_timer <= 10 + ror_parry_extra_length){
				//
				if (state_timer > 3 && state_timer - 2 <= ror_parry_extra_length) {
					window_timer--;
				}
				//
                if (state_timer == 3){
                    sound_play(asset_get("sfx_parry_use"));
                }				
                hurtboxID.dodging = false;
                hurtboxID.sprite_index = hurtbox_spr // this is necessary too
                perfect_dodging = true;
				if (hitpause && ror_can_roll_parry) {
					//print("HELLO PARRY")
					perfect_dodged = true;
					ror_roll_parried = true;
					ror_can_roll_parry = false;
				}
            }
            init_shader();
        }
		//
        if ((prev_state == PS_AIR_DODGE && ror_card_dark_reflection) || prev_state == PS_ROLL_FORWARD || prev_state == PS_ROLL_BACKWARD) {
            if (state_timer == 0){
				ror_can_roll_parry = true;
                init_shader();
            }
        }
    }
    #endregion
	#region //Parry Armor on Down Strong
    if (ror_card_strong_parry) {
        if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && check_attack_array(attack, ror_attacks_dstrong)){
            var start_window = get_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW) + 1;
            
            if (start_window == 0){ //if attack does not have strong charge just default to the second window
                start_window = 2;
            }
            
            if (window >= start_window) {
                var ror_strong_parry_timer_max = 8 + ror_parry_extra_length + (ror_card_strong_parry - 1)*4;
                if (!ror_strong_parried){
                    ror_strong_parry_timer = ror_strong_parry_timer_max;
                    ror_strong_parried = true;
                }
                if (ror_strong_parry_timer > 0){
                    if (!hitpause){
                        if (ror_strong_parry_timer == ror_strong_parry_timer_max){
                            sound_play(asset_get("sfx_parry_use"));
                        }
						window_timer--;
                        ror_strong_parry_timer--;
                        
                    }
                    perfect_dodging = true;
                    if (hitpause && ror_can_roll_parry) {
                        //print("HELLO PARRY")
                        perfect_dodged = true;
                        ror_roll_parried = true;
                        ror_can_roll_parry = false;
                    }
                }
            }
            init_shader();
        }
        if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
            if (state_timer == 0){
                ror_can_roll_parry = true;
                ror_strong_parried = false;
                ror_strong_parry_timer = 0;
                init_shader();
            }
        }
    }
    #endregion
	#region //Ninja Tactics
	/*
	if (true) {
		if (perfect_dodged) {
			perfect_dodged = false;
			window = 0;
			window_timer = 0;
			attack = free ? AT_FAIR : AT_FSTRONG;
			set_state(free ? PS_ATTACK_AIR : PS_ATTACK_GROUND);
		}
	}
	*/	
	#endregion	
	
	#region //Rolling Girl
	/*
	if (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) {
		if (shield_down && window == 1) && hsp != 0 {
			window_timer = 6;
			//hurtboxID.dodging = true;
			//if !perfect_dodging {
			//	invincible = true;
			//}
		}
	}
	*/
	#endregion
	
	
	
	//Item Related code (New Code goes under here)
	
	#region //Gravity Cancel
	/*
	ror_card_grav_cancel = 0;

	ror_is_grav_cancel = false;
	ror_grav_cancel_count = 0;
	ror_grav_cancel_time = 10;
	ror_grav_cancel_time_max = 10;
	*/
	
	if (true && state != PS_PRATFALL) {
		if (!fast_falling) {
			ror_grav_buffer = 0;
		} else {
			ror_grav_buffer++;
		}
		//Start Grav Cancel
		//if ((ror_card_grav_cancel > ror_grav_cancel_count) && fast_falling && free) {
		//if ((1 > ror_grav_cancel_count) && (fast_falling && ror_grav_buffer < ror_grav_buffer_max) && free && !down_down) {
		if ((ror_card_grav_cancel > ror_grav_cancel_count) && (fast_falling && ror_grav_buffer < ror_grav_buffer_max) && free && !down_down) {
		//if (fast_falling && free) {
			fast_falling = false;
			ror_grav_cancel_count++;
			ror_is_grav_cancel = true;
			ror_grav_cancel_time = ror_grav_cancel_time_max;
			ror_grav_attacked = false;
			clear_button_buffer(PC_SHIELD_PRESSED);
			//
			ror_grav_cancel_djumps = djumps;
			ror_grav_cancel_airdodge = ror_airdodge_count;
			ror_grav_cancel_has_airdodge = has_airdodge;
		}
		//Grav cancel
		if (ror_is_grav_cancel) {
			free = false;
			clear_button_buffer(PC_SHIELD_PRESSED);
			if (state_cat != SC_HITSTUN) {
				switch(state) {
					case PS_LAND:
					case PS_LANDING_LAG:
					case PS_TECH_FORWARD:
					case PS_TECH_BACKWARD:
					case PS_TECH_GROUND:
					case PS_ROLL_FORWARD:
					case PS_ROLL_BACKWARD:
					case PS_PARRY_START:
					case PS_PARRY:
					case PS_PRATFALL:
					case PS_PRATLAND:
						state = PS_IDLE;
					break;
					case PS_ATTACK_GROUND:
						vsp = 0;
					case PS_ATTACK_AIR:
						//One attack
						if (state_timer == 0) {
							if ror_grav_attacked {
								ror_grav_cancel_time = 0;
								ror_is_grav_cancel = false;
								free = true;
							} else {
								ror_grav_attacked = true;
							}
						}
						//Attack Ends
						//print(["Attack: ", window, get_attack_value(attack, AG_NUM_WINDOWS), window_timer, get_window_value(attack, window, AG_WINDOW_LENGTH)])
						if (window == get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
							ror_grav_cancel_time = 0;
							ror_is_grav_cancel = false;
							free = true;
							if !has_hit {
								set_state(PS_PRATFALL);
							}
						}
						//Dust
						if (state_timer % 5 == 0) {
							var _vfx = spawn_base_dust(x, y + 3, "jump", 1);
							_vfx.depth = other.depth + 1;
						}
					break;
					case PS_DASH_START:
						if (ror_card_funny_dash) {
							vsp = 0;
							break;
						}
					case PS_JUMPSQUAT:
						ror_grav_cancel_time = 0;
						ror_is_grav_cancel = false;
						vsp = 0;
						free = false;
					break;
					case PS_DASH:
						ror_grav_cancel_time = 0;
					break;
					default:
						//
						vsp = 0;
						hsp = 0;
						//
						ror_grav_cancel_time--;
						//Dust
						if (state_timer % 5 == 0) {
							var _vfx = spawn_base_dust(x, y + 3, "jump", 1);
							_vfx.depth = other.depth + 1;
						}
					break;
				}
			}
			if !(ror_grav_cancel_time) || (state_cat == SC_HITSTUN) {
				djumps = ror_grav_cancel_djumps;
				ror_airdodge_count = ror_grav_cancel_airdodge;
				has_airdodge = ror_grav_cancel_has_airdodge;
				//
				ror_is_grav_cancel = false;
				free = true;
			}
		} else {
			if (!free) {
				ror_grav_cancel_count = 0;
			}
		}
	}
	#endregion
	
	#region //Shock Dart
	if (ror_card_shock_dart) {
		var _player = self;
		with pHitBox {
			if ("ror_shock_dart" !in self && type == 2 && player == other.player) {
				//print([hitbox_timer, length])
				if (destroyed || hitbox_timer == floor(length) - 1) {
					create_shock_dart(_player, self);
				}
			}
		}
	}
	#endregion
	
	#region //Mushrooms and Small Sprites
	//Mega Mushroom
	var _mushroom_size = 0;
	var _scale_math = 1;
	if (ror_card_mega || ror_card_mini) || _ror_is_boss {
		if ("small_sprites" in ror_modified_stats) {
			var _mushroom_size = ror_card_mega - ror_card_mini;
			//Boss Specific
			_mushroom_size += (2 * _ror_is_boss);
			_scale_math = (_mushroom_size >= 0) ? 1 + (_mushroom_size * .5) : power(2, _mushroom_size);
			//
			var _size_scale = _mushroom_size >= 0 ? .5 : power(2, _mushroom_size);
			var _is_small = ror_modified_stats.small_sprites == 1 ? true : false;
			//
			//Did you know?
			var _sprite_math = ror_modified_stats.small_sprites == 1 ? 1 : .5;
			
			if _mushroom_size >= 0 {
				small_sprites = ror_modified_stats.small_sprites + (_sprite_math * _mushroom_size);	
				//
				//
				hurtboxID.image_xscale = (1 + (_mushroom_size * _size_scale)) * spr_dir;
				hurtboxID.image_yscale = (1 + (_mushroom_size * _size_scale));
				
			} else {
				small_sprites = -1 + (_size_scale * (_is_small ? 2 : 1));
				//
				hurtboxID.image_xscale = _size_scale * spr_dir;
				hurtboxID.image_yscale = _size_scale;
			}
			
			//print([small_sprites, hurtboxID.image_xscale]);
		}
	} else { //Scrapped Mega
		if ("small_sprites" in ror_modified_stats && small_sprites != ror_modified_stats.small_sprites) {
			//var _mushroom_size = 0;
			small_sprites = ror_modified_stats.small_sprites;	

			hurtboxID.image_xscale = spr_dir;
			hurtboxID.image_yscale = 1;
		}
	}
	#endregion


	/*
	with pHitBox {
		move_wrap(true, false, 0);
	}
	*/
	
	//free = false;
	//if ()
	
	
	//Floatation Device
	/*
	obj_stage_main.waves_active = true;
	ror_card_floatation_device = 1;
	if (obj_stage_main.waves_active) {
		if (state != PS_PRATFALL) {
			ror_swimming = false;
		}
		if (!free) {
			ror_swim_timer = 0; 
		}
		//
		var _bob_height = obj_stage_main.wave_height + 32;
		var _float_max = ror_swim_timer_max + (60 * (ror_card_floatation_device - 1));
		if (y > _bob_height) && !(state == PS_AIR_DODGE || state == PS_DOUBLE_JUMP) {
			//Water Resets
			djumps = 0;
			//Float
			ror_float_time = 0;
			ror_can_float = true;			
			//Wall Jump
			ror_walljump_count = 0;
			has_walljump = false;
			//
			can_fast_fall = false;
			//HSP Clamp
			//hsp = clamp(hsp, -air_max_speed * .25, air_max_speed * .25);
			if !(state == PS_HITSTUN || state == PS_DOUBLE_JUMP || state == PS_PRATFALL) {
				has_walljump = false;
				if (free) {
					ror_swimming = true;
					set_state(PS_PRATFALL);
					
					sound_play(asset_get("sfx_troupple_splash_big"));
					spawn_hit_fx(x, y, HFX_HOD_SPLASH);
				}			
			}		
			
			//Swimming True
			if (y <= _bob_height + 16 && vsp < 3) {
				//Swimming
				if ror_swimming {
					ror_swim_timer++;
				}
				//
				
				has_walljump = true;

				//set_state(PS_IDLE_AIR);
				if (jump_pressed) {
					set_state(PS_DOUBLE_JUMP);
					vsp = -djump_speed;
					ror_swim_timer += 30;
					print(["Swim Timer", ror_swim_timer, _float_max])
				}
			}

			if ror_swimming && (ror_swim_timer >= _float_max) {
				sound_play(asset_get("sfx_bubblepop"));
				spawn_hit_fx(x, y, 301);
				ror_swimming = false;
			}

			//Must have a floatation device
			if ror_card_floatation_device && (state != PS_DOUBLE_JUMP && ror_swim_timer < _float_max) {
				var _buoy_speed = abs(floor((y - _bob_height) / 10)) + 2;
				print(["Buoy: ", _buoy_speed]);
				print(["Y: ", y, _bob_height]);
				vsp = clamp(vsp - 1, -_buoy_speed, infinity);
			} else {
				hsp = 0;
			}
			//
		}
	}
	*/
	

	#region //Hex (Must be before all Status Appliers)
	/*
	if instance_exists(_hit_player_obj) {
		_bonus_damage += _hit_player_obj.ror_card_hex ? (
				bool(poison) + 
				bool(burned) + 
				bool(ror_freeze_stacks) + 
				bool(state == PS_FROZEN) + 
				bool(state == PS_CRYSTALIZED) + 
				bool(state == PS_BURIED) +
				bool(state == PS_WRAPPED) 
		) : 0;
	}
	*/
	#endregion
	

	#region //Out of Attack Resets
	if !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
		ror_rapids = 0;
	}
	#endregion	
	
	
	#region //Funky 
	/*
	if (true) {
		if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && check_attack_array(attack, ror_attacks_taunt)) {
			if (!taunt_down) {
				set_state(free ? PS_IDLE_AIR : PS_IDLE);
			}
		}
	}
	*/
	/*
	//Insanely Broken with Metapod
	if (true) {
		if (has_hit && !hitpause) {
			set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
			//print(["Taunt Sprite", get_attack_value(AT_TAUNT, AG_AIR_SPRITE)])
			if (get_attack_value(AT_TAUNT, AG_AIR_SPRITE) == 0) {
				set_attack_value(AT_TAUNT, AG_AIR_SPRITE, get_attack_value(AT_TAUNT, AG_SPRITE));
				set_attack_value(AT_TAUNT, AG_HURTBOX_AIR_SPRITE, get_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE));
			}
			set_attack(AT_TAUNT);
		}
	}
	*/
	/*
	if (true) {
		if (attack == AT_USTRONG) && (window == get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == get_window_value(AG_WINDOW_LENGTH, attack, window)) {
			_disable_metapod = true;
			set_attack(AT_TAUNT);
			state_timer = 1;
		}
	}
	*/
	#endregion
	
	#region //Bah Bah
	if (ror_card_dance_break && ror_card_dance_break_count < ror_card_dance_break) && !invincible && !hitpause && (check_attack_array(attack, ror_attacks_taunt) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && state_timer == 0) {
		invincible = true;
		ror_card_dance_break_count++;
		invince_time += (60 * (1 + ror_card_ghoul * .2));
	}
	#endregion
	
	#region //Warp Zone
	/*
	ror_card_warp_zone = 1;
	if ror_card_warp_zone {
		var _left = 	get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
		var _right = 	room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
		var _top = 		get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
		var _bottom = 	get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE) - 64;
		with pHitBox{
			if ((player_id == other) || ("ror_player_id" in self && ror_player_id == other)) {
				if "ror_warp_zone" !in self {
					ror_warp_zone = other.ror_card_warp_zone;
				} else {
					//
					if (ror_warp_zone) && (x <= _left || x >= _right || y <= _top || y >= _bottom) {
						print(ror_warp_zone)
						var _dis_x = (x < 0 || x > room_width) 	? x < 0 ? -64 : 64 : 0
						var _dis_y = (y < 0 || y > room_height) ? y < 0 ? -64 : 64 : 0;
						//print([_dis_x, _dis_y])
						ror_warp_zone--;
						sound_play(asset_get("mfx_star"))
						spawn_hit_fx(x - _dis_x * 2, y - _dis_y / 2, HFX_ORI_ORANGE_BIG);
						move_wrap(true, true, 0)
						spawn_hit_fx(x + _dis_x * 2, y + _dis_y / 2, HFX_ORI_BLUE_BIG);
					}
					//
				}
			}
		}
	}
	*/
	#endregion
	
	#region //Freeze gimmick
	//Freeze Items
	/*
	if (state == PS_FROZEN) {
		if (state_timer = 60) {
			state_timer--;
		}
	}
	*/
	//Remove Freeze on Parry
	#region //Extra Parry Invul Frames
	var _parry_invince_time = 60 * (1 + ror_card_ghoul * .2);
    if (ror_card_ghoul){
        if (perfect_dodged && perfect_dodging && /*!parried_jab &&*/ invince_time == 60){ //check for successful parry
            invince_time = _parry_invince_time;
            //invince_time *= (1 + ror_card_ghoul * .2);
			//_parry_invince_time = invince_time;
            //print(invince_time);
        }
    }	
    #endregion
	
	if (instance_exists(enemy_hitboxID) && variable_instance_exists(enemy_hitboxID, "damage")){
		if (perfect_dodged && perfect_dodging && !parried_jab && invince_time == _parry_invince_time) { //check for successful parry
			//[note: make sure any items that mess with parry invincibility run after this check or else it won't work properly]
			ror_freeze_stacks = 0;
		}
	}
	//Freeze Apply
	if ((!free || state == PS_WALL_TECH) && ror_freeze_stacks >= 6 && (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED || state == PS_WALL_TECH)) {
	//if (state == PS_PRATLAND && ror_freeze_stacks >= 6) {
		ror_freeze_stacks = 0;
		//frozen = true;
		//frozen_player = player;
		//hsp = 0;
		//vsp = 0;	
		//old_hsp = 0;
		//old_vsp = 0;
		//sound_play(asset_get("sfx_icehit_heavy1"));
		//set_state(PS_FROZEN);
		//
		if !(invincible || state == PS_TECH_GROUND || state == PS_WALL_TECH || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD) {
			frozen = true;
			frozen_player = player;
			hsp = 0;
			vsp = 0;	
			old_hsp = 0;
			old_vsp = 0;
			sound_play(asset_get("sfx_icehit_heavy1"));
			set_state(PS_FROZEN);
		} else {
			if !_was_invis {
				spawn_hit_fx(x, y, HFX_ETA_FSPEC_BREAK)
			}
			sound_play(asset_get("sfx_ice_shatter"));
		}
	}
	#endregion

	#region //Rogue Install
	//Variable to check if you have any install cards
	//Rogue Install Items
	ror_install_cards = (
			ror_card_install_burst
		||	ror_card_install_impulse
		||	ror_card_install_sturdy
		||	ror_card_install_slide
		||	ror_card_install_stopwatch
		||	ror_card_install_objection
		||	ror_card_install_shine
		||	ror_card_install_charge
		||	ror_card_install_turnabout
		||	ror_card_install_slow_start
		||	ror_card_install_rise_from_ash
		||	ror_card_install_static
		||	ror_card_install_blood_clotting
		||	ror_card_install_peach
		||	ror_card_install_black_jack
		||	ror_card_install_ant
		||	ror_card_install_nothing
		||	ror_card_install_recharge
		|| 	ror_card_install_training
		|| 	ror_card_install_platypus
		|| 	ror_card_install_fast_food
		||	ror_card_install_charge_champ
		||	ror_card_install_abyss_boost
		||	ror_card_install_magic_missile
		||	ror_card_install_infection
		//||	ror_card_install_
	)
	//Rogue Install
	if (ror_install_cards && obj_stage_main.round_state == "alive" && obj_stage_main.round_state_timer >= 120) && state != PS_RESPAWN {
		//Maybe move this section to update.gml set_variables functions
		//Meter Required
		ror_install_mult = 1;
		
		ror_install_meter_max = clamp(
			ror_install_meter_base_max
			-(ror_card_install_charge * install_lower_max_change) //Super Charge
		,10, infinity) //Additions and Subrtractions cannot go below 10
			* (ror_card_install_slow_start + 1) //Slow Start
		//Install Duration
		ror_install_timer_length = clamp(
			ror_install_timer_base_length
			+(ror_card_install_stopwatch * ror_install_time_change) //Stopwatch
			-(ror_card_install_fast_food * ror_install_time_decay) //Fast Food
		,10, infinity) //Additions and Subrtractions cannot go below 10	
			* (ror_card_install_slow_start + 1) //Slow Start
			* ((ror_card_install_ant * 3) + 1)  //Tasty
		//
		ror_install_timer_length = clamp(ror_install_timer_length, 10, infinity);	
		//Meter Activation
		var _install_activated = false;
		if (ror_install_meter >= ror_install_meter_max) {
			ror_install_active = true;
			ror_install_meter = 0;
			ror_install_total_time = 0;
			//
			ror_install_timer = ror_install_timer_length;
			//Update Stats
			ror_update_stats = true;
			//SFX and VFX
			sound_play(ror_card_install_slow_start ? statup_regi_sfx : statup_sfx);
			if !_was_invis {
				spawn_hit_fx(x, round(y - char_height/2), 127);
			}
			//
			_install_activated = true;
		}
		//Practice Mode Testing
		if (obj_stage_main.practice_mode && !ror_install_active && !ror_install_meter) {
			//ror_install_meter = ror_install_meter_max - 10;
		}
		//
		if ror_install_active { //active Install
			//Activate Once
			if (_install_activated) {
				#region//Magic Missile
				if (ror_card_install_magic_missile) {
					var _self = self;
					var _miss_target = -4;
					var _damage = (10 * ror_card_install_magic_missile) * (ror_card_install_slow_start + 1);
					with oPlayer {
						if state != PS_RESPAWN && (get_player_team( player ) != get_player_team(_self.player)) && (_miss_target == -4 || point_distance(_self.x, _self.y, self.x, self.y) < point_distance(_self.x, _self.y, _miss_target.x, _miss_target.y)) {
							_miss_target = self;
						}
					}
					//Missile Spawn
					var _player = self;
					with obj_stage_main.main_obj {
						for (var a = 0; a <= other.ror_card_extra_bullets; a++) {
							var _atg = create_hitbox(AT_FSPECIAL, 1, round(_player.x), round(_player.y - _player.char_height));
							//Owner
							_atg.player = _player.player;
							//_atg.player_id = _player.player;
							_atg.ror_player_id = _player;
							_atg.ror_hitbox_type = "proj";
							//Target
							_atg.ror_atg_target = _miss_target;
							//Init Speed
							var _angle = _player.spr_dir == 1 ? 135 : 45;
							_angle += _player.spr_dir * a * 15;
							//print(_angle)
							var _speed = sqrt(power(3, 2) * 2); //3 and 3
							_atg.vsp = lengthdir_y(_speed, _angle);
							_atg.hsp = lengthdir_x(_speed, _angle);
							
							_atg.extra_delay = 3 * a; //Extra Frame Delay for missiles
							//print([_atg.vsp, _atg.hsp])
							//Damage is 100% of damage dealth + 50% Per Stack
							_atg.damage = _damage;
							
							_atg.is_atg = true;
							//Other Items
							apply_cards(_atg, other)
						}
					}
				}
				#endregion
			}
			//Passives
			if (ror_install_timer) {
				ror_install_timer--;
				ror_install_total_time++;
				//Rogue Active Effects
				#region //Heal in Install
				if (ror_card_install_shine){
					if (get_player_damage(player)){
						if (ror_install_total_time % 60 == 0){
							//sound_stop(kirby_heal_sfx);
							//sound_play(kirby_heal_sfx, false, noone, 0.7, 0.9);
						
							//set_player_damage(player, clamp(get_player_damage(player) - ror_card_install_shine * (ror_card_bamboo + 1), 0, 999)); //heal 1% (+1% per stack) every 60f
							heal_player(self, ror_card_install_shine, kirby_heal_sfx);
						}
					}
				}
				#endregion
				
				#region //Tenshi Jump Cancels
				if (ror_card_install_peach) {
					if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && has_hit && jump_pressed && (!free || (free && djumps < max_djumps))) {
						//window = get_attack_value( attack, AG_NUM_WINDOWS);
						//window_timer = get_window_value( attack, window, AG_WINDOW_LENGTH);
						set_state(free ? PS_IDLE_AIR : PS_IDLE);
						sound_play(tam_sfx);
					}
				}
				#endregion
				//
			} else { //Install Ends
				ror_install_active = false;
				ror_install_total_time = 0;
				//Update Stats
				ror_update_stats = true;
				//SFX and VFX
				sound_play(ror_card_install_slow_start ? statdown_regi_sfx : statdown_sfx);
				if !_was_invis {
					spawn_hit_fx(x, round(y - char_height/2), 126);
				}
				//Tasty
				if (ror_card_install_ant) {
					set_kill_bg(x, y, 2);
					y = room_height * 4;
				}
			}			
		} else { //Inactive Install
			//
		}
	}
	#region //Plugg
	if !hitpause && (ror_card_install_static && (state == PS_DASH_START || state == PS_WAVELAND) && state_timer == 0) {
		//ror_card_install_charge_champ) * ror_install_mult);
		//ror_install_meter += ((ror_card_install_static + ror_card_install_charge_champ) * ror_install_mult);
		give_meter(self, ror_card_install_static);
	}
	#endregion
	#region //A Platypus? //Extra Parry Invul Frames
	if (ror_card_install_platypus){
		if (perfect_dodged && perfect_dodging && invince_time == _parry_invince_time && (!hitstop || ror_roll_parried)){ //check for successful parry
			//ror_install_meter += (((ror_card_install_platypus * 10) + ror_card_install_charge_champ) * ror_install_mult);// * 2;
			give_meter(self, ror_card_install_platypus * 10);
		}
	}
	#endregion


	#region //Sandstorm
	if (!invincible && obj_stage_main.sandstorm_active && obj_stage_main.round_state_timer % 60 == 0) {
		//set_player_damage(player, clamp(get_player_damage(player) + 2, 0, 999));
		_self_damage += 2;
		if (!_was_invis && state != PS_RESPAWN) {
			var _vfx = spawn_hit_fx(ceil(x), ceil(y - char_height/2), 301);
			_vfx.depth = depth + 2;
		}
	}
	#endregion
	
	#region //Got your Back
	if (ror_card_back) {
		if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && check_attack_array(attack, ror_attacks_fstrong)) {
			if (state_timer == 0) {
				ror_back_array = [];
			} else {
				for (var i = 0; i < array_length(ror_back_array); i++) {
					var _hb = ror_back_array[i];
					if instance_exists(_hb) {
						//print([_hb.ror_back_x, _hb.ror_back_y, _hb.ror_back_spr_dir])
						if _hb.type != 2 {
							_hb.x = x + _hb.ror_back_x;
							_hb.y = y - _hb.ror_back_y;
						}
						//_hb.spr_dir = _hb.ror_back_spr_dir;
						//_hb.kb_angle = _hb.ror_back_kb_angle;
						//if _hb.hitbox_timer <= 2 {
						//	_hb.hsp = _hb.ror_back_hsp
						//	_hb.vsp = _hb.ror_back_hsp
						//}
					}
				}
			}
			with pHitBox {
				if (player_id == other.id && check_attack_array(attack, other.ror_attacks_fstrong) && "ror_cloned_hitbox" !in self) {
					ror_cloned_hitbox = true;
					with player_id {
						var _hitbox = create_hitbox(other.attack, other.hbox_num, floor(x - other.x), floor(y - other.y));
						_hitbox.ror_cloned_hitbox = true;
						_hitbox.ror_back_x = floor(x - other.x);
						_hitbox.ror_back_y = floor(y - other.y);
						//_hitbox.ror_back_spr_dir = -other.spr_dir;
						//_hitbox.ror_back_kb_angle = 180 - _hitbox.kb_angle;
						//
						_hitbox.x = x + _hitbox.ror_back_x;
						_hitbox.y = y - _hitbox.ror_back_y;
						_hitbox.spr_dir *= -1;
						//_hb.spr_dir = _hb.ror_back_spr_dir;
						//_hitbox.kb_angle = _hitbox.ror_back_kb_angle;
						//
						_hitbox.hsp = -other.hsp;
						_hitbox.vsp = other.vsp;
						//
						_hitbox.hitbox_timer++;
						_hitbox.bullet_hell_buddy = true;
						array_push(ror_back_array, _hitbox);
					}
				}
			}
		} else {
			ror_back_array = [];
		}
	}
	#endregion
	
	
	#region //Blizzard
	if (ror_card_blizzard) {
		if (!hitpause && (check_attack_array(attack, ror_attacks_taunt) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))) {
			if (state_timer <= 9) {
				ror_has_thrown_blizzard = 0;
			} else if (!ror_has_thrown_blizzard) {
				ror_has_thrown_blizzard = true;
				var _player = self;
				var _blizzard_objs_num = instance_number(oPlayer);
				for (var _blizz_num = 0; _blizz_num < _blizzard_objs_num; _blizz_num++) with instance_find(oPlayer, _blizz_num) {
					var _self = self;
					// (_self != _player && state != PS_FROZEN) {
					if (_self != _player && _self.state != PS_RESPAWN) {
						/*
						with obj_stage_main.main_obj {
							//
							//for (var a = 0; a <= other.ror_card_extra_bullets; a++) { //Bullet Hell Buddy
							var _freeze_proj = create_hitbox(AT_TAUNT, 1, round(_self.x), round(_self.y - _self.char_height / 2));
							var _fx = spawn_hit_fx(_freeze_proj.x, _freeze_proj.y, HFX_ETA_ICE_BIG);
							_fx.depth += 100;
							//
							_freeze_proj.ror_hitbox_parry_stun = true;
							_freeze_proj.ror_stage_proj_bullet_hell = true;
							_freeze_proj.ror_stage_proj_freeze_on_hit = _player.ror_card_blizzard;
							//Owner
							_freeze_proj.player = _player.player;
							_freeze_proj.ror_player_id = _player;
							_freeze_proj.ror_thwomp_player_id = _player;
							_freeze_proj.ror_hitbox_type = "proj";
							//Bullet Hell
							apply_cards(_freeze_proj, _player);
						}
						*/
						with obj_stage_main.main_obj {
							//
							//for (var a = 0; a <= other.ror_card_extra_bullets; a++) { //Bullet Hell Buddy
							//var _freeze_proj = create_hitbox(AT_TAUNT, 1, round(_self.x), round(_self.y - _self.char_height / 2));
							var _freeze_proj = create_hitbox(AT_TAUNT, 1, round(_player.x), round(_player.y - _player.char_height / 2));
							//var _fx = spawn_hit_fx(_freeze_proj.x, _freeze_proj.y, HFX_ETA_ICE_BIG);
							//_fx.depth += 100;
							//
							_freeze_proj.ror_hitbox_parry_stun = true;
							_freeze_proj.ror_stage_proj_bullet_hell = true;
							_freeze_proj.ror_stage_proj_freeze_on_hit = _player.ror_card_blizzard;
							_freeze_proj.ror_can_send_in = true;
							_freeze_proj.ror_blizzard_proj = true;
							//Owner
							_freeze_proj.player = _player.player;
							_freeze_proj.ror_player_id = _player;
							_freeze_proj.ror_thwomp_player_id = _player;
							_freeze_proj.ror_hitbox_type = "proj";
							//
							var _angle = point_direction(_player.x, _player.y, _self.x, _self.y);
							var _speed = _freeze_proj.hsp;
							_freeze_proj.hsp = lengthdir_x(_speed, _angle);
							_freeze_proj.vsp = lengthdir_y(_speed, _angle);
							_freeze_proj.image_angle = point_direction(0, 0, _freeze_proj.hsp, _freeze_proj.vsp);
							//
							//Bullet Hell
							apply_cards(_freeze_proj, _player);
						}
					}
				}
			}
		}
	}
	#endregion
	
	
	
	#region //Gravity
	//print(512 * power(2, 0))
	//print(512 * power(2, -1))
	//print(512 * power(2, -2))
	//print(512 * power(2, -3))
	/*
	if (ror_card_gravity) {
		with oPlayer {
			if (self != other && !invincible && state_cat != SC_HITSTUN) {
				if point_distance(x, y, other.x, other.y) >= 512 * power(2, -other.ror_card_gravity + 1) && (point_distance(x, y, other.x, y) > 16) {
					x -= sign(x - other.x) * other.ror_card_gravity;
				}
			}
		}
	}
	*/
	if (ror_card_gravity) {
		if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (check_attack_array(attack, ror_attacks_fstrong) && smash_charging) && spr_dir != 0 {
			var _spr_dir = sign(spr_dir);
			var _gravity_strength = (8 * ror_card_gravity);
			var _mix_dist = 64;
			var _max_dist = ror_card_gravity * 6;
			//Dust
			if !_was_invis {
				if (ror_gravity_dust % 10 == 0) {
					for (var i = 0; i < _max_dist; i++) {
						var _vfx = spawn_base_dust(x + spr_dir * (16 + (48 * i)), y, "dash_start", -spr_dir);
						_vfx.spr_dir = -spr_dir;
					}
					if ror_card_back {
						for (var i = 0; i < _max_dist; i++) {
							var _vfx = spawn_base_dust(x - spr_dir * (16 + (48 * i)), y, "dash_start", -spr_dir);
							_vfx.spr_dir = spr_dir;
						}
					}
				}
			}
			ror_gravity_dust++;
			with oPlayer {
				if (player != other.player) {
					if (abs(y - other.y) <= 47 && abs(x - other.x) <= 32 + (_max_dist * 48)) {
						if (_spr_dir == 1 || other.ror_card_back) {
							if abs(x - other.x) >= 64 && x > other.x {
								x -= _gravity_strength;
							}
						}							
						if (_spr_dir == -1 || other.ror_card_back) {
							if abs(x - other.x) >= 64 && x < other.x {
								x += _gravity_strength;
							}
						}
					}
				}
			}
		} else {
			ror_gravity_dust = 0;
		}
	}
	#endregion
	
	#region //Suichopath
	//ror_card_suicho = player == 1 ? 2 : 20;
	//ror_card_suicho = 5;
	//Multi Axe
	if (ror_card_suicho && obj_stage_main.round_state == "alive") {
		//
		var _max_axe = clamp(ror_card_suicho, 0, 10);
		while array_length(ror_card_suicho_axe) < _max_axe {
			array_insert(ror_card_suicho_axe, array_length(ror_card_suicho_axe), -4);
		}	
		//print(["Axe's", ror_card_suicho_axe]);
		//
		var _dist = 32 + char_height;
		var _speed = 4;//ror_card_suicho; //2
		var _mid = char_height / 2;
		for (var i = 0; i < _max_axe; i++) {
			//print(i);
			if !instance_exists(ror_card_suicho_axe[i]) {
				var _axe = -4;
				with obj_stage_main.main_obj {
					_axe = create_hitbox(AT_USPECIAL, 1, round(other.x), round(other.y - _dist));			
				}
				_axe.player = player;
				_axe.ror_cannot_reflect = true;
				for (var j = 0; j <= 20; j++) {
					_axe.can_hit[j] = false;
				}
				ror_card_suicho_axe[i] = _axe;
				ror_card_suicho_rotation = 90 + (i / array_length(ror_card_suicho_axe) / 360);
			} else {
				hitbox_timer = 0;
				if (i == 0) {
					ror_card_suicho_rotation += spr_dir * _speed;
				}
				var _axe_diff = ror_card_suicho_rotation + (i / array_length(ror_card_suicho_axe) * 360);
				ror_card_suicho_axe[i].image_index = spr_dir == 1 ? 0 : 1;
				ror_card_suicho_axe[i].image_angle = _axe_diff * -5;
				ror_card_suicho_axe[i].x = x - lengthdir_x(_dist, _axe_diff);
				ror_card_suicho_axe[i].y = y - _mid + lengthdir_y(_dist, _axe_diff);
				with ror_card_suicho_axe[i] {
					with pHitBox {
						if place_meeting(x, y, other) {
							//print("Ah")
							if (!transcendent && player != other.player && type == 2) {
								destroyed = true;
								hitbox_timer = length;
							}
						}
					}
				}
			}
		}
	}
	//Destroy Suisei Axe
	if (state == PS_RESPAWN || obj_stage_main.round_state != "alive") {
		ror_card_suicho_rotation = 90;
		for (var i = 0; i < array_length(ror_card_suicho_axe); i++) {
			if instance_exists(ror_card_suicho_axe[i]) {
				instance_destroy(ror_card_suicho_axe[i]);
			}
		}
		ror_card_suicho_axe = [];
	}
	/*
	//Single Axe
	if (ror_card_suicho) {
		var _dist = 60 + char_height;
		var _speed = ror_card_suicho * 5; //2
		var _mid = char_height / 2;
		if !instance_exists(ror_card_suicho_axe) {
			var _axe = -4;
			with obj_stage_main.main_obj {
				_axe = create_hitbox(AT_USPECIAL, 1, other.x, other.y - _dist);			
			}
			_axe.player = player;
			for (var i = 0; i <= 20; i++) {
				_axe.can_hit[i] = false;
			}
			ror_card_suicho_axe = _axe;
			ror_card_suicho_rotation = 90;
		} else {
			hitbox_timer = 0;
			ror_card_suicho_rotation += spr_dir * _speed ;
			ror_card_suicho_axe.image_angle = ror_card_suicho_rotation * -5;
			ror_card_suicho_axe.x = x - lengthdir_x(_dist, ror_card_suicho_rotation);
			ror_card_suicho_axe.y = y - _mid + lengthdir_y(_dist, ror_card_suicho_rotation);
			with ror_card_suicho_axe {
				with pHitBox {
					if place_meeting(x, y, other) {
						//print("Ah")
						if (!transcendent && player != other.player) {
							destroyed = true;
							hitbox_timer = length;
						}
					}
				}
			}
		}
	} else {
		if instance_exists(ror_card_suicho_axe) {
			ror_card_suicho_rotation = 90;
			instance_destroy(ror_card_suicho_axe);
		}
	}
	*/
	#endregion
	
	#region //Idle Based Items
	var _rogue_idle = (!hitpause) && obj_stage_main.round_state != "break_round" && ( //Not in Hitpause and Not a Breakround
			(state == PS_IDLE) //Idle
		|| 	(ror_card_install_platypus && (state == PS_PARRY_START || state == PS_PARRY || state == PS_CROUCH)) //Perry the Platypus Item
		|| 	(ror_card_teto && check_attack_array(attack, ror_attacks_taunt) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) //Perry the Platypus Item
	)
	if _rogue_idle {
		ror_idle_timer++;
		//ror_idle_timer++;
	} else {
		ror_idle_timer = 0;
	}	
	//
	if (_rogue_idle) { //In Idle
		//Idle Speed Rates
		//var _idle_creepy = clamp(60 - ((ror_card_creepypasta - 1) * 10), 10, 60)
		//	
		//print([state_cat, SC_HITSTUN])
	
		#region //Slenderman Random TP
		if (ror_card_creepypasta) {
			//var _tp_rng = ror_rng_call(0, 4) > 0;
			var _tp_rng = true;
			var _platform_check = ror_rng_call(0, 6);
			//
			//Idle rate
			var _idle_rate = clamp(
				ceil(
					(60 - ((ror_card_creepypasta - 1) * 10))
					/ power(2, ror_card_lazy_bones)
				)
			,1, infinity);
			//var _idle_rate = 15;
			//print(_idle_rate);
			//print([_tp_rng, _platform_check]);
			if (ror_idle_timer && ror_idle_timer % _idle_rate == 0 && _tp_rng) {
				var _curr_x = x;
				var _curr_y = y;
				//
				x = (room_width / 2) + (ror_rng_call(0, 11) - 5) * 64;
				y = get_marker_y(96);
				spr_dir *= -1;
				//
				switch(_platform_check) {
					case 0:
						if obj_stage_main.stage_plat_left.y <= get_marker_y(96) {
							x = obj_stage_main.stage_plat_left.x;
							x += (ror_rng_call(0, 3) - 1) * 64;
							y = obj_stage_main.stage_plat_left.y;
						}
					break;				
					case 1:
						if obj_stage_main.stage_plat_right.y <= get_marker_y(96) {
							x = obj_stage_main.stage_plat_right.x;
							x += (ror_rng_call(0, 3) - 1) * 64;
							y = obj_stage_main.stage_plat_right.y;
						}
					break;					
					case 2:
						if obj_stage_main.stage_plat_center.y <= get_marker_y(96) {
							x = obj_stage_main.stage_plat_center.x;
							x += (ror_rng_call(0, 3) - 1) * 64;
							y = obj_stage_main.stage_plat_center.y;
						}
					break;
					default:
						//Dunno
					break;
				}
				//
			}
			if (ror_idle_timer >= _idle_rate) {
				visible = false;
				ror_is_invis = true;
			}
		}
		#endregion
		#region //Nothing Happened
		/*
		if (ror_card_install_nothing && !ror_install_active) {
			if (ror_idle_timer % clamp(6 - ror_card_install_nothing, 1, infinity) == 0) { //Every 5 frames by default
				//ror_install_meter += ((2 + (ror_card_lazy_bones * 2) + ror_card_install_charge_champ) * ror_install_mult);
				give_meter(self, 2 + (ror_card_lazy_bones * 2));
			}
		}
		*/
		if (ror_card_install_nothing) {
			if (ror_idle_timer % clamp(6 - ror_card_install_nothing, 1, infinity) == 0) { //Every 5 frames by default
				//ror_install_meter += ((2 + (ror_card_lazy_bones * 2) + ror_card_install_charge_champ) * ror_install_mult);
				give_meter(self, 2 + (ror_card_lazy_bones * 2));
			}
		}
		#endregion
		#region//Nap Time (Idle Healing Item)
		if (ror_card_nap_time && get_player_damage(player)) {
			//Idle rate
			var _idle_rate = clamp(
				ceil(30 / power(2, ror_card_lazy_bones))
			,1, infinity);
			//print(_idle_rate)
			//
			if (ror_idle_timer >= (_idle_rate * 2) && ror_idle_timer % _idle_rate == 0) {
				//sound_play(kirby_heal_sfx);
				//set_player_damage(player, clamp(get_player_damage(player) - ror_card_nap_time * (ror_card_bamboo + 1), 0, 999));
				heal_player(self, ror_card_nap_time, kirby_heal_sfx);
				//print(_base_damage)
			}
		}
		#endregion
		#region//House Warming (Idle Missile)
		if (ror_card_house) {
			//Idle rate
			var _idle_rate = clamp(
				ceil(
						ceil(180 - (ror_card_house - 1) * 22)
					/ 	power(2, ror_card_lazy_bones)
				)
			,30, infinity);
			//print(_idle_rate)
			if (ror_idle_timer && (ror_idle_timer % _idle_rate == 0)) {
				var _self = self;
				var _miss_target = -4;
				with oPlayer {
					if state != PS_RESPAWN && (get_player_team( player ) != get_player_team(_self.player)) && (_miss_target == -4 || point_distance(_self.x, _self.y, self.x, self.y) < point_distance(_self.x, _self.y, _miss_target.x, _miss_target.y)) {
						_miss_target = self;
					}
				}
				//Missile Spawn
				var _player = self;
				with obj_stage_main.main_obj {
					for (var a = 0; a <= other.ror_card_extra_bullets; a++) {
						var _atg = create_hitbox(AT_FSPECIAL, 1, round(_player.x), round(_player.y - _player.char_height));
						//Owner
						_atg.player = _player.player;
						//_atg.player_id = _player.player;
						_atg.ror_player_id = _player;
						_atg.ror_hitbox_type = "proj";
						//Target
						_atg.ror_atg_target = _miss_target;
						//Init Speed
						var _angle = _player.spr_dir == 1 ? 135 : 45;
						_angle += _player.spr_dir * a * 15;
						//print(_angle)
						var _speed = sqrt(power(3, 2) * 2); //3 and 3
						_atg.vsp = lengthdir_y(_speed, _angle);
						_atg.hsp = lengthdir_x(_speed, _angle);
						
						_atg.extra_delay = 3 * a; //Extra Frame Delay for missiles
						//print([_atg.vsp, _atg.hsp])
						//Damage is 100% of damage dealth + 50% Per Stack
						_atg.damage = 10
						
						_atg.is_atg = true;
						//Other Items
						apply_cards(_atg, other)
					}
				}
			}
		}
		#endregion
	} else { //Not Idle
		if (ror_card_install_nothing && !ror_install_active) && obj_stage_main.round_state_timer >= 120 {
			if ror_install_meter {
				//meter_particle(self, -1); //Lag Machine
				//ror_install_meter--;	
				give_meter(self, -1);
			}
		}
	}

	#endregion
	#region //Levitate
	if (ror_card_levitate) {
		//Code taken directly from Gengar
		if(free and !hitpause and state != PS_RESPAWN and state_cat != SC_HITSTUN and down_hard_pressed and !fast_falling and !(state == PS_DOUBLE_JUMP and state_timer < 9) and state != PS_PRATFALL){
			if !(vsp > 0){
				vsp = 0;
				do_a_fast_fall = true;
			}
		}
		if(state == PS_PRATFALL){
			can_fast_fall = true;
		}
	}
	#endregion
    #region //Funny Dash
    if (ror_card_funny_dash){
        if (state == PS_DASH_START){
            if (state_timer == 0){
                sound_stop(runstart_sfx);
                sound_play(runstart_sfx, true);
            }
            ror_was_in_dashstart = true;
        }
        else{
            if (ror_was_in_dashstart){
                sound_stop(runstart_sfx);
                ror_was_in_dashstart = false;
            }
        }
        if (state == PS_DASH){
            if (state_timer == 0){
                sound_stop(runstart_sfx);
                sound_stop(rungo_sfx);
                sound_play(rungo_sfx);
            }
			//Coyote Time
			if (free) { 
				free = false;
				vsp = 0;
			}
        }
    }
    #endregion
	#region //Spicy
	//print(burn_timer);
	//print(burn_timer)
	//print(burn_timer)
	var _burn_damage = 0;
	//print([player, burned, ror_previous_burned, burn_timer, !hitstop])
	if (state_cat != SC_HITSTUN && ((burned && burn_timer && burn_timer % 30 == 0) || (!burned && ror_previous_burned)) && !hitstop) {
	//if (state_cat != SC_HITSTUN && burned && burn_timer % 30 == 0 && !hitstop) {
		var _burnt_id = instance_exists(burnt_id) ? burnt_id : ror_previous_burnt_id;
		if ("ror_card_spicy" in _burnt_id && _burnt_id.ror_card_spicy) {
			print("spicy");
			_burn_damage += burnt_id.ror_card_spicy * 2;
		}
		//Install Heal 2x From Burn
		if (ror_install_active && ror_card_install_rise_from_ash) {
			_burn_damage += 3;
			//_burn_damage *= -2 * (ror_card_install_slow_start + 1) * (ror_card_bamboo + 1);			
			_burn_damage *= -1 * (ror_card_install_slow_start + 1) * (ror_card_bamboo + 1);			
			//Ash Heal 
			//sound_play(kirby_heal_sfx);
			//set_player_damage(player, clamp(get_player_damage(player) + _burn_damage - 1, 0, 999));			
		} else { //Regular burn
			//set_player_damage(player, clamp(get_player_damage(player) + _burn_damage, 0, 999));
		}
	}
	#endregion
	#region //Going for Seconds
	//print([_hit_player_obj, "ror_card_seconds" in _hit_player_obj ? _hit_player_obj.ror_card_seconds : "False"])
	
	if ("ror_card_seconds" in _hit_player_obj && _hit_player_obj.ror_card_seconds && (burned || ror_previous_burned) && !hitpause && state_cat == SC_HITSTUN && (state_timer == floor(hitstun_full / 2))) {
	//if (instance_exists(_hit_player_obj) && _hit_player_obj.ror_card_seconds && (burned || ror_previous_burned) && !hitpause && state_cat == SC_HITSTUN && (state_timer == floor(hitstun_full / 2))) {
		//Burned Consume
		var _burn_ticks =  floor((150 - burn_timer) / 30); //Maybe Reduce to 1 or 3 instead of 5. Cause this might be broken
		//print([burn_timer, _burn_ticks])
		#region //Copy and Paste from //Spicy (Add _burn_ticks)
		//var _burn_damage = 0;
		_burn_damage++;
		if ("ror_card_spicy" in burnt_id && burnt_id.ror_card_spicy) {
			//print("spicy");
			
			_burn_damage += burnt_id.ror_card_spicy * 2;
		}
		//Install Heal 2x From Burn
		if (ror_install_active && ror_card_install_rise_from_ash) {
			//_burn_damage++;
			_burn_damage *= -1 * (ror_card_install_slow_start + 1) * (ror_card_bamboo + 1);			
			//Ash Heal 
			//sound_play(kirby_heal_sfx);
			//set_player_damage(player, clamp(get_player_damage(player) + (_burn_damage * _burn_ticks), 0, 999));			
		} else { //Regular burn
			//set_player_damage(player, clamp(get_player_damage(player) + (_burn_damage * _burn_ticks), 0, 999));
		}
		
		_burn_damage *= _burn_ticks;
		print(["Seconds", _burn_ticks, _burn_damage]);
		#endregion //Copy and Paste from //Spicy
		ror_baked_player = -4;
		burned = false;
		sound_play(asset_get("sfx_burnconsume"));
		if !_was_invis {
			spawn_hit_fx(x, y, HFX_ZET_FIRE);
		}
		var _speed = sqrt(sqr(hsp) + sqr(vsp));
		var _angle = 270;
		var _dir = other.spr_dir;
		hitpause = true;
		hitstop = 10;
		sent_down = true;
		old_vsp = lengthdir_y(_speed, _angle) * (1 + _hit_player_obj.ror_card_meteor_master * .25);
		old_hsp = lengthdir_x(_speed, _angle) * _dir;
	}
	#endregion
	#region //Hittable Projectile - Unused
	/*
	if (false) {
		var _reflect_player = player;
		with pHitBox {
			with pHitBox {
				if (self != other && other.type == 1 && type == 2) {
					var _speed = sqrt(sqr(hsp) + sqr(vsp));
					var _angle = other.kb_angle == 361 ? 45 : other.kb_angle;
					var _dir = other.spr_dir;

					print([_angle, _speed]);
					if place_meeting(x, y, other) {
						player = _reflect_player;
						print("Reflect");
						hitbox_timer = 0;
						destroyed = false;
						sound_play(asset_get("mfx_star"));
						vsp = lengthdir_y(_speed, _angle);
						hsp = lengthdir_x(_speed, _angle) * _dir;
					}
				}
			}
		}
	}
	*/
	#endregion
	#region //404 Error
	if (ror_card_transparent) {
		if (y > obj_stage_main.brook_plat_height) {
			if (spr_dir != 0) {
				prev_spr_dir = spr_dir;
				spr_dir = 0;
			}			
		} else {
			if spr_dir == 0 {
				spr_dir = prev_spr_dir;
			}
		}
	}
	//Nuh Uh
	//if (true && obj_stage_main.practice_mode) {
	if (ror_card_nuhuh) {
		with oPlayer {
			if !(self == other || ror_card_nuhuh >= other.ror_card_nuhuh) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (other.state == PS_ATTACK_AIR || other.state == PS_ATTACK_GROUND) {
				if (attack == other.attack) {
					if !hitpause {
						hitpause = true;
						hitstop = 2;
						old_hsp = hsp;
						old_vsp = vsp;
						sound_play(sound_get("ror_nuh_uh")); //Error SFX;
					} else {
						hitstop = 2;
					}
				}
			}
		}
	}
	#endregion
	#region //Wrastor Dogfight
	if (ror_card_dogfight) {
		//print(["Dog Fight Info", ror_card_dogfight, djumps, has_airdodge, ror_airdodge_count])
		if (state_timer == 0) {
			ror_card_dogfight_has_hit = false;
		}
		if !ror_card_dogfight_has_hit && ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && has_hit && free) {
			ror_card_dogfight_has_hit = true;
			djumps = clamp(djumps - ror_card_dogfight, 0, infinity);
			has_airdodge = true;
			ror_airdodge_count = clamp(ror_airdodge_count - ror_card_dogfight, 0, infinity);
			ror_grav_cancel_count = clamp(ror_grav_cancel_count - ror_card_dogfight, 0, infinity);
			//Float
			ror_float_time = 0;
			ror_can_float = true;			
			//Wall Jump
			ror_walljump_count = 0;
			has_walljump = true;
			//
		}
	}
	#endregion
	#region //Blake
	if (ror_card_trash_baby) {
		//print(["Blake", has_hit, state, attack_to_name(attack), prev_state])
		if ((check_attack_array(attack, ror_attacks_uspecial) || attack == 0) && has_hit && state == PS_PRATFALL) && (prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND) {
			print("Blake")
			set_state(PS_IDLE_AIR);
		}
	}
	#endregion
    #region //Tidal Flow
    if (ror_card_tidal_flow){
		/*
        var _tide_min = clamp(120 - (ror_card_tidal_flow - 1) * 10, 10, 120);
        */
		
        ror_tidal_mult_prev = ror_tidal_mult;
		if (get_player_damage(player) >= 100) {
			var _tidal_amount = ((floor(get_player_damage(player) / 10) - 10) * ror_card_tidal_flow) * .05;
			//print(["Tidal: ", _tidal_amount]);
			ror_tidal_mult = clamp(_tidal_amount, 0, 1);
        } else {
			ror_tidal_mult = 0;
		}
		
        if (ror_tidal_mult != ror_tidal_mult_prev){
            ror_update_stats = true;

            if (ror_tidal_mult > ror_tidal_mult_prev){
                //only play sfx/spawn vfx if the buff multiplier is higher than it was before
				if !_was_invis {
					spawn_hit_fx(x, y - char_height/2, 150);
				}
                sound_stop(asset_get("sfx_watergun_splash"));
                sound_play(asset_get("sfx_watergun_splash"));
            }
        }
    } else {
		ror_tidal_mult = 0;
	}
    #endregion
    #region //Crouch Jump
    if (ror_card_crouch_jump > 0){
        if (state == PS_FIRST_JUMP && state_timer == 1) { 
            if (prev_state == PS_JUMPSQUAT && prev_prev_state == PS_CROUCH && jump_down) {
                vsp -= jump_speed/(2.85 - 0.35 * (ror_card_crouch_jump - 1));
                vsp = clamp(vsp, -16, infinity);
                
                sound_stop(asset_get("sfx_frog_ustrong"));
                sound_play(asset_get("sfx_frog_ustrong"));
            }
        } 
    }
    #endregion
    #region //Lower Parry Cooldown
    if (ror_card_regen_shell > 0){
        if (parry_cooldown == 20){
            parry_cooldown -= 4*ror_card_regen_shell;
			parry_cooldown = clamp(parry_cooldown, 0, infinity);
        }
    }
    #endregion
    #region //Heal On Parry	- Basil
    if (ror_card_parry_heal){
        //if (variable_instance_exists(enemy_hitboxID, "damage")){
            if (perfect_dodged && perfect_dodging && !parried_jab && invince_time == _parry_invince_time && (!hitstop || ror_roll_parried)) { //check for successful parry
            //[note: make sure any items that mess with parry invincibility run after this check or else it won't work properly]
                //if (get_player_damage(player) > 0 && enemy_hitboxID.damage > 0){
                if (get_player_damage(player)){
                    sound_stop(melon_sfx);
                    sound_play(melon_sfx);
                    
					/*
                    var ror_parry_heal_base_mult = 0.5;
                    var ror_parry_heal_mult = (ror_card_parry_heal > 1) ? (ror_parry_heal_base_mult + (ror_card_parry_heal - 1) * 0.25) : ror_parry_heal_base_mult;
                    set_player_damage(player, clamp(get_player_damage(player) - round(enemy_hitboxID.damage * ror_parry_heal_mult * (ror_card_bamboo + 1)), 0, 999));
					*/
					//set_player_damage(player, clamp(get_player_damage(player) - (5 * ror_card_parry_heal * (ror_card_bamboo + 1)), 0, 999));
					heal_player(self, ror_card_parry_heal * 5, melon_sfx);
                }
            }
        //}
    }
	//print(["Heal on Parry", perfect_dodged, perfect_dodging, !parried_jab, invince_time, 60]);
    #endregion
	#region //Defense Missile
	if (ror_card_missile_defense) {
        if (perfect_dodged && perfect_dodging && !parried_jab && invince_time == _parry_invince_time && (!hitstop || ror_roll_parried)){ //check for successful parry
			ror_stage_parry_missile = -4;
            //print(["Self Defense", obj_stage_main, _stage_parry_missile_id, _hit_player_obj]);
			//Missile Spawn Start
			var _player = self;
			//var _atg_rng = random_func(7, 100, true) + 1;
			//print("Defense Missile");
			var _def_opp_star = ror_card_star - (instance_exists(_stage_parry_missile_id) ? _stage_parry_missile_id.ror_card_star : _hit_player_obj.ror_card_star)
			var _atg_rng = rogue_rng_outcome(100, abs(_def_opp_star), sign(_def_opp_star) == -1 ? "higher" : "lower") + 1; //Lower Number. Better Roll
			var ror_def_chance = obj_stage_main.practice_mode ? 100 : 20 * ror_card_missile_defense;
			//ror_def_chance = 20 * ror_card_missile_defense;
			if (ror_def_chance >= _atg_rng) {
				with obj_stage_main.main_obj {
					for (var a = 0; a <= other.ror_card_extra_bullets; a++) {
						var _atg = create_hitbox(AT_FSPECIAL, 1, round(_player.x), round(_player.y - _player.char_height));
						//Owner
						_atg.player = _player.player;
						//_atg.player_id = _player.player;
						_atg.ror_player_id = _player;
						_atg.ror_hitbox_type = "proj";
						//Target
						_atg.ror_atg_target = instance_exists(_stage_parry_missile_id) ? _stage_parry_missile_id : _hit_player_obj;
						//Init Speed
						var _angle = _player.spr_dir == 1 ? 135 : 45;
						_angle += _player.spr_dir * a * 15;
						//print(_angle)
						var _speed = sqrt(power(3, 2) * 2); //3 and 3
						_atg.vsp = lengthdir_y(_speed, _angle);
						_atg.hsp = lengthdir_x(_speed, _angle);
						
						_atg.extra_delay = 3 * a; //Extra Frame Delay for missiles
						//print([_atg.vsp, _atg.hsp])
						//Damage is 100% of damage dealth + 50% Per Stack
						_atg.damage = 10;
						
						
						//Other Items
						apply_cards(_atg, other);
					}
				}
			}
			//Missile Spawn End
        }
	}
	#endregion

	#region //Bounce Buds
	if !free {
		ror_djumps_used = 0;
	}
	if (ror_card_bounce_bud) {
		if (state_timer == 0 && state == PS_DOUBLE_JUMP) {
			ror_djumps_used++;
			print(["Double Jumps Used: ", ror_djumps_used]);
		}
	}
	#endregion
    #region //Absa Double Jump
    if (ror_absa_djump){
        if (state == PS_DOUBLE_JUMP){
            if (state_timer == 0){
                sound_stop(asset_get("sfx_absa_jump"));
                sound_play(asset_get("sfx_absa_jump"));
            }
        }
    }
    #endregion
	#region //Based Cast
	if (ror_card_assist) { //Mira
		if !ror_assist_cooldown && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) &&  (
				(check_attack_array(attack, ror_attacks_fspecial) && window == 1 && window_timer = 0) || 
				(
					special_pressed && //Special Pressed
					!(check_attack_array(attack, ror_attacks_fspecial) || check_attack_array(attack, ror_attacks_uspecial) || check_attack_array(attack, ror_attacks_nspecial) || attack == AT_DSPECIAL) //Can't be a Special
				)
			) 
		{
			//clear_button_buffer(PC_TAUNT_PRESSED); //TEMP
			//print("Summon Assist")
			ror_assist_cooldown = clamp(600 - (ror_card_assist - 1) * 90, 10, infinity); //10 Seconds - 1.5 Second Per Card
			
			var _dir = spr_dir;
			if (left_down ^^ right_down) {
				_dir = left_down ? -1 : 1;
			}
			//
			with obj_stage_main {
				var _assist = instance_create(other.x + 48 * other.spr_dir, other.y, "obj_stage_article", 10);
				_assist.spr_dir = _dir;
				_assist.player_id = other;
				_assist.assist_num = other.ror_assist_char;
			}
			//
			ror_assist_char++;
			if ror_assist_char >= ror_assists_total {
				ror_assist_char = 0;
			}
		}
		if ror_assist_cooldown {
			ror_assist_cooldown--;
		}
		
		//temp
		/*
		if (special_pressed) && (left_down || right_down || left_pressed || right_pressed) {
			ror_assist_cooldown = true;
		}
		*/
	}
	#endregion
	#region //Techxectuion //Missed Tech over 300% - 50% per stack
	//Yeah this is jank
	/*
	if instance_exists(_hit_player_obj) {
		print(300 - (_hit_player_obj.ror_card_techxecution - 1) * 50);
	}
	*/
	if instance_exists(_hit_player_obj) && "ror_card_techxecution" in _hit_player_obj && _hit_player_obj.ror_card_techxecution && get_player_damage(player) >= 300 - (_hit_player_obj.ror_card_techxecution - 1) * 50 {
		if (state_cat == SC_HITSTUN && ror_prev_vsp && !hitpause) {
			var _minimum_execute_speed = 5;
			if 	(sign(hsp) != sign(ror_prev_hsp) && abs(ror_prev_hsp) >= _minimum_execute_speed) || 
				(sign(vsp) != sign(ror_prev_vsp) && abs(ror_prev_vsp) >= _minimum_execute_speed)
			{
				spawn_hit_fx(x, y, HFX_ELL_BOOM_BIG);
				//y = room_height * 4;
				create_deathbox(x, y, 100, 100, player, true, 0, 3, 2);
			}
		}
	}
	#endregion
	#region //Boomerang
	with pHitBox {
		//print([player_id.ror_card_boomerang, hitbox_timer, floor(length / 2), hitbox_timer == floor(length / 2) ? "True" : "False"])
		//if ("ror_card_boomerang" in player_id && player_id.ror_card_boomerang && player == other.player) || ("ror_player_id" in self && ror_player_id.ror_card_boomerang && other.player == ror_player_id.player) {
		if type == 2 && (("ror_card_boomerang" in player_id && player_id.ror_card_boomerang && player == other.player) || ("ror_player_id" in self && ror_player_id.ror_card_boomerang && other.player == ror_player_id.player)) {
			if (hitbox_timer == floor(length / 2)) {
				spr_dir *= -1;
				vsp *= -1;
				hsp *= -1;
			}
		}
	}
	#endregion
	#region //Roman Cancel
	if (ror_card_roman && ror_roman_meter >= ror_roman_meter_cost) {
		//if !(state_cat == SC_HITSTUN || state == PS_PRATFALL || state == PS_PRATLAND) {
		if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
			if (shield_pressed) {
				ror_roman_meter -= ror_roman_meter_cost
				hitpause = false;
				clear_button_buffer(PC_SHIELD_PRESSED);
				//Strongs
				clear_button_buffer(PC_LEFT_STRONG_PRESSED);
				clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
				clear_button_buffer(PC_UP_STRONG_PRESSED);
				clear_button_buffer(PC_DOWN_STRONG_PRESSED);				
				clear_button_buffer(PC_STRONG_PRESSED);				
				//Sticks
				clear_button_buffer(PC_LEFT_STICK_PRESSED);
				clear_button_buffer(PC_RIGHT_STICK_PRESSED);
				clear_button_buffer(PC_UP_STICK_PRESSED);
				clear_button_buffer(PC_DOWN_STICK_PRESSED);
				//Other
				clear_button_buffer(PC_SPECIAL_PRESSED);
				clear_button_buffer(PC_ATTACK_PRESSED);
				//
				set_state(free ? PS_IDLE_AIR : PS_IDLE);
				sound_play(asset_get("sfx_ice_shatter_big"));
				
				hitstop = false;
				hitpause = false;
				if joy_pad_idle {
					//
				} else {
					var _roman_speed = 8;
					var _angle = joy_dir;
					hsp = lengthdir_x(_roman_speed, _angle);
					vsp = lengthdir_y(_roman_speed, _angle);
					old_hsp = hsp;
					old_vsp = vsp;
					
					print([_angle, hsp, vsp]);
					
				}
				

				
				if !_was_invis {
					spawn_hit_fx(x, y - char_height / 2, HFX_ORI_ORANGE_BIG);
				}
			}
		}
	}
	#endregion
	#region //Reflector
	//Next Reflect
	if (ror_card_reflector) {
		with pHitBox {
			if "ror_reflect_array" !in self {
				ror_reflect_array = [0, 0, 0, 0, 0];
			}
		}
		var _reflect_chance = ror_card_reflector * 10; //10
		with hurtboxID {
			var _hitboxes = 0;
			with pHitBox {
				_hitboxes++;
				//No reflecting physical rogue spawned hitboxes
				var _can_reflect = true;
				if ("ror_hitbox_type" in self && ror_hitbox_type == "physical") || ("ror_cannot_reflect" in self && ror_cannot_reflect) {
					_can_reflect = false;
				}
				//
				if _can_reflect {
					//print("Reflect");
					var _reflect_rng = rogue_rng_outcome(100, 0, "lower") + 1;
					//
					//print(["Reflect Chance", _reflect_chance, _reflect_rng])
					//
					if (type == 2 && player != other.player && place_meeting(x, y, other) && !ror_reflect_array[other.player]) {
						ror_reflect_array[other.player] = true;
						//Reflect Chance
						if (_reflect_chance >= _reflect_rng) {
							//Missile Reflect
							if "ror_atg_target" in self {
								var _target = ror_player_id
								var _owner = ror_atg_target
								ror_player_id = _owner;
								ror_atg_target = _target;
							}
							//
							ror_reflect_array = [0, 0, 0, 0, 0];
							//Normal
							vsp *= -1.25;
							hsp *= -1.25;
							damage *= 1.25;
							hitbox_timer = 0;
							sound_play(asset_get("mfx_star"));
							spawn_hit_fx(x, y, HFX_ORI_BLUE_SMALL);
							player = other.player;
						}
					}
				}
			}
		}
	}
	#endregion
	#region //Poison Items
	//

	//Biological Weapon
	var _poison_damage = 0;
	if poison {
		if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && state_timer == 0 && !hitpause && poison_ids[0].ror_card_biological_weapon {
			//set_player_damage(player, get_player_damage(player) + poison_ids[0].ror_card_bio_poison * poison_ids[0].ror_card_biological_weapon);
			_poison_damage += poison_ids[0].ror_card_bio_poison * poison_ids[0].ror_card_biological_weapon;
		}
	}
	#endregion
	#region //Funky Tea
	if ror_card_funky_tea && !(state == PS_PRATLAND || state == PS_CROUCH) {
		hsp += spr_dir * sin(get_gameplay_time() / 10) * .2 * ror_card_funky_tea;
	}
	#endregion
    #region //The Floor is Lava
    if (ror_card_floor_lava){
        if (!free){           
            if (ror_ground_timer % clamp(120 - 30*(ror_card_floor_lava - 1), 15, 120) == 0 && obj_stage_main.round_state == "alive" && !invincible && invince_time <= 0){
                //take_damage( player, -1, 3 );
				_self_damage += 3;
				var _x = x;
				var _y = y;
				if visible {
					with obj_stage_main.main_obj {
						if !_was_invis {
							var _fire_vfx = spawn_hit_fx(_x, _y, obj_stage_main.vfx_fire);
							_fire_vfx.depth = other.depth - 1;
						}
					}
				}
                
                sound_stop(asset_get("sfx_zetter_upb_hit"));
                sound_play(asset_get("sfx_zetter_upb_hit"), false, noone, 0.5, 1.1);
            }
			ror_ground_timer++;
        }
        else{
            ror_ground_timer = 0;
        }
    }
	#region //Toke
	if !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && ror_should_buffet {
		//print("Special Buffet");
		for (var i = 0; i <= 50; i++) {	
			move_cooldown[i] = 0;
		}
		ror_should_buffet = false;
	}
	#endregion
	#region //Master of One (Must be after Toke because of cooldowns) //Might be a Janky Item so disable it from defaults if it does or make it Experimental
	var _disable_metapod = false;
	if (ror_card_master_of_one) {
		//print(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
		//var _force_attack = true;
		if (ror_master_attack == -4 && state_timer == 0 && master_blacklist()) {
			if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && state_timer == 0 && !_disable_metapod) {
				ror_master_attack = attack;
				//print(["Master of One", attack_to_name(ror_master_attack)])
				//
				sound_play(asset_get("sfx_holy_tablet"));
				spawn_hit_fx(x, y - char_height / 2, 156);
				//
				//Use grounded attacks in the air
				set_attack_value(ror_master_attack, AG_CATEGORY, 2);
				//Makes Air Sprite same as Ground if there is none
				if (get_attack_value( ror_master_attack, AG_AIR_SPRITE) == 0) {
					set_attack_value( ror_master_attack, AG_AIR_SPRITE, get_attack_value(ror_master_attack, AG_SPRITE) )
					set_attack_value( ror_master_attack, AG_HURTBOX_AIR_SPRITE, get_attack_value(ror_master_attack, AG_HURTBOX_SPRITE) )
				}
				//print(get_attack_value( ror_master_attack, AG_AIR_SPRITE))
				//for (var i = 0; i <= get_attack_value(ror_master_attack, AG_NUM_WINDOWS); i++) { //I probably won't do window stuff
				for (var i = 0; i <= 20; i++) { 
					/*
						Resets Each Round
						---------------------------
						50% more damage
						20% More Base KB
						+.25 KB Scaling
					*/
					set_hitbox_value(ror_master_attack, i, HG_DAMAGE, get_hitbox_value(ror_master_attack, i, HG_DAMAGE) * (1.5 * ror_card_master_of_one));
					set_hitbox_value(ror_master_attack, i, HG_BASE_KNOCKBACK, get_hitbox_value(ror_master_attack, i, HG_BASE_KNOCKBACK) * (1.2 * ror_card_master_of_one));
					set_hitbox_value(ror_master_attack, i, HG_KNOCKBACK_SCALING, get_hitbox_value(ror_master_attack, i, HG_KNOCKBACK_SCALING) + (.25 *ror_card_master_of_one));
					set_hitbox_value(ror_master_attack, i, HG_HITSTUN_MULTIPLIER, get_hitbox_value(ror_master_attack, i, HG_HITSTUN_MULTIPLIER) * .65);
					
					//if (i <= 10) {
					//	print(["Metapod", 
					//	//	get_hitbox_value(ror_master_attack, i, HG_DAMAGE),
					//		get_hitbox_value(ror_master_attack, i, HG_BASE_KNOCKBACK),
					//	//	get_hitbox_value(ror_master_attack, i, HG_KNOCKBACK_SCALING)
					//	]);
					//}				
				}
				//Attack Buff
				
			}
		}
		//Protects from infinite stalls with USPECIAL + DJUMP removal
		if (ror_master_attack != -4) { //There is a black list so this is needed
			//Infinite Double Jump Stalling			
			if (ror_infinite_stall_protection) {
				if djumps < max_djumps {
					djumps++;
					ror_infinite_stall_protection = false;
				}
				if !free {
					ror_infinite_stall_protection = false;
				}			
			}
			//Fixes Daora, but breaks Kragg
			if (attack != ror_master_attack) {
				if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
					move_cooldown[ror_master_attack] = 0;
				}
			} else {
				if !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
					move_cooldown[ror_master_attack] = 0;
				}
			}
			//
			if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack != ror_master_attack) && state_timer == 0 && !has_rock { //Has rock makes kragg work I guess
				if !move_cooldown[ror_master_attack] {
					if (free && jump_pressed) {
						//print(djumps)
						ror_infinite_stall_protection = true;
					}
					//print("Metapod")
					//move_cooldown[ror_master_attack] = 9999;
					/*
					if 		(ror_master_attack == AT_BAIR && attack != AT_BAIR && ())
						|| 	(attack != ror_master_attack && attack == AT_BAIR) {
						spr_dir *= -1;
					}
					*/
					if (ror_master_attack == AT_BAIR) {
						var _dir = -(left_down || left_stick_down || left_strong_down) + (right_down || right_stick_down || right_strong_down)
						if (_dir != 0) {
							spr_dir = -_dir;
						}
					} else {
						if (attack == AT_BAIR) {
							spr_dir *= -1;
						}
					}
					//
					attack = ror_master_attack;
					set_attack(ror_master_attack);
					move_cooldown[ror_master_attack] = 9999;
				}
			}
		}
	}
	#endregion
	#region //Black Hole
	//print(["Blackhole", attack, AT_NSPECIAL, window, window_timer, get_window_value(attack, 1, AG_WINDOW_LENGTH)]);
	if (ror_card_hole) && ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (
				check_attack_array(attack, ror_attacks_nspecial)
				//(attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR) ||
				//Whitelisted Neutral Specials
				//(url == CH_RANNO && attack == AT_FSPECIAL)
			)) {
		if (state_timer == 0) {
			ror_has_thrown_hole = false;
		}

		if (!ror_has_thrown_hole) {
			var _throw = false;
			//Spawned a Hitbox
			with pHitBox {
				if (player_id == other && attack == other.attack) {
					_throw = true;
				}
			}
			//Also works at the end of Window 1
			//if !hitpause && (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1) {
			if !hitpause && (window == 2 && window_timer == 0) {
				_throw = true;
			}
			//
			if _throw {
				var _player = self;
				with obj_stage_main.main_obj {
					var _hole = create_hitbox(AT_NSPECIAL, 1, round(_player.x + _player.spr_dir * 32), round(_player.y - _player.char_height / 2));
					_hole.ror_stage_proj_bullet_hell = true;
					//Owner
					_hole.player = _player.player;
					_hole.spr_dir = _player.spr_dir;
					_hole.hsp = abs(_hole.hsp) * _player.spr_dir;
					_hole.ror_player_id = _player;
					_hole.ror_hitbox_type = "proj";
					//						
					apply_cards(_hole, _player);
				}
				//
				ror_has_thrown_hole = true;
			}
		}
	}
	#endregion
	#region//Strong Charge
	if (ror_card_quick_charge > 0) {
		if (smash_charging) {
			strong_charge += ror_card_quick_charge;
		}
	}
	//Infinite Charging
	if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && state_timer == 0 {
		ror_inf_charge = 0;
	}
	if 	(ror_card_inf_charge) {
		//print(["Infinite Strong Charge: ", ror_inf_charge, strong_charge])
		if 	(
				(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) &&
				(get_attack_value(attack, AG_STRONG_CHARGE_WINDOW)) &&
				(window <= get_attack_value(attack, AG_STRONG_CHARGE_WINDOW)) 
			) {
			if strong_charge {
				ror_inf_charge += strong_charge;
				strong_charge = 0;
			}	
		} else {
			strong_charge = ror_inf_charge//clamp(ror_inf_charge, 0, 60);
		}
		//damage_scaling = 1 + floor(ror_inf_charge / 60 / 2); //Per 60 Frames is 50% Damage Scaling
	}
	#endregion
	#region //Invisibility
	if (ror_card_invis) {
		//print([attack_to_name(attack), window, get_attack_value(attack, AG_STRONG_CHARGE_WINDOW)]);
		if 	(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && 
			(get_attack_value(attack, AG_STRONG_CHARGE_WINDOW)) &&
			(window <= get_attack_value(attack, AG_STRONG_CHARGE_WINDOW))
		{
			//print("?")
			visible = false;
			ror_is_invis = true;
		}
	}
	#endregion
	#region //A
	if (ror_card_gura) && ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && check_attack_array(attack, ror_attacks_ustrong)) {
		if (state_timer == 0) {
			ror_has_thrown_fish = false;
			ror_boosted_fish = false;
		};

		if (!ror_has_thrown_fish) {
			//Boost
			if ((strong_charge >= 30 || ror_inf_charge >= 30) && !ror_boosted_fish) {
				ror_boosted_fish = true;
				sound_play(asset_get("mfx_star"))
				if visible {
					spawn_hit_fx(x, y - 20, 301);
				}
			}
			//
			var _throw = false;
			with pHitBox {
				if (player_id == other && attack == other.attack) {
					var _throw = true;
				}
			}
			if _throw {
				var _player = self;
				var _left = left_down;
				var _right = right_down;
				with obj_stage_main.main_obj {
					//
					//for (var a = 0; a <= other.ror_card_extra_bullets; a++) { //Bullet Hell Buddy
					var _fish = create_hitbox(AT_USTRONG, 1, round(_player.x), round(_player.y) - 90);
					_fish.ror_is_fish = true;
					_fish.ror_stage_proj_bullet_hell = true;
					//Owner
					_fish.player = _player.player;
					_fish.hsp = abs(_fish.hsp);
					_fish.ror_player_id = _player;
					_fish.ror_hitbox_type = "proj";
					//Krankees Fish Code
					if (_player.ror_boosted_fish) {
						_fish.hsp = 6;	
						_fish.vsp = -12;
						if (_left ^^ _right) {
							if (_left) {
								_fish.hsp = _player.spr_dir == 1 ? 8 : 4;
								_fish.vsp = _player.spr_dir == 1 ? -10 : -16;
							} else {
								_fish.hsp = _player.spr_dir == 1 ? 4 : 8;
								_fish.vsp = _player.spr_dir == 1 ? -16 : -10;
							}
						}
					} else {
						if (_left ^^ _right) {
							if (_left) {
								_fish.hsp = _player.spr_dir == 1 ? 6 : 2;
								_fish.vsp = _player.spr_dir == 1 ? -8 : -12;
							} else {
								_fish.hsp = _player.spr_dir == 1 ? 2 : 6;
								_fish.vsp = _player.spr_dir == 1 ? -12 : -8;
							}
						}
					}
					_fish.hsp *= _player.spr_dir * -1;
					//
					if (other.ror_card_extra_bullets) {
						//_fish.hsp *= (a / other.ror_card_extra_bullets) * 2;
					}
					//						
					//print([_fish.hsp, _fish.vsp])
					//Bullet Hell
					apply_cards(_fish, _player);
					//}
				}
				//
				ror_has_thrown_fish = true;
			}
		}
	}	
	#endregion	
    #region //R-00 Neutral Special
    //check for card too
    if (ror_card_r00){
        //if ((state == PS_HITSTUN || state == PS_WALL_JUMP || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED || state == PS_RESPAWN) && ror_flip_count < ror_card_r00){ //refresh uses
        if ((state == PS_HITSTUN || state == PS_WALL_JUMP || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED || state == PS_RESPAWN)) { //refresh uses
            ror_flip_count = ror_card_r00;
        }
        var ror_speed_mult = -0.8;
        if (ror_flip_count > 0 && ror_flip_cooldown <= 0){
            if (taunt_pressed && (hsp != 0 || vsp != 0)){
                //flip stuff
                if (state_cat != SC_HITSTUN){
                    vsp *= ror_speed_mult;
                    hsp *= ror_speed_mult;
                    old_vsp *= ror_speed_mult;
                    old_hsp *= ror_speed_mult;
                    
                    vsp = clamp(vsp, -18, infinity);
                    old_vsp = clamp(old_vsp, -18, infinity);
                    
                    sound_stop(r00_sfx);
                    sound_play(r00_sfx);
                    
                    ror_flip_cooldown = 20;

                    clear_button_buffer( PC_TAUNT_PRESSED );
                    
                    if (free){
                        ror_flip_count--;
                    }
                }
            }
        }
        if (ror_flip_cooldown > 0){
            ror_flip_cooldown--;
        }
    }
    #endregion
	#region //Urgh //Unfinished - Needs a hitbox
	if (ror_card_urgh) {
		//var _test = false;
		//sound_play(thwomp_sfx);
		if (free && fast_falling && state != PS_PRATFALL && !hitpause) {
			if vsp <= fast_fall {
				if instance_exists(ror_thwomp_hitbox) {
					instance_destroy(ror_thwomp_hitbox);
				}
				sound_play(thwomp_sfx);	
				var _new_hitbox = false;
				with obj_stage_main.main_obj {
					var _hitbox = create_hitbox(AT_DAIR, 1, round(_player.x), round(_player.y));
					_hitbox.player = other.player;
					_hitbox.ror_player_id = other;
					_hitbox.ror_hitbox_type = "physical";
					_hitbox.ror_hitbox_parry_stun = true;
					_hitbox.ror_thwomp_player_id = other;
					//Owner
					other.ror_thwomp_hitbox = _hitbox;
					
					apply_cards(_hitbox, other);
					var _new_hitbox = true;
				}
				//Dony self Damage
				if _new_hitbox {
					_self_damage += ror_card_fools_gold * 2;
				}
			}
			vsp = 3 * fast_fall;
		}
		//
		if instance_exists(ror_thwomp_hitbox) {
			ror_thwomp_hitbox.x = x;
			//ror_thwomp_hitbox.y = y + floor(vsp / 2) * (ror_card_fools_gold ? ror_card_fools_gold * 1.35 : 1);
			ror_thwomp_hitbox.y = y - floor(vsp / 2) * (ror_card_fools_gold ? ror_card_fools_gold * 1.35 : 1) * (_scale_math);
			//
			if (free) {
				var _vfx = spawn_hit_fx(floor(x), floor(y + (char_height / 2)), 301);
				_vfx.depth = depth + 5;
			}

			//
			
			if (!free || vsp < fast_fall) {
				instance_destroy(ror_thwomp_hitbox);
			}
		}
	} else {
		if instance_exists(ror_thwomp_hitbox) {
			instance_destroy(ror_thwomp_hitbox);
		}
	}
	#endregion	
	#region //Impact Run
	//print([player, state, PS_DASH])
	if (ror_card_sonic_boom) {
		if (state == PS_DASH) {
			if !instance_exists(ror_dash_hitbox) {
				with obj_stage_main.main_obj {
					var _hitbox = create_hitbox(AT_DATTACK, 1, round(_player.x), round(_player.y));
					_hitbox.player = other.player;
					_hitbox.ror_hitbox_parry_stun = true;
					_hitbox.ror_thwomp_player_id = other;
					_hitbox.ror_player_id = other;
					_hitbox.ror_hitbox_type = "physical";
					_hitbox.hitstun_factor = .5;
					
					apply_cards(_hitbox, other);
				}
				//Dony self Damage
				_self_damage += ror_card_fools_gold * 2;
				//
				ror_dash_hitbox = _hitbox;
				ror_dash_hitbox.kb_value = abs(hsp);
				//print(hsp);
			}
			if instance_exists(ror_dash_hitbox) {
				ror_dash_hitbox.x = x + ((spr_dir * 20) * (ror_card_fools_gold ? ror_card_fools_gold * 1.35 : 1) * (_scale_math));
				ror_dash_hitbox.y = y - floor(char_height / 2);

				//
				/*
				if (state_timer % 20 == 0) {
					spawn_hit_fx(floor(x + hsp * 10), floor(y - char_height / 2), HFX_GEN_DIR);
				}
				*/
				/*
				if !instance_exists(ror_sonic_vfx) {
					ror_sonic_vfx = spawn_hit_fx(floor(x + spr_dir * 20), floor(y - char_height / 2), HFX_GEN_DIR);
				} else {
					ror_sonic_vfx.x = floor(x + spr_dir * 20);
					ror_sonic_vfx.y = floor(y - char_height / 2);
				}
				*/
				if (state_timer % 5 == 0) {
					spawn_hit_fx(floor(x + hsp * 2), floor(y - char_height / 2), 301);
				}
			}
		} else {
			if instance_exists(ror_dash_hitbox) {				
				instance_destroy(ror_dash_hitbox);
			}
		}
	} else {
		if instance_exists(ror_dash_hitbox) {
			instance_destroy(ror_dash_hitbox);
		}
	}
	#endregion
	#region //Wall CLing
	if (ror_card_cling && clinging && state == PS_WALL_JUMP) {
		state_timer = 0;
		ror_cling_timer++
		if (ror_cling_timer >= (ror_starts_with_cling ? 60 : 30) + ror_card_cling * 30) { //60 + 30 more per stack
			state_timer = 60;
		}
	} else {
		ror_cling_timer = 0;
	}
	#endregion
	#region //Like Clockwork
	if (ror_card_clock) {
		with pHitBox {
			if (type == 2 && player_id == other) {//Projectile that you own
				if ("ror_damage_clock_start" !in self) {
					ror_damage_clock_start = round(damage); //Original Damage
					ror_damage_clock_end = damage / (other.ror_clock_buff) / (other.ror_card_clock + 1); //Ending Damage and always make it's 50% off the non shotgun
				} else {
					var _fall_off_percent = clamp(30 - (other.ror_card_clock - 1) * 5, 1, 30);
					//Don't need to change this when updating should be automatic
					damage = (
						ror_damage_clock_end + //Fall of Base Damage multiplied 1 / 1 + clock count
						(ror_damage_clock_start - ror_damage_clock_end) * 
						clamp(1 - hitbox_timer / 
							clamp(length , 1, _fall_off_percent) //Spreads the fall off over the lifetime of a hitbox
						, 0, 1) //Returns a value between 0 and 1
					);
				}
				//print([other.ror_card_clock, ror_damage_clock_start, ror_damage_clock_end, damage])
			}
		}
	}
	#endregion
	#region //JC Rolls //Unimplemented as it doesn't work
	/*
	if (true) {
		if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_TECH_GROUND) {
			if (jump_pressed) {
				window = 10;
				hurtboxID.dodging = false;
				set_state(PS_JUMPSQUAT);
				ror_cancel_dodging = true;
				invincible = false;
				initial_invince = false;
			}
		}
	}
	*/
	#endregion
	#region //Why Dose She Floot
	if (ror_card_peach_float) { //I recreated the float code from scratch to fix an error
		//Max Float
		var _max_float_time = 120 + 60 * (ror_card_peach_float - 1);
		var _float_down = jump_down || (up_down && can_tap_jump());
		var _float_state = (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_IDLE_AIR)
		//print(["Float Print", ror_float_active, ror_can_float, vsp])
		//Activate Float
		if !(ror_float_active)
			&& _float_state
			&& ror_can_float 
			&& (
				(_float_down && !jump_pressed && vsp > 0) //Peak Height of Jump
				|| (_float_down && (down_down || down_pressed) && free && vsp <= 0) //Holding Down
			) {
			ror_float_active = true;
			ror_can_float = false;
			if (state == PS_DOUBLE_JUMP && jump_pressed) {
				djumps--;
			}
			clear_button_buffer(PC_JUMP_PRESSED);
			vsp = 0;
			if !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
				set_state(PS_IDLE_AIR)
				y -= 4;
			}
		}
		
		//Cancel Float
		if (ror_float_time >= _max_float_time) || !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND || state == PS_IDLE_AIR || state == PS_JUMPSQUAT) || !_float_down {
			ror_float_active = false;
		}
		
		//Floating
		if (ror_float_active) {
			fast_falling = true;
			vsp = 0;	
			ror_float_time++
		}		
		
		//Reset Float
		if (!free) {
			ror_float_time = 0;
			ror_can_float = true;
			ror_float_active = false;
		}
	}        
    #endregion
	#region //Better Waveland
	//	if (state == PS_WAVELAND && ror_card_fast_waveland) {
	//	//if (state == PS_WAVELAND) {
	//		//var _dir = sign(hsp)
	//		var _base = 10 + ror_card_fast_waveland * 2;
	//		hsp = clamp(hsp, _base, infinity) * _dir;
	//		print(hsp)
	//	}
	#endregion
	#region //Taunt Attacks | Consume Nutrients | Self-Destruct
	if (ror_card_teto) {
		if (check_attack_array(attack, ror_attacks_taunt) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
			if (!button_down()) {
				set_state(free ? PS_IDLE_AIR : PS_IDLE);
			}
		}
	}
	
	
	if (check_attack_array(attack, ror_attacks_taunt) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && state_timer == 0) {
		//Consume Nutrients
		if (ror_card_consume && get_player_damage(player)) {
			ror_will_consume_buddy++;
		}
		//Self-Destruct
		if (ror_card_self_destruct) && obj_stage_main.round_state != "break_round" {
			var _player = self;
			sound_play(asset_get("sfx_ell_explosion_medium"));
			with obj_stage_main.main_obj {
				var _hitbox = create_hitbox(AT_DSPECIAL, 2, round(_player.x), round(_player.y - 64));				
				//Owner
				_hitbox.ror_player_id = _player;
				_hitbox.ror_hitbox_type = "physical";
				//_hitbox.player = _player.player;
				//Damage and size increases based on stacks
				var _size = 144;
				_hitbox.damage = (_player.ror_card_self_destruct * 5) + 5;
				spawn_hit_fx(_player.x, _player.y - 64, HFX_MOL_BOOM_FINISH);
				_hitbox.image_xscale = _size / 200;
				_hitbox.image_yscale = _size / 200;
				//_hitbox.ror_hit_owner = true;
				_hitbox.ror_hitbox_parry_stun = true;
				_hitbox.ror_thwomp_player_id = other;
				
				//FLM Missile Can Hitself
				_hitbox.ror_hit_self = true;
				
				apply_cards(_hitbox, other);
			}
		}
		if (ror_card_discord && !ror_discord_buff) {
			if !_was_invis {
				spawn_hit_fx(x, y - char_height / 2, HFX_ORI_BLUE_BIG);
			}
			sound_play(asset_get("sfx_sun_yell"));
			ror_discord_buff = true;
		}
	}
	#endregion
	#region //Grapple Pie and Grapple Items
	if (!hitpause) {
		ror_grapple_time = 0;
	}
	with _hit_player_obj {
		//print(ror_is_grabbed);
		var _grab_items = "ror_card_grapple_pie" in _hit_player_obj && (
				ror_card_candy_grapple ||
				ror_card_grapple_pie ||
				ror_card_grapple_fritter
		)
		//Red
		if "ror_valid_attack_array" in _hit_player_obj {
			for (var i = 0; i < array_length(ror_valid_attack_array); i++) {
				if ror_valid_attack_array[i, 1] == attack && ror_valid_attack_array[i, 12] == -4 {
					ror_valid_attack_array[i, 12] = false;
				}
			}
		}
		//
		if (!hitpause && other.hitpause && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) &&
			(other.ror_is_grabbed || get_hitbox_value(last_attack_hit, hitbox_num_hit, HG_HITBOX_TYPE) != 2) &&
			!(_stage_hit) && (other.ror_is_grabbed || last_attack_hit != 0) //Stage Stuff
		{	
			//Grab Check
			var _grab_success = false;
			if _grab_items {
				//Grapple Pie
				if ror_card_grapple_pie && (other.ror_grapple_time % clamp((6 - ror_card_grapple_pie), 1, infinity) == 0) {
					set_player_damage(other.player, get_player_damage(other.player) + 1);	
					//dmg_particle(other, false);
				}
				//Grapple Fritter
				if ror_card_grapple_fritter && (other.ror_grapple_time % clamp(10 - (ror_card_grapple_fritter - 1) * 3, 1, infinity) == 0) {
					if get_player_damage(player) {
						//set_player_damage(player, clamp(get_player_damage(player) - (1 * (ror_card_bamboo + 1)), 0, 999));
						//sound_play(kirby_heal_sfx);
						heal_player(self, 1, kirby_heal_sfx);
					}
				}
				//Candy Grapple
				if ror_card_candy_grapple && (other.ror_grapple_time % clamp(15 - (ror_card_candy_grapple - 1) * 5, 1, infinity) == 0) {
					other.ror_freeze_stacks = clamp(other.ror_freeze_stacks + 1, 0, 6);
					sound_play(asset_get("sfx_icehit_weak1"));
				}
			}
			
			_grab_success = other.ror_grapple_time >= 5;			
			if (other.ror_grapple_time == 0 || _grab_success) {
				if "ror_valid_attack_array" in _hit_player_obj {
					for (var i = 0; i < array_length(ror_valid_attack_array); i++) {
						if (ror_valid_attack_array[i, 1] == attack && ror_valid_attack_array[i, 12] != 2) {
							print("Grapple Move Detected");
							ror_valid_attack_array[i, 12] = _grab_success ? 2 : 1;
						}
					}
				}
			}
			//
			other.ror_is_grabbed = true;
			other.ror_grapple_time++;
		} else {
			other.ror_grapple_time = 0;
		}
	}
	#endregion
	#region//Move During Strongs
	if (ror_card_shifting_strongs) {
		if (check_attack_array(attack, ror_attacks_fstrong) || check_attack_array(attack, ror_attacks_dstrong) || check_attack_array(attack, ror_attacks_ustrong)) || strong_charge {    
			if (smash_charging && (left_down ^^ right_down)) { //Must Hold Left / Right to get the buff
				var _move_max = walk_speed * (ror_card_shifting_strongs * .4);
				if (!hitpause && !hitstop){
					hsp += left_down ? -1 : 1;
					//print([walk_speed, _move_max, 1.5 * ror_card_shifting_strongs])
					hsp = clamp(hsp, -_move_max, _move_max);
				}
			}
		}
	}
	#endregion
	#region //Roundabout
	if (ror_relocation_count < ror_card_relocation) || (ror_card_nice_throw && get_player_damage(player) == 0) {
		//Possible lag reduction measures idk
		var _left = 	get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
		var _right = 	room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
		var _top = 		get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
		var _bottom = 	get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);
		if (x < _left || x > _right || (y < _top && state_cat == SC_HITSTUN) || y > _bottom) {
			var _dis_x = (x < 0 || x > room_width) 	? x < 0 ? -64 : 64 : 0
			var _dis_y = (y < 0 || y > room_height) ? y < 0 ? -64 : 64 : 0;
			if (ror_card_nice_throw && get_player_damage(player) == 0) {
				set_player_damage(player, 999);
				x = room_width / 2;
				y = room_height / 2;
				hsp = 0;
				vsp = 0;
				invince_time += 60 * (1 + ror_card_ghoul * .2);
				invincible = true;
				set_state(PS_PRATFALL);
				//
				sound_play(throw_sfx)
				spawn_hit_fx(x, y - char_height / 2, HFX_ORI_ORANGE_BIG);
			} else {
				//print([_dis_x, _dis_y])
				ror_relocation_count++
				sound_play(asset_get("mfx_star"))
				spawn_hit_fx(x - _dis_x * 2, y - _dis_y - char_height / 2, HFX_ORI_ORANGE_BIG);
				move_wrap(true, true, 0)
				spawn_hit_fx(x + _dis_x * 2, y + _dis_y - char_height / 2, HFX_ORI_BLUE_BIG);
			}
		}
	}
	#endregion
	
	#region //Rapid Fire
	if ror_card_rapid_fire && (ror_card_rapid_fire > ror_rapids) {
		var _rapid = false;
		with pHitBox {
			//Projectiles Only
			//Can be a stage projectile, but not a Missile
			//Bullet Hell buddy broke it before
			//print(["Hitbox Type (Player/Stage)", player_id == other, ("ror_player_id" in self && "ror_atg_target" !in self && ror_player_id == other)])
			if (type == 2 && hitbox_timer == 1) && ((player_id == other) || ("ror_player_id" in self && "ror_atg_target" !in self && ror_player_id == other)) && !("ror_stage_proj_bullet_hell" in self && !ror_stage_proj_bullet_hell) {
				with other {
					if (attack == attack && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) && !(window == 1 && window_timer <= 1) {
						if button_down() {
							window = 1;
							window_timer = 0;
							//state_timer = 0;
							
							//Stage Projectiles
							ror_has_thrown_hole = 0;
							ror_has_thrown_fish = 0;
							ror_has_thrown_blizzard = 0;
							//
							print("Rapid")
							//
							_rapid = true;
						}
					}
				}
			} 
		}
		if _rapid {
			ror_rapids++;
		}
		//print(["Rapids", ror_rapids])
	}
	#endregion
	
	#region //Bullet Hell Buddy
	//
	if ror_card_extra_bullets {
		var _bullet_spread = 10;
		var _bullet_count = ror_card_extra_bullets;

		with pHitBox {
			//print([get_gameplay_time(), id]);
			if (type == 2 && (player_id == other || ("ror_stage_proj_bullet_hell" in self && player == other.player)) && "bullet_hell_buddy" !in self) && //Projectile that you own
			(kb_value || kb_scale || damage) && //Actually useful projectile
			!(image_xscale == 0 && image_yscale == 0) &&//Arcuin you did this. This disables it on hitboxes with no hitbox but are hitboxes
			!(//Black List
					(other.url = CH_KRAGG && (attack == AT_NSPECIAL || attack == AT_USPECIAL)) 
				|| 	(other.url = 2814747446 && (attack == AT_NSPECIAL)) //PEAT
				|| 	(other.url = 2136624834 && (attack == AT_NSPECIAL)) //Elice
				|| 	(other.url = 2694282797 && (attack == AT_DSPECIAL)) //Padoru
			) {
				if (hitbox_timer == 1) {
					//print([attack_to_name(attack), hbox_num, kb_value, kb_scale, damage])
					//print([attack_to_name(attack), hbox_num, mask_index , image_xscale, image_yscale])
					bullet_hell_buddy = true;
					var _prev_x = x - hsp;
					var _prev_y = y - vsp;
					x = _prev_x;
					y = _prev_y
					if (_bullet_count % 2 == 0) { //Odd
						var _angle = point_direction(0, 0, hsp, vsp);
					} else { //Even
						var _angle = point_direction(0, 0, hsp, vsp) + spr_dir * (_bullet_spread / 2);
					}
					//print([point_direction(0, 0, hsp, vsp), _angle])
					var _speed = sqrt(sqr(hsp) + sqr(vsp));
					var _spawn_obj = player_id == other ? player_id : obj_stage_main.main_obj;
					for (var i =  -ceil(_bullet_count / 2); i <= floor(_bullet_count / 2); i++) {
						//print(i);
						if (i != 0) {
							with _spawn_obj {
								//Reverse direction bug
								//
								var bullet_hell = create_hitbox(other.attack, other.hbox_num, round(_prev_x), round(_prev_y));
								bullet_hell.spr_dir = other.spr_dir;
								bullet_hell.bullet_hell_buddy = true;
								bullet_hell.hsp = lengthdir_x(_speed, _angle + i * _bullet_spread * bullet_hell.spr_dir);
								bullet_hell.vsp = lengthdir_y(_speed, _angle + i * _bullet_spread * bullet_hell.spr_dir);
								//
								
								//bullet_hell.hitbox_timer = 1;
							}
							if (_spawn_obj == obj_stage_main.main_obj) {
								bullet_hell.player = other.player;
							}
							if ("ror_is_fish" in self) {
								bullet_hell.ror_is_fish = true;
							}
							if ("ror_blizzard_proj" in self) {
								bullet_hell.ror_blizzard_proj = true;
							}
							if ("ror_proj_speed_up" in self) {
								bullet_hell.ror_proj_speed_up = ror_proj_speed_up;
							}	
							if ("set_on_fire" in self) {
								bullet_hell.set_on_fire = set_on_fire;
							}
							//Assist Stuff
							if "ror_assist" in self {
								bullet_hell.ror_assist = ror_hitbox_type;
								bullet_hell.ror_hitbox_type = ror_hitbox_type;
							}
							
							if ("ror_player_id" in self) {
								bullet_hell.ror_player_id = ror_player_id;
								bullet_hell.ror_hitbox_type = ror_hitbox_type;
								apply_cards(bullet_hell, ror_player_id);
							}
						} else {
							hsp = lengthdir_x(_speed, _angle);
							vsp = lengthdir_y(_speed, _angle);
						}							
					}
				}
			}
		}
	}
	#endregion
    #region	//Projectile Speed Up
    //print([player, ror_card_proj_speed])
	if (ror_card_proj_speed > 0){
        with (pHitBox){
			//print([get_gameplay_time(), self, "ror_proj_speed_up" in self])
            if (type == 2 && player_id == other && "ror_proj_speed_up" !in self){
                if (hitbox_timer == 1){
                    ror_proj_speed_up = true;
                    hsp *= 1 + 0.35*other.ror_card_proj_speed;
                    vsp *= 1 + 0.35*other.ror_card_proj_speed;
                }
            }
        }
    }
	#endregion
	#region //Control Projectiles
	if (ror_card_control_proj && !joy_pad_idle) {
		var _target_angle = joy_dir;
		with pHitBox {
			if (type == 2 && player == other.player) {
				var _speed = sqrt(sqr(hsp) + sqr(vsp));
				var _angle = point_direction(0, 0, hsp, vsp);
				
				//I watched a youtube video for this :D
				_angle += sin(degtorad(_target_angle - _angle)) * other.ror_card_control_proj * 2;
				
				hsp = lengthdir_x(_speed, _angle);
				vsp = lengthdir_y(_speed, _angle);
			}
		}
	}
	#endregion
	#region //Techsplosion
	if (ror_card_techplosion && state_timer == 0 && (state == PS_TECH_GROUND || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD)) {
		var _player = self;
		sound_play(asset_get("sfx_ell_explosion_medium"));
		with obj_stage_main.main_obj {
			var _hitbox = create_hitbox(AT_DSPECIAL, 1, round(_player.x), round(_player.y));
			//Owner
			_hitbox.player = _player.player;
			_hitbox.ror_player_id = _player;
			_hitbox.ror_hitbox_type = "physical";
			//Damage and size increases based on stacks
			switch(_player.ror_card_techplosion) {				
				case 1: //Small
					var _size = 48;
					_hitbox.damage = 5;
					spawn_hit_fx(_player.x, _player.y, HFX_MOL_POP);
				break;	
				case 2: //Big
					var _size = 96;
					_hitbox.damage = 10;
					spawn_hit_fx(_player.x, _player.y, HFX_MOL_BOOM_NORM);
				break;	
				default:
				case 3: //Large
					var _size = 144;
					_hitbox.damage = 15;
					spawn_hit_fx(_player.x, _player.y, HFX_MOL_BOOM_FINISH);
				break;
			}
			_hitbox.image_xscale = _size / 200;
			_hitbox.image_yscale = _size / 200;
			_hitbox.ror_hitbox_parry_stun = true;
			_hitbox.ror_thwomp_player_id = other;
			//
			apply_cards(_hitbox, other);
		}
		//Dony Self Damage
		_self_damage += _player.ror_card_fools_gold * 2;
	}
	#region //TNT Jump
	//if (ror_card_tnt_jump && state_timer == 0 && (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP)) && obj_stage_main.round_state != "break_round" {
	if (ror_card_tnt_jump && state_timer == 0 && (state == PS_DOUBLE_JUMP)) && obj_stage_main.round_state != "break_round" {
		var _player = self;
		sound_play(asset_get("sfx_ell_explosion_medium"), false, noone, .3, 1);
		with obj_stage_main.main_obj {
			var _hitbox = create_hitbox(AT_UAIR, 1, round(_player.x), round(_player.y));
			//Owner
			_hitbox.player = _player.player;
			_hitbox.ror_player_id = _player;
			_hitbox.ror_hitbox_type = "physical";
			_hitbox.ror_hitbox_parry_stun = true;
			_hitbox.ror_thwomp_player_id = other;
			//Damage increases based on stacks
			var _size = 80;
			_hitbox.damage = ((_player.ror_card_tnt_jump - 1) * 2) + 3;
			//
			//set_player_damage(_player.player, clamp(get_player_damage(_player.player) + (_player.ror_card_tnt_jump), 0, 999));
			_self_damage += _player.ror_card_tnt_jump + _player.ror_card_fools_gold * 2;
			//
			spawn_hit_fx(_player.x, _player.y, HFX_MOL_BOOM_NORM);
			_hitbox.image_xscale = _size / 200;
			_hitbox.image_yscale = _size / 200;
			//
			apply_cards(_hitbox, other);
		}
	}
	#endregion
	#region //Perma Buffs
	//print(["Attack Start up", get_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH)])
	
	if obj_stage_main.round_state != "break_round" {
		if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && state_timer == 0
			&& (
					ror_next_start_buff 
				|| 	ror_next_damage_buff 
				|| 	ror_next_whiff
			)
		{
			var _buffed = false;
			for (var i = 0; i < array_length(ror_items); i++) {
				//Damage Buff
				if ("buff_dmg_amount" in ror_items[i] && ror_next_damage_buff && !ror_items[i].buff_dmg_attack) {
					var _buffed = true;
					ror_items[i].buff_dmg_amount += 1;
					ror_items[i].buff_dmg_attack = attack;
					//Please remember to change this whenever there is an update / "Update This Section"
					var _multi = 1 + (ror_card_clock * .5) //Clockwork
					_multi += (attack == ror_master_attack && ror_card_master_of_one) ? .5 : 0 //Master of One
					//
					for (var j = 1; j <= 20; j++) {
						set_hitbox_value(attack, j, HG_DAMAGE, get_hitbox_value(attack, j, HG_DAMAGE) + 1 * _multi);
					}
					//print(["Damage up",i, ror_items[i].buff_dmg_amount])
					
					ror_next_damage_buff--
				}
				//Flat Start Up
				if ("buff_start_amount" in ror_items[i] && ror_next_start_buff && !ror_items[i].buff_start_attack)
					&& get_window_value(attack, 1, AG_WINDOW_LENGTH) > 1 //Attack Must have Start Up
				{
					var _buffed = true;
					var _buff_amount = 3;
					ror_items[i].buff_start_amount += _buff_amount;
					ror_items[i].buff_start_attack = attack;
					
					set_window_value(attack, 1, AG_WINDOW_LENGTH, clamp(get_window_value(attack, 1, AG_WINDOW_LENGTH) - _buff_amount, 1, infinity));
					set_window_value(attack, 1, AG_WINDOW_SFX_FRAME, clamp(get_window_value(attack, 1, AG_WINDOW_SFX_FRAME) - _buff_amount, 0, infinity));

					//print(["Start Up",i, ror_items[i].buff_start_amount])
					
					ror_next_start_buff--;
				}			
				//Whiff		
				var _has_whiff = false;
				//print([attack, get_window_value(attack, 1, AG_WINDOW_HAS_WHIFFLAG), get_window_value(attack, 2, AG_WINDOW_HAS_WHIFFLAG), get_window_value(attack, 3, AG_WINDOW_HAS_WHIFFLAG)])
				for (var j = 1; j <= get_attack_value(attack, AG_NUM_WINDOWS); j++) {
					//print([attack, j, get_window_value(attack, j, AG_WINDOW_HAS_WHIFFLAG)]);
					if get_window_value(attack, j, AG_WINDOW_HAS_WHIFFLAG) {					
						_has_whiff = true;
					}
				}
				if ("buff_whiff_attack" in ror_items[i] && ror_next_whiff && !ror_items[i].buff_whiff_attack)
					&& _has_whiff //Attack Must have Whifflag on the last natural window
				{
					var _buffed = true;
					ror_items[i].buff_whiff_attack = attack;
					
					for (var j = 1; j <= get_attack_value( attack, AG_NUM_WINDOWS); j++) {
						set_window_value(attack, j, AG_WINDOW_HAS_WHIFFLAG, false);
					}

					//print(["Whiff", i])
					
					ror_next_whiff--
				}
				//
			}
			if _buffed {
				spawn_hit_fx(x, y - char_height / 2, HFX_ORI_ORANGE_BIG);
			}
		}
	}
	#endregion
	#region	//Joycon Drift
    if (obj_stage_main.round_state == "alive" && other.round_state_timer > 120){
        if (!hitpause && !hitstop){
            if (state_cat != SC_HITSTUN && state != PS_RESPAWN && state != PS_DEAD){
                if (ror_card_joycon_drift > 0){
                    x += ror_card_joycon_drift*spr_dir;
                }
            }
        }
    }
	#endregion
	#region//More Walljumps
    if (!free) {
        ror_walljump_count = 0;
    }
    if (state == PS_WALL_JUMP){
        if !has_walljump && (ror_walljump_count < ror_card_platform_pro){
            has_walljump = true;
            ror_walljump_count++
        }
    }
	
	#endregion
	#region //Cold Embrace
	if (ror_was_embraced) {
		//Remove Embrace
		if (state_cat != SC_HITSTUN) {
			ror_was_embraced = false;
		}
		//
		if ror_was_embraced && (!hitstop && free) {
			was_parried = true;
			parry_lag = 30;
			ror_was_embraced = false;
			set_state(PS_PRATFALL);	
			y -= 4;
		}
	}
	#endregion
	#region//Air Dash + Air Parry //Clears Shield and Jump Buffers
	if (obj_stage_main.round_state == "alive" || (obj_stage_main.round_state == "break_round" && !bazaar_ready)) {
		if (!free) {
			ror_airdodge_count = 0;
		}
		if (ror_has_air_parried) {
			if (state == PS_PARRY) {
				free = false;
				vsp = 0;
			} else {
				ror_has_air_parried = false;
				if state != SC_HITSTUN && !hitpause && !(perfect_dodged && !parried_jab) { //Successful Parry
					set_state(PS_PRATFALL);
				}
			}
		}
		if (state == PS_AIR_DODGE) {
			if (state_timer == 0) ror_airdodge_count++;
			//Wave Dash
			if (ror_card_air_dash) {
				set_state(PS_IDLE_AIR);
				clear_button_buffer(PC_JUMP_PRESSED);
				clear_button_buffer(PC_SHIELD_PRESSED);
				invince_timer = 0;
				if !(joy_pad_idle) {
					hsp = lengthdir_x(air_dodge_speed, joy_dir);
					vsp = lengthdir_y(air_dodge_speed, joy_dir);
				}		
			}
			//Parry in the air
			if (ror_card_dark_reflection && state_timer == 0 && joy_pad_idle) && !parry_cooldown {
				//print("Parry in the air");
				free = false;
				set_state(PS_PARRY);
				ror_has_air_parried = true;
			}
			/*
			if (true && state_timer == 0 && joy_pad_idle) {
				clear_button_buffer(PC_SHIELD_PRESSED);
				set_state(PS_IDLE);
				free = false;
				vsp = 0;
				ror_grav_cancel_time = ror_grav_cancel_time_max;
				ror_is_grav_cancel = true;
			}
			*/
			//
			has_airdodge = (ror_airdodge_count <= ror_card_airdodge_plus);
		} 
	}
	//if ((state == PS_AIR_DODGE || state_cat == SC_GROUND_COMMITTED)) {
	/*
	if (ror_grav_cancel_time) {
		ror_grav_cancel_time--;
	}
	if (ror_is_grav_cancel) {
		//clear_button_buffer(PC_SHIELD_PRESSED)
		//var _vfx = spawn_base_dust(x, y + 3, "land", 1);
		//_vfx.depth = other.depth + 1;

		switch(state) {
			case PS_WALK:
			case PS_WALK_TURN:
			case PS_DASH_START:
			case PS_IDLE:
				free = false;
				vsp = 0;
				if !(ror_grav_cancel_time) {
					free = true;
					ror_is_grav_cancel = false;
					set_state(PS_PRATFALL);
				}
			break;
			case PS_ATTACK_AIR:
			case PS_ATTACK_GROUND:
				free = false;
				vsp = 0;
				if (window == get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH )) {
					free = true;
					ror_is_grav_cancel = false;
					set_state(PS_PRATFALL);
				}
			break;
			default:
				free = true;
				ror_is_grav_cancel = false;
				set_state(PS_PRATFALL);
			break;
		}
	}
	
	/*
	if (state == PS_AIR_DODGE || state_cat == SC_GROUND_COMMITTED) {
		free = false;
		vsp = 0;
	}
	*/

	#endregion
	#region//Tough Guy
	var ror_toughguy = (_ror_is_boss * 15) + (ror_card_toughguy * ror_toughguy_value) - get_player_damage(player) * .1; //Tough Guy +5 Per Stack, -.1 Per Damage
	if (ror_toughguy > soft_armor) {
		soft_armor = ror_toughguy;
		//print(soft_armor)
	}
	#endregion
	#region //Get out of Jail
	//Had a bug that let you move during countdown
	//if (was_parried && (ror_card_jail > ror_jail_escapes)) && state != PS_PRATLAND && (obj_stage_main.round_state == "alive" && obj_stage_main.round_state_timer > 123) {
	if (was_parried && (ror_card_jail > ror_jail_escapes)) && (obj_stage_main.round_state == "alive" && obj_stage_main.round_state_timer > 123) {
		//print("Feeling Lucky?")
		if (state == PS_PRATLAND || state == PS_PRATFALL) {
			set_state(state == PS_PRATLAND ? PS_IDLE : PS_IDLE_AIR);
		}
		was_parried = false;
		ror_jail_escapes++;
		sound_play(asset_get("sfx_gator_laugh"));
		if !_was_invis {
			spawn_hit_fx(x, y -char_height / 2, 112);
		}
		//Jail
		//with oPlayer {
		//	if (player != other.player) {
		//		if point_distance(x, y, other.x, other.y) <= 96 {
		//			set_state(free ? PS_PRATFALL : PS_PRATLAND);
		//			invincible = false;
		//			invince_time = false;
		//			initial_invince = false;
		//			attack_invince = false;
		//			attack_invince = false;
		//			hurtboxID.dodging = false;
		//			was_parried = true;
		//			parry_lag = 40;
		//		}
		//	}
		//}
	}
	#endregion	
	#region//Fuel Leak	
	if (ror_card_fuel_leak) {
		if (obj_stage_main.round_state == "alive" && obj_stage_main.round_state_timer >= 120 && state != PS_RESPAWN) {
			burnt_id = self;
			burned = true;
			if (burn_timer >= 120) {
				burn_timer = 0;
			}
		} else {
			burnt_id = -4;
			burned = false;
			burn_timer = 150;
		}
	}	
	#endregion
	#region//Mordecai SFX
	if (ror_card_mordecai){
		if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
			if (check_attack_array(attack, ror_attacks_dstrong) && !hitpause && !hitstop){
				with (other){
					var mordecai_sfx = sound_get("ror_mordecai");
				}
				if (state_timer == 0){
					sound_play(mordecai_sfx);
				}
			}
		}
	}
	#endregion
	#region //Reach One Hundred
	//Quick Repair (Healing Item)
	if (get_player_damage(player) >= 100 && !ror_one_hundred) {
		ror_one_hundred = true;		
		if (ror_card_quick_repair) {
			//sound_play(kirby_heal_sfx);
			//set_player_damage(player, clamp(get_player_damage(player) - ror_card_quick_repair * 10 * (ror_card_bamboo + 1), 0, 999));
			heal_player(self, ror_card_quick_repair * 10, kirby_heal_sfx);
		}
	}
	#endregion
	#region//Etalus Dash Attack JC
	if (ror_dattack_jc){
		if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
			if (check_attack_array(attack, ror_attacks_dattack)) {
				if (jump_pressed || (tap_jump_pressed && can_tap_jump())) {
					if (!was_parried){
						if (!free){
							set_state(PS_JUMPSQUAT);
						}
						else{
							if (djumps < max_djumps){
								set_state(PS_JUMPSQUAT);
							}
						}
					}
				}
			}
		}
	}
	#endregion
	#region//Invisible Dodges
	if (ror_card_night_seclusion){
		if (state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_TECH_GROUND || state == PS_WALL_TECH){
			//if (hurtboxID.dodging){
			if (hurtboxID.dodging || window == 1) {
				grabbed_invisible = true;
			}
		}
	}
	#endregion
	#region//Donyoku Self Damage
    if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
        if (ror_card_fools_gold > 0){
            if (!hitpause && !hitstop){
                if (state_timer == 0){
                    //take_damage(player, -1, ror_card_fools_gold * 2);
					_self_damage += ror_card_fools_gold * 2;
                }
            }
        }
    }
	#endregion
	#region //Protective Bubble
	if (ror_bubble_burst && !hitpause && state_cat == SC_HITSTUN) {
		set_state(free ? PS_IDLE_AIR : PS_IDLE)
		x -= hsp;
		y -= vsp;
		vsp = ror_bubble_vsp;
		hsp = ror_bubble_hsp;
		ror_bubble_burst = false;
	}
	#endregion

	
	#region//Damage Items //Items that work on Hit
	var _was_crit = false;
	var _skip_damage = false;
	if (_damage_change == "damage") { //Damage
		//Skip Damage
		
		//print("Deal Damage")
		if (state_cat == SC_HITSTUN && instance_exists(_hit_player_obj) && _hit_player_obj.player == last_player && "ror_luck" in _hit_player_obj) {
			with _hit_player_obj {
				var _last_hitbox_type = get_hitbox_value(last_attack_hit, hitbox_num_hit, HG_HITBOX_TYPE);
				//Opponent's Rerolls effect your outcome as well
			}
			
			if obj_stage_main.ror_luck_effects_opponent {
				var _opp_star_rerolls = _hit_player_obj.ror_card_star - ror_card_star;
			} else {
				var _opp_star_rerolls = _hit_player_obj.ror_card_star;
			}
			//print(["Vs Star Rerolls", _star_rerolls, ror_card_star, _hit_player_obj.ror_card_star, _opp_star_rerolls]);
			//print(["Vs Star Rerolls", ror_card_star, _hit_player_obj.ror_card_star, _opp_star_rerolls]);
			
			#region //Teleport Projectile
			if (_hit_player_obj.ror_card_abyss_teleport && _last_hitbox_type == 2) {
				//_hit_player_obj.burnt_id;
				if _hit_player_obj.object_index == oPlayer {
					spawn_hit_fx(_hit_player_obj.x, _hit_player_obj.y - _hit_player_obj.char_height / 2, HFX_ABY_PROJ_HIT);
					_hit_player_obj.x = x;
					_hit_player_obj.y = y - (_hit_player_obj.free ? 8 : 0);
					sound_play(asset_get("sfx_abyss_spawn"));
					spawn_hit_fx(x, y - char_height / 2, HFX_ABY_PROJ_HIT);
				}					
			}
			#endregion
		
			#region //Hex (Must be before all Status Appliers)
			var _hex_value = _hit_player_obj.ror_card_hex ? (
					bool(poison) + 
					bool(burned) + 
					bool(ror_freeze_stacks) + 
					bool(ror_decay_health) +
					bool(state == PS_FROZEN) + 
					bool(state == PS_CRYSTALIZED) + 
					bool(state == PS_BURIED) +
					bool(state == PS_WRAPPED)
			) : 0;
			_bonus_damage += _hex_value;
			if (_hit_player_obj.ror_card_hex && _hex_value) {
				var _spawn_red = (burned || state == PS_CRYSTALIZED || state == PS_BURIED);
				var _spawn_green = (poison || ror_decay_health || state == PS_WRAPPED);
				var _spawn_blue = (ror_freeze_stacks || state == PS_FROZEN);
				var _x = floor(x);
				var _y = floor(y - char_height/2);
				with obj_stage_main.main_obj {
					if _spawn_red {
						var _vfx = spawn_hit_fx(_x + 24, _y + 24, _hex_red_vfx);
						_vfx.depth = other.depth - 10;
					}					
					if _spawn_green {
						var _vfx = spawn_hit_fx(_x - 24, _y + 24, _hex_green_vfx);
						_vfx.depth = other.depth - 10;
					}					
					if _spawn_blue {
						var _vfx = spawn_hit_fx(_x + 0, _y - 24, _hex_blue_vfx);
						_vfx.depth = other.depth - 10;
					}					
				}
			}
			#endregion
		
			#region //Flame Body
			if (ror_card_flame_body && _last_hitbox_type == 1) {
				//Star Reroll	
				print("Flame Body");
				var _flame_rng = rogue_rng_outcome(100, abs(_opp_star_rerolls), sign(_opp_star_rerolls) == -1 ? "lower" : "higher") + 1;				
				//
				var _flame_chance = ror_card_flame_body * 20; 
					if (_flame_chance >= _flame_rng) {	
					//print("flame body")
					_hit_player_obj.burnt_id = self;
					_hit_player_obj.burned = true;
					_hit_player_obj.burn_timer = 0;
				}
			}
			#endregion
			#region //Cold Embrace		
			//print(prev_state == PS_PARRY);
			/*
			if (prev_state == PS_PARRY && _hit_player_obj.ror_card_cold_embrace && !should_make_shockwave) { //Galaxy Code
				was_parried = true; 
				set_state(free ? PS_PRATFALL : PS_PRATLAND);
				hsp = 0;
				vsp = 0;
				old_hsp = 0;
				old_vsp = 0;
				parry_lag = 20 * _hit_player_obj.ror_card_cold_embrace;
				sound_play(tomoko_cold_sfx);
				spawn_hit_fx(x, y - char_height / 2, HFX_ETA_ICE_HUGE);
			}
			*/
			if (prev_state == PS_PARRY || ((prev_state == PS_ROLL_FORWARD || prev_state == PS_ROLL_BACKWARD) && ror_card_parry_armor)) //Detections
				&& (_hit_player_obj.ror_card_cold_embrace && !should_make_shockwave) { //Galaxy Code 
				//free = true;
				//set_state(PS_PRATFALL);
				ror_was_embraced = true;
				sound_play(tomoko_cold_sfx);
				spawn_hit_fx(x, y - char_height / 2, HFX_ETA_ICE_HUGE);
			}
			#endregion
			#region //Freeze Effects
			if (state != PS_FROZEN) {
				//Chilled Projectiles
				var _last_attack = last_attack_hit;
				var _last_hitbox_num = hitbox_num_hit;
				with _hit_player_obj {
					var _is_proj = (get_hitbox_value(_last_attack, _last_hitbox_num, HG_HITBOX_TYPE) == 2);
				}
				if (_hit_player_obj.ror_card_chilled_projectiles) && _is_proj && !_stage_hit {
					ror_freeze_stacks = clamp(ror_freeze_stacks+1, 0, 6);
					sound_play(asset_get("sfx_icehit_weak1"));
				}
				//
				if (_hit_player_obj.ror_card_frostbite && _hit_player_obj.strong_charge >= 60) {
					ror_freeze_stacks = 6;
					sound_play(asset_get("sfx_icehit_weak1"));
				}
			}		
			//Frostebite
			if (state == PS_FROZEN) {
				_bonus_multi += _hit_player_obj.ror_card_frostbite * .5;
			}
			//Remove Stacks per hit
			if (hit_player_obj.ror_freeze_stacks) {
				hit_player_obj.ror_freeze_stacks--;
			}
			#endregion
			#region //Poison Effects
			//Infection
			/*
			if _hit_player_obj.ror_card_infection && _hit_player_obj.ror_previous_poison {
				_bonus_damage += 1 * _hit_player_obj.ror_card_infection;
			}
			*/
			/*
			if _hit_player_obj.ror_card_infection {
				//Infection Part 1
				var _target_poison = _hit_player_obj.ror_previous_poison + poison;
				var _curr_poison = poison;
				if _hit_player_obj.ror_previous_poison {
					for (var i = _curr_poison; i < array_length(poison_ids) && i < _target_poison; i++) {
						//Ids
						poison_ids[i] = _hit_player_obj;
						poison++
					}
					_hit_player_obj.ror_previous_poison = 0;
					_hit_player_obj.poison = 0;
					_hit_player_obj.poison_ids = [-4, -4, -4, -4];
				}
				//Infection Part 2
				//_bonus_base_damage += poison;
			}
			*/
			//Biological Weapons
			if (_hit_player_obj.ror_card_biological_weapon && _hit_player_obj.strong_charge >= 60) {
				for (var i = poison; i < array_length(poison_ids); i++) {
					poison_ids[i] = _hit_player_obj;
					poison++;
				}
			}
			//Poison Apply
			if (
					_hit_player_obj.ror_card_pacify 
				|| 	_hit_player_obj.ror_card_coughing_bomb 
				|| 	_hit_player_obj.ror_card_witch_brew 
				|| 	_hit_player_obj.ror_card_acidic
				|| 	_hit_player_obj.ror_card_persistent_pest
				|| 	_hit_player_obj.ror_card_virus
			) {
				if poison >= 4 {
					poison = clamp(_hit_player_obj.ror_card_persistent_pest, 0, 4); //Allows infinites in no limits
					//
					hitstop += _hit_player_obj.ror_card_pacify ? 10 + 5 * (_hit_player_obj.ror_card_pacify - 1) : 0; //Pacify
					_bonus_multi += _hit_player_obj.ror_card_coughing_bomb ? _hit_player_obj.ror_card_coughing_bomb * 1 : 0
					//Witch's Brew
					if (_hit_player_obj.ror_card_witch_brew) {
						set_player_damage(_hit_player_obj.player, get_player_damage(_hit_player_obj.player) - 3 * _hit_player_obj.ror_card_witch_brew);
					}
					//Acidic Potion
					if (_hit_player_obj.ror_card_acidic) {
						burnt_id = _hit_player_obj;
						burned = true;
						burn_timer = 0;
					}
					//
					if (_hit_player_obj.ror_card_virus && state != PS_FROZEN) {
						ror_freeze_stacks = clamp(ror_freeze_stacks + _hit_player_obj.ror_card_virus, 0, 6);
					}
					//
					spawn_hit_fx(x, y - char_height / 2, HFX_RAN_POISON_HUGE);
					//
					with _hit_player_obj {
						if ror_card_install_infection {
							var _particle = give_meter(self, ror_card_install_infection * 3);
							_particle.x += spr_dir * 30;
							_particle.y += 15;
						}
					}
				} else {
					poison_ids[poison] = _hit_player_obj;
					poison++;
					//
					spawn_hit_fx(x, y - char_height / 2, HFX_RAN_POISON_SMALL);
				}
			}
			#endregion
			#region //Fire Effects
			//Going for Seconds
			if (_hit_player_obj.ror_card_seconds && _hit_player_obj.strong_charge >= 60) {
				burnt_id = _hit_player_obj;
				burned = true;
				burn_timer = 0;
			}
			#endregion
            #region //Fiery Spirit
            if (_hit_player_obj.ror_card_fiery > 0) {
                if (burned && burnt_id == _hit_player_obj){ //Bonus Damage
                    _bonus_multi += _hit_player_obj.ror_card_fiery * .2;
                }
                
                if (_last_hitbox_type == 1){
					//print("Fiery Spirit")
                    var _fiery_rng = rogue_rng_outcome(100, abs(_opp_star_rerolls), sign(_opp_star_rerolls) == -1 ? "higher" : "lower") + 1;
                    var _fiery_chance = _hit_player_obj.ror_card_fiery * 10; 

                    if (_fiery_rng <= _fiery_chance){
                        //print("aaa)");
                        spawn_hit_fx(x, y - char_height/2, 3);
                        sound_play(asset_get("sfx_zetter_upb_hit"));
                        
                        burnt_id = _hit_player_obj;
                        burned = true;
                        burn_timer = 0;
                    }
                }
            }
            #endregion
			#region //Reckless Greed
			_bonus_multi += (ror_card_reckless_greed * .25);
			#endregion				
			#region //Parasite
			//print(_hit_player_obj.ror_card_parasite);
			_bonus_multi += (_hit_player_obj.ror_card_parasite * .1);
			#endregion				
			#region //Parasite
			_bonus_multi += ((_hit_player_obj.ror_card_rerolling_stone * _hit_player_obj.ror_rerolls) * .05);
			#endregion	
			#region	//Clean Slate
			if (get_player_damage(_hit_player_obj.player) <= 15 && _hit_player_obj.ror_card_clean_sweep) {
				_bonus_multi += _hit_player_obj.ror_card_clean_sweep * .25; //.2 = 20%
			}
			#endregion
			#region //Special Buffet
			if _hit_player_obj.ror_card_buffet {
				_hit_player_obj.ror_should_buffet = true;
			}
			#endregion
			#region //Protective Bubble
			//print("Bubble");
			var _bubble_rng = rogue_rng_outcome(100, 0, "once") + 1; //This Item having Rerolls would be BROKEN
			//var _bubble_chance = 100 * (1 - power(.92, ror_card_protective_bubble ))
			var _bubble_chance = ror_card_protective_bubble * 3; 
			//print(_bubble_chance)
			if (_bubble_chance >= _bubble_rng) {
				//print("Bubble")
				_skip_damage = true;
				sound_play(asset_get("sfx_bubblepop"), false, noone, 2, 1);
				spawn_hit_fx(x, y - char_height / 2, HFX_ORC_WATER_BIG);
				//set_state(free ? PS_IDLE_AIR : PS_IDLE)
				ror_bubble_burst = true;
				//print(hsp);
				//print(vsp);
				//vsp = old_vsp;
			}
			#endregion		
			#region //Counter-Hits
			if (_hit_player_obj.ror_card_holdit){
				//print("COUNTER")
				if (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR){ //if previously attacking
					sound_play(obj_stage_main.sfx_counter, false, noone, 1.2, 1);
					//var hit_damage_bonus = round(_base_damage * _hit_player_obj.ror_counterhit_mult);
					_bonus_multi += _hit_player_obj.ror_card_holdit * .25;
					//take_damage( player, _player, hit_damage_bonus );
				}
			}
			#endregion 	
			#region //Install Counter-Hits
			if (_hit_player_obj.ror_card_install_objection && _hit_player_obj.ror_install_cards && !ror_install_active){ //INSTALL STUFF
				//print("COUNTER")
				if (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR){ //if previously attacking
					sound_play(aa_sfx, false, noone, 1, 1);
					_hit_player_obj.ror_install_mult += _hit_player_obj.ror_card_install_objection * .33;
				}
			}
			#endregion 	
            #region //Install Bonus Multiplier
			/*
            if (_hit_player_obj.ror_card_install_abyss_boost && _hit_player_obj.ror_install_cards && !ror_install_active){ //INSTALL STUFF
                _hit_player_obj.ror_install_mult += _hit_player_obj.ror_card_install_abyss_boost * 0.2;
            }
			*/
            #endregion  
            #region //Bounce Bud
            if (_hit_player_obj.ror_card_bounce_bud) {
                if (_hit_player_obj.ror_djumps_used){
                    _bonus_base_damage += hit_player_obj.ror_djumps_used * _hit_player_obj.ror_card_bounce_bud;
                    sound_play(asset_get("sfx_ori_energyhit_weak"), false, noone, 0.5, 1.2 + clamp(ror_djumps_used * .1, 0, 0.5));
                }
            }
            #endregion
            #region //Random Damage Modifier
			/*
            with (_hit_player_obj){
				var ror_random_damage_modifier_range = ror_card_todayslook ? 2 + (ror_card_todayslook - 1) : 0
				//print(ror_random_damage_modifier_range)
                if (ror_random_damage_modifier_range > 0){
                    var _random_damage_modifier_rng = random_func(6, ror_random_damage_modifier_range*2 + 1, true) + 1 - (ror_random_damage_modifier_range + 1);
                    with (other){
                        if (_random_damage_modifier_rng + _base_damage >= 0){
                            //set_player_damage(player, get_player_damage(player) + _random_damage_modifier_rng);
							_bonus_base_damage += clamp(_random_damage_modifier_rng, 0, infinity);
                        }
                    }
                }
            }
			*/
			_bonus_base_damage += _hit_player_obj.ror_today_modifier;
			#endregion 
			#region //Bottled Up
			with (_hit_player_obj){
				//print(ror_bottled_damage_buff)
				if (ror_card_bottled){
					//var _bottle_min = clamp(120 - (ror_card_bottled - 1) * 10, 10, 120)
					//
					//if (get_player_damage( player ) >= (120 - ror_card_bottled * 10)){
					//	_bonus_base_damage += floor(get_player_damage( player ) / _bottle_min) ;
					//	sound_play(asset_get("sfx_waterhit_weak"));
					//}
					if get_player_damage(player) >= 100 {
						_bonus_multi += ((get_player_damage(player) - 100) * ror_card_bottled) / 100;
					}
				}
			}
			#endregion 
			#region //Fuel Leak
			with (_hit_player_obj){
				var _fuel_base = 4;
				var _fuel_per_stack = 2;
				_bonus_base_damage += ror_card_fuel_leak ? _fuel_base + ((ror_card_fuel_leak - 1) * _fuel_per_stack) : 0
			}
			#endregion
			#region //Discord Ping
			with _hit_player_obj {
				if (ror_card_discord && ror_discord_buff) {					
					_bonus_multi += (check_attack_array(other.last_attack, ror_attacks_taunt)) ? 5 * ror_card_discord : .5 * ror_card_discord; // 50% Damage Buff after a Taunt
					ror_discord_buff = false;
					//Ping
					sound_play(ping_sfx);
					with obj_stage_main.main_obj {
						var _particle = instance_create(_curr_player.x + 48, _curr_player.y - 48, "obj_stage_article", 6);
						_particle.vfx_spr = ping_vfx;
					}
				}

			}
			#endregion
			#region //Luck Boost
			_bonus_multi += _hit_player_obj.ror_card_luck_boost ? (_hit_player_obj.ror_luck / 100) : 0
			#endregion
			#region //Crowbars
			if (_hit_player_obj.ror_crowbars && ror_previous_damage <= 15) {
				with _hit_player_obj {
					spawn_hit_fx(other.x, other.y - other.char_height / 2, 306)
				}
				sound_play(asset_get("sfx_shovel_hit_med1"));
				_bonus_multi += _hit_player_obj.ror_crowbars * .75;
			}
			#endregion
            #region//Projectile/Physical Bonus Damage
            with (_hit_player_obj){
                var hit_player_ror_proj_bonus_damage = ror_card_batter_up; //Batter Up
                var hit_player_ror_phys_bonus_damage = ror_card_heavy_hitter; //Heavy Hitter
            }
            
            if (hit_player_ror_proj_bonus_damage > 0 || hit_player_ror_phys_bonus_damage > 0){
				if !(_stage_hit) { //Stage Projectile Dependent
					with (_hit_player_obj) {
						if (get_hitbox_value(last_attack_hit, hitbox_num_hit, HG_HITBOX_TYPE) == 2){
							_bonus_base_damage += hit_player_ror_proj_bonus_damage;
						}
						if (get_hitbox_value(last_attack_hit, hitbox_num_hit, HG_HITBOX_TYPE) < 2){
							_bonus_base_damage += hit_player_ror_phys_bonus_damage;
						}
					}
				}
            }
			//end of Projectile/Physical Bonus Damage
			with (_hit_player_obj) {
				//print(ror_card_paint)
				//print(get_hitbox_value(last_attack_hit, hitbox_num_hit, HG_HITBOX_TYPE))
				if !(_stage_hit) { //Stage Projectile Dependent
					if (get_hitbox_value(last_attack_hit, hitbox_num_hit, HG_HITBOX_TYPE) == 2){
						_bonus_multi += ror_card_paint * .2;
						//Sandstorm
						_bonus_multi += (obj_stage_main.sandstorm_active * ror_card_pocket_sand * .5);
					}
					if (get_hitbox_value(last_attack_hit, hitbox_num_hit, HG_HITBOX_TYPE) < 2){
						_bonus_multi += ror_card_body_build * .2;
					}
				}
				if (free) {					
					_bonus_multi += ror_card_air_force * .2;
				} else {
					_bonus_multi += ror_card_ground_control * .2;
				}
			}
			//
			#endregion
			#region //Multi-Purpose
			with (_hit_player_obj){
				if ror_card_multi_purpose {
					_bonus_multi += ror_card_multi_purpose * .1;
					_bonus_base_damage += ror_card_multi_purpose;
				}
			}
			#endregion
			#region //Install Bonus Damage
            with (_hit_player_obj){
                if (ror_install_timer){ //INSTALL STUFF
                    if (ror_card_install_impulse){
                        _bonus_multi += 0.25 * (ror_card_install_impulse) * (ror_card_install_slow_start + 1);
                        sound_stop(asset_get("sfx_ori_stomp_hit"));
                        sound_play(asset_get("sfx_ori_stomp_hit"), false, noone, 0.9, 1.1);
                    }
                    _bonus_base_damage += ror_card_install_training;
                }
            }
			//Rogue Install +1 Base Damage by default
			_bonus_base_damage += _hit_player_obj.ror_install_active * (_hit_player_obj.ror_card_install_slow_start + 1);
			#endregion
			#region//Black Jack
			if _hit_player_obj.ror_install_active {
				if (_hit_player_obj.ror_card_install_black_jack && _hit_player_obj.ror_luck && _hit_player_obj.ror_luck % 21 == 0) {
					//_bonus_multi += _hit_player_obj.ror_card_install_black_jack ? .5 : 0
					_bonus_multi += .5 * (_hit_player_obj.ror_card_install_slow_start + 1);
					//_bonus_damage += _hit_player_obj.ror_card_install_black_jack ? 2 : 0
					_bonus_damage += 2 * (_hit_player_obj.ror_card_install_slow_start + 1);
				}
			}
			//
			#endregion
			#region//Sonic boom
			//print(_bonus_multi);
			//_bonus_multi += _hit_player_obj.ror_card_sonic_boom ? abs(_hit_player_obj.ror_prev_hsp * _hit_player_obj.ror_card_sonic_boom * .02) : 0
			//_bonus_damage += _hit_player_obj.ror_card_sonic_boom ? floor(abs(_hit_player_obj.ror_prev_hsp * _hit_player_obj.ror_card_sonic_boom * .2)) : 0
			#endregion
			#region//Infinite Charge
			//_bonus_multi += (_hit_player_obj.ror_inf_charge / 100)
			#endregion
			#region //Grass Knot
			_bonus_multi += _hit_player_obj.ror_card_grass_knot ? _hit_player_obj.ror_card_grass_knot * (1 - knockback_adj) : 0
			#endregion
			#region //Trash Collector
			_bonus_multi += _hit_player_obj.ror_card_trash_collector ? (_hit_player_obj.ror_card_trash_collector * _hit_player_obj.ror_item_count_commons) * .05 : 0
			#endregion			
			#region //Fair Play
			_bonus_multi += (_hit_player_obj.ror_card_fair_play && _hit_player_obj.invincible) ? (_hit_player_obj.ror_card_fair_play) : 0
			#endregion			
			#region //Squared
			//_bonus_multi += (_hit_player_obj.ror_card_square * _hit_player_obj.ror_card_square * _hit_player_obj.ror_card_square) * .01;
			_bonus_multi += (_hit_player_obj.ror_card_square * _hit_player_obj.ror_card_square) * .01;
			#endregion
			#region //Damage Modifiers
			if (_skip_damage) {
				set_player_damage(player, ror_previous_damage);
				dmg_particle(self, false)
			} else {
				_total_damage = round(((_base_damage + _bonus_base_damage) * _bonus_multi) + _bonus_damage);
				//
				#region //Healing
				//Life Steal
				with (_hit_player_obj){
					var ror_lifesteal_chance = ror_card_bloodsucker * 10;
					//print("Life Steal");
					var _lifesteal_rng = rogue_rng_outcome(100, abs(_opp_star_rerolls), sign(_opp_star_rerolls) == -1 ? "higher" : "lower") + 1;
					if (ror_lifesteal_chance >= _lifesteal_rng) {
						//sound_play(asset_get("sfx_abyss_hex_hit"), false, noone, 1.2, 1);
						spawn_hit_fx(x, y - char_height / 2, 109);
						//take_damage(player, player, -_total_damage);
						heal_player(self, _total_damage, asset_get("sfx_abyss_hex_hit"));
					}
				}
				#endregion 
				//Torus' Band (Must be final to insure damage is multiplied correctly)
				//Temp Check
				with _hit_player_obj {
					var _parent_hitbox = get_hitbox_value(last_attack_hit, hitbox_num_hit, HG_PARENT_HITBOX);
					//
					var _curr_damage = get_hitbox_value(last_attack_hit, hitbox_num_hit, HG_DAMAGE);
					reset_hitbox_value(last_attack_hit, hitbox_num_hit, HG_DAMAGE);
					var _orig_damage = _parent_hitbox ? get_hitbox_value(last_attack_hit, _parent_hitbox, HG_DAMAGE) : get_hitbox_value(last_attack_hit, hitbox_num_hit, HG_DAMAGE);
					set_hitbox_value(last_attack_hit, hitbox_num_hit, HG_DAMAGE, _curr_damage);
				}
				//
				if (_hit_player_obj.ror_card_torus_bands) {
					//print([attack_to_name(last_attack_hit), hitbox_num_hit, _orig_damage, _total_damage]);
					_bonus_multi += _total_damage >= _orig_damage * 4 ? _hit_player_obj.ror_card_torus_bands * .5 : 0;
					if (_orig_damage && _total_damage >= _orig_damage * 4) {
						with _hit_player_obj {
							spawn_hit_fx(other.x, other.y - other.char_height / 2, HFX_MAY_LEAF_HUGE);
							sound_play(asset_get("sfx_may_whip1"));
						}
					}
				}
				
				//Refresh Damage
				/*
				_total_damage = round(((_base_damage + _bonus_base_damage) * _bonus_multi) + _bonus_damage);
				if (ror_card_exo_skele) {
					_total_damage = clamp(_total_damage - ror_card_exo_skele, 1, infinity);
				}				
				if (ror_card_shield) {
					_total_damage = ceil(clamp(_total_damage * (1 - (ror_card_shield / 10)), 1, infinity));
				}
				*/
				//
				
				//Len-Maker's Glasses
				if (_hit_player_obj.ror_card_glasses) {
					var _crit_chance = _hit_player_obj.ror_card_glasses * 10;
					var _crit_rng = rogue_rng_outcome(100, abs(_opp_star_rerolls), sign(_opp_star_rerolls) == -1 ? "higher" : "lower") + 1;
					print([_crit_chance, _crit_rng]);
					//
					if _crit_chance >= _crit_rng {
						_was_crit = true;
						//_total_damage *= 2;
						sound_play(crit_sfx);
					}
				}
				//print([_base_damage, _bonus_base_damage, _bonus_multi, _bonus_damage])
				//print(_total_damage)
				//set_player_damage(player, clamp(get_player_damage(player) + _total_damage - _base_damage, 0, infinity)); //Final Damage
				#endregion
				//Post Damage Stuff
				#region //ATG Missile		
				//var ror_atg_chance = ror_card_flm_launcher * 10
				var ror_atg_chance = obj_stage_main.practice_mode ? 100 : 10; //10
				ror_atg_chance = practice_mode ? 100 : 10; //10
				
				with _hit_player_obj {				
					var _player = _hit_player_obj.object_index == oPlayer ? self : player_id;
					//print("ATG Missile");
					var _atg_rng = rogue_rng_outcome(100, abs(_opp_star_rerolls), sign(_opp_star_rerolls) == -1 ? "higher" : "lower") + 1;

					if !ror_dont_missile && (ror_card_flm_launcher) && (ror_atg_chance >= _atg_rng) {
						_spawn_missile = true;
					}
					//
					ror_dont_missile = false;
				}
				#endregion //
				
				#region //Queen's Decree
				//set_player_damage(player, clamp(get_player_damage(player) - (ror_card_queen * 2), 0, 999));
				//ror_queen_heal = ror_card_queen * 1; //2
				#endregion
			}
		}
	}
	#region //Post Damage Calc / Final Damage
	//All Damage Calcs
	//print(["Damage Calcs", _total_damage, _base_damage, _total_damage - _base_damage]);
	if _skip_damage {
		_base_damage = 0;
	}
	if (_base_damage > 0 || _self_damage != 0 || _burn_damage != 0) {
		_total_damage = round(((_base_damage + _self_damage + _burn_damage + _poison_damage + _bonus_base_damage) * _bonus_multi) + _bonus_damage) * (_was_crit ? 2 : 1);
		//print(_total_damage);
		//
		if (_total_damage > 0) { //On Hit Effects
			if (ror_card_exo_skele) {
				_total_damage = clamp(_total_damage - ror_card_exo_skele, 1, infinity);
			}				
			if (ror_card_shield) {
				_total_damage = ceil(clamp(_total_damage * (1 - (ror_card_shield / 10)), 1, infinity));
			}		
			if (_damage_change != "heal") {
				ror_queen_heal = ror_card_queen * 1; //2
			}
			//
			set_player_damage(player, clamp(get_player_damage(player) + _total_damage - _base_damage, 0, infinity))
		} else {
			heal_player(self, abs(_total_damage), kirby_heal_sfx)
		}
		
		//print(["Damage Calcs", _total_damage, _base_damage, _total_damage - _base_damage]);
	}
	//
	//print(["Damage Calcs", _total_damage, _base_damage, _total_damage - _base_damage]);
	//
	//set_player_damage(player, clamp(get_player_damage(player) + _total_damage - _base_damage, 0, infinity)); //Final Damage
	//print([player, "Total Damage", _total_damage]);
	if (_spawn_missile) {
		with _hit_player_obj {
			with obj_stage_main.main_obj {
				for (var a = 0; a <= other.ror_card_extra_bullets; a++) {
					var _atg = create_hitbox(AT_FSPECIAL, 1, round(_player.x), round(_player.y - _player.char_height));
					//Owner
					//_stage_can_hit_self | Self-Destruct specific scenario
					_atg.player = _stage_can_hit_self ? self.player : _player.player;
				
					_atg.ror_player_id = _player;
					_atg.ror_hitbox_type = "proj";
					//Target
					_atg.ror_atg_target = _got_hit_player;
					//Init Speed
					var _angle = _player.spr_dir == 1 ? 135 : 45;
					_angle += _player.spr_dir * a * 15;
					//print(_angle)
					var _speed = sqrt(power(3, 2) * 2); //3 and 3
					_atg.vsp = lengthdir_y(_speed, _angle);
					_atg.hsp = lengthdir_x(_speed, _angle);
					
					_atg.extra_delay = 3 * a; //Extra Frame Delay for missiles
					//print([_atg.vsp, _atg.hsp])
					//Damage is 100% of damage dealth + 50% Per Stack
					_atg.damage = floor(_total_damage * (1 + (_player.ror_card_flm_launcher - 1) * .5));
					
					_atg.is_atg = true;
					//Other Items
					apply_cards(_atg, other)
				}
			}
		}
	}	
	#endregion
	
	#region //Healing Effect
	if (_damage_change == "heal") {
		if ror_card_bamboo {
			//print(["Check A", _base_damage, (_base_damage * (ror_card_bamboo - 1))]);
			set_player_damage(player, ror_previous_damage);
			heal_player(self, (_base_damage), kirby_heal_sfx);
			//print("Check B");
		}
	}
	//	
	#endregion
	//if (true) { //Kumaki
	//	ror_install_meter = ;
	//}
	#region //Dragoon Parts (Happens Last)
	var _drop_dragoon = false;
	var _has_dragoon = ror_dragoon_parts[0] && ror_dragoon_parts[1] && ror_dragoon_parts[2];
	if (_has_dragoon) {
		obj_stage_main.dragoon_used = true;
		//if (state == PS_IDLE || state == PS_IDLE_AIR) {
		if !(state == PS_PRATFALL || state == PS_PRATLAND) {
			y -= 16;
			free = true;
			set_state(free ? PS_PRATFALL : PS_PRATLAND);
			ror_dragoon_state = "start";
			sound_play(dragoon_assemble_sfx);
		}
		if ror_dragoon_state != -4 {
			visible = false;
			invincible = true;
			invince_time = 3;
			vsp = 0;
			hsp = 0;
			can_fast_fall = false;
			can_move = false;
		}		

		switch(ror_dragoon_state) {
			case "start":
				if (state_timer >= 60) {
					ror_dragoon_state = "cursor"
					state_timer = 0;
					obj_stage_main.dragoon_x = room_width / 2;
					obj_stage_main.dragoon_y = room_height / 2;
				}
			break;
			case "cursor":
				var _cursor_speed = 15;
				//
				obj_stage_main.dragoon_x += (left_down ^^ right_down ? right_down - left_down : 0) * _cursor_speed;
				obj_stage_main.dragoon_y += (up_down ^^ down_down ? down_down - up_down : 0) * _cursor_speed;
				//
				if (state_timer >= 150 || attack_pressed || special_pressed) {
					sound_play(dragoon_fire_sfx)
					ror_dragoon_state = "shoot"
					state_timer = 0;
				}
				if (state_timer % 15 == 0) {
					sound_play(dragoon_ping_sfx, false, noone, 1, .5);
				}
				
			break;
			case "shoot":
				if (state_timer >= 20) {
					ror_dragoon_state = -4;
					state_timer = 0;
					_drop_dragoon = true;
					visible = true;
					y = 0;
					x = obj_stage_main.dragoon_x;
					set_state(PS_IDLE_AIR);
				}
				//if (state == PS_PRATFALL) {
				if (state_timer == 3) {
					with obj_stage_main.main_obj {
						var _dragoon_hitbox = create_hitbox(AT_DSPECIAL, 1, round(obj_stage_main.dragoon_x), round(obj_stage_main.dragoon_y - 34));
						var _size = 200;
						//Test
						//_dragoon_hitbox.y -= (other.state_timer - 10) * 80;
						//
						_dragoon_hitbox.enemies = 1;
						_dragoon_hitbox.damage = 50;
						_dragoon_hitbox.kb_value = 20;
						_dragoon_hitbox.kb_scale = 2;
						_dragoon_hitbox.image_xscale = _size / 200;
						_dragoon_hitbox.image_yscale = _size / 200;
						//
						spawn_hit_fx(_dragoon_hitbox.x, _dragoon_hitbox.y, HFX_MOL_BOOM_FINISH);
					}
				}
			break;
		}
	}
	//Big Hits or Dead drop Parts
	if ((_damage_change == "damage") && (state_cat == SC_HITSTUN && instance_exists(_hit_player_obj) && _hit_player_obj.player == last_player && "ror_luck" in _hit_player_obj) && !_skip_damage ) {
		var _dragoon_num = -4;
		for (var i = 0; i < array_length(ror_dragoon_parts); i++) {
			if (ror_dragoon_parts[i]) {
				_dragoon_num = i;
			}
		}
		//print(["Dragon Parts: ", ror_dragoon_parts, obj_stage_main.dragoon_parts, _dragoon_num]);
		if (_dragoon_num != -4) {
			var _drop_piece = random_func_2(5, floor(orig_knock), true) >= obj_stage_main.dragoon_drop_minimum; //1 in 6 Chance at 10 Knockback
			//print(["Drop Piece: ", random_func_2(5, floor(orig_knock), true), obj_stage_main.dragoon_drop_minimum]);
			//if _drop_piece || true {
			if _drop_piece {
				ror_dragoon_parts[_dragoon_num] = false;
				var _dragoon_part = obj_stage_main.dragoon_parts[_dragoon_num];
				_dragoon_part.piece_active = true;
				_dragoon_part.piece_collected = false;
				_dragoon_part.x = x;
				_dragoon_part.y = y - char_height;
				var _launch_angle = point_direction(0, 0, old_hsp, old_vsp);
				var _launch_speed = clamp(floor(orig_knock), 5, 15);
				_dragoon_part.hsp = lengthdir_x(_launch_speed, _launch_angle);
				_dragoon_part.vsp = clamp(lengthdir_y(_launch_speed, _launch_angle), -infinity, -4);
				_dragoon_part.hit_lock = 10;
			}
		}
	}
	//Dead 
	if (state == PS_RESPAWN) || _drop_dragoon {
		//
		for (var i = 0; i < array_length(ror_dragoon_parts); i++) {
			if (ror_dragoon_parts[i]) {
				ror_dragoon_parts[i] = false;
				var _dragoon_part = obj_stage_main.dragoon_parts[i];
				_dragoon_part.piece_active = false;
				_dragoon_part.piece_collected = false;
				_dragoon_part.should_spawn = (state == PS_RESPAWN) ? true : false;
			}
		}
		//
	}
	#endregion
	
	
	#endregion //Damage Stuff End
	
	#region //Final Step
	if !(state == PS_DEAD || state == PS_RESPAWN || ror_is_ghost) { //Not Vengeful Spirit
		if (ror_previous_damage != get_player_damage(player)) {
			#region //Final Stats for End of Game Stats
			var _frame_damage = get_player_damage(player) - ror_previous_damage;
			if (_frame_damage >= 0) {
				ror_final.ror_total_damage_taken += abs(_frame_damage);
				#region //Phoenix Wright
				if (ror_install_cards && ror_card_install_turnabout){
					if (!ror_install_active){
						give_meter(self, ror_card_install_turnabout * abs(_frame_damage) / 3);
					}
				}
				with _hit_player_obj {
					if (object_index == oPlayer) {
						ror_final.ror_total_damage_given += abs(other.ror_previous_damage - get_player_damage(other.player));
						//
						ror_roman_meter = clamp(ror_roman_meter + (abs(_frame_damage) * ror_card_roman), 0, ror_roman_meter_max);
						//Install
						if (ror_install_cards) {
							give_meter(self, abs(_frame_damage));
						}
						//print(ror_roman_meter)
					} else {
						//Final Points doesn't account for stage projectiles
					}
				}
				#endregion
				#region	//Decay Effects
				with _hit_player_obj {
					if (object_index == oPlayer) {
						if ror_card_decay {
							other.ror_decay_health = clamp(other.ror_decay_health + ceil(_frame_damage * (ror_card_decay / 10)), 0, 999);
						}
					}
				}
				#endregion
			} else {
				ror_final.ror_total_damage_healed += abs(_frame_damage);
				//print("Healed (a) " + string(abs(_frame_damage)));
				//Kumaki Item
				/*
				if (ror_card_install_blood_clotting) {
					//ror_install_meter += (((abs(_frame_damage) * ror_card_install_blood_clotting) + ror_card_install_charge_champ) * ror_install_mult);
					//print(["Kumaki Gave Meter", abs(_frame_damage) * ror_card_install_blood_clotting]);
					give_meter(self, abs(_frame_damage) * ror_card_install_blood_clotting);
				}
				*/
			}
			//
			#endregion
			dmg_particle(self, _was_crit);
		}
		ror_previous_damage = get_player_damage(player);
	}
	#endregion
	
	//prev hsp
	if (!hitpause) {
		ror_is_grabbed = false;
		ror_previous_poison = poison;
		ror_previous_burned = burned;
		ror_previous_burnt_id = burnt_id;
		ror_prev_hsp = hsp;
		ror_prev_vsp = vsp;
	}
}

#region //Stage Hitboxes
with pHitBox {
	if (player_id == other) { //Stage Hitboxes
		//
		if ("ror_can_send_in" in self && ror_can_send_in) {
			//
			if (kb_angle == 45) {
				hit_flipper = (hsp > 0) ? 5 : 0;
			}
		}
		//
		if "ror_blizzard_proj" in self {
			image_angle = point_direction(0, 0, hsp, vsp);
		}
		//FLM Missile
		if ("ror_atg_target" in self && instance_exists(ror_atg_target)) {
			//
			if (kb_angle == 45) {
				hit_flipper = (hsp > 0) ? 5 : 0;
			}
			if (was_parried) {
				destroyed = true;
				with ror_player_id {
					set_state(PS_PRATFALL);
					was_parried = true;
					parry_lag = 60;
				}
			}
			//
			var _proj_speed = 16 * (1 + ror_player_id.ror_card_proj_speed * .5);
			var _target_dir = point_direction(x, y, ror_atg_target.x, ror_atg_target.y - (ror_atg_target.char_height / 2));
			if (hitbox_timer >= 20 + extra_delay) {
				//Anti Toxic thing
				//if (point_distance(x, y, ror_atg_target.x, ror_atg_target.y - ror_atg_target.char_height / 2) <= 32 && (ror_atg_target.invincible ||  ror_atg_target.initial_invince)) {
				if (point_distance(x, y, ror_atg_target.x, ror_atg_target.y - ror_atg_target.char_height / 2) <= 8) {
					hitbox_timer = length;
				}
				//
				hsp = lengthdir_x(_proj_speed, _target_dir);
				vsp = lengthdir_y(_proj_speed, _target_dir);
				for (var i = 0; i <= 20; i++) {
					if (i != player) {
						can_hit[i] = true;
					}
				}
			} else {
				for (var i = 0; i <= 20; i++) {
					can_hit[i] = false;
				}
			}
			//
			image_angle = point_direction(0, 0, hsp, vsp);
		}
		//Gura Item
		if "ror_is_fish" in self {
			//
			if (was_parried) {
				destroyed = true;
				with ror_player_id {
					set_state(PS_PRATFALL);
					was_parried = true;
					parry_lag = 60;
				}
			}
			//Krankees Code
			if (!free and place_meeting(x, y, asset_get("par_block"))) {
				sound_play(asset_get("sfx_waterhit_weak"));
				if ror_player_id.ror_card_shock_dart {
					create_shock_dart(ror_player_id, self);
				}
				destroyed = true;
			}
		}
		//
		//print(["ror_hitbox_parry_stun" in self, "ror_thwomp_player_id" in self, was_parried])
		if "ror_hitbox_parry_stun" in self {
			//print(["Parrystun", ror_thwomp_player_id, was_parried])
			if (was_parried) {
				destroyed = true;
				with ror_thwomp_player_id {					
					set_state(PS_PRATFALL);
					was_parried = true;
					parry_lag = 60;
				}
			}
		}
	}
}
#endregion
//
#region //Sweet Spot Code
if (get_gameplay_time() == 90) {
	var _max_size = 20;
	var _sweetspot_enum = 79;
	with oPlayer {
		var attack_being_changed = 0;
		//Attacks
		repeat(49){
			//Hitboxes
			var hitbox_being_changed = 1;
			var window_being_changed = 1;
			repeat(16){
				//Sweet Spot
				if (
					(get_hitbox_value(attack_being_changed, hitbox_being_changed, HG_WIDTH) <= _max_size) && get_hitbox_value(attack_being_changed, hitbox_being_changed, HG_WIDTH) > 0 &&
					(get_hitbox_value(attack_being_changed, hitbox_being_changed, HG_HEIGHT) <= _max_size) && get_hitbox_value(attack_being_changed, hitbox_being_changed, HG_HEIGHT) > 0 &&
					get_hitbox_value(attack_being_changed, hitbox_being_changed, HG_HITBOX_TYPE) == 1	
					) || get_hitbox_value(attack_being_changed, hitbox_being_changed, _sweetspot_enum) == true				
				
				{
					//print(["Found Sweetspot", attack_being_changed, hitbox_being_changed])
					//print(get_hitbox_value(attack_being_changed, hitbox_being_changed, _sweetspot_enum))
					set_hitbox_value(attack_being_changed, hitbox_being_changed, _sweetspot_enum, true); 
					var _attack_in_array = false;
					for (var i = 0; i < array_length(ror_sweet_spots); i++) {
						if (ror_sweet_spots[i] == attack_to_name(attack_being_changed)) {
							var _attack_in_array = true;
						}
					}
					if !(_attack_in_array) {
						array_insert(ror_sweet_spots, array_length(ror_sweet_spots), attack_to_name(attack_being_changed))
					}
					//set_hitbox_value(attack_being_changed, hitbox_being_changed, HG_WIDTH, 80); 
					//set_hitbox_value(attack_being_changed, hitbox_being_changed, HG_HEIGHT, 80); 
				}
				hitbox_being_changed++;
			}
			//windows
			repeat(16) {
				if (
					get_window_value( attack_being_changed, window_being_changed, AG_WINDOW_HSPEED ) ||
					get_window_value( attack_being_changed, window_being_changed, AG_WINDOW_VSPEED )
				) {
					var _attack_in_array = false;
					for (var i = 0; i < array_length(ror_info_speed); i++) {
						if (ror_info_speed[i] == attack_to_name(attack_being_changed)) {
							var _attack_in_array = true;
						}
					}
					if !(_attack_in_array) {
						array_insert(ror_info_speed, array_length(ror_info_speed), attack_to_name(attack_being_changed));
					}
				}
				window_being_changed++;
			}
			//
			attack_being_changed++;
		}
		//print(ror_sweet_spots)
	}	
}
#endregion 


//Post update
with oPlayer {
	if "ror_queen_heal" in self && ror_queen_heal {
		//set_player_damage(player, clamp(get_player_damage(player) - ror_queen_heal, 0, 999));
		//sound_stop(kirby_heal_sfx);	
		//sound_play(kirby_heal_sfx);
		heal_player(self, ror_queen_heal, kirby_heal_sfx)
		ror_queen_heal = 0;
	}
}

//
#define attack_to_name(_attack) {
	switch(_attack) {
		case AT_JAB: return "Jab" break;
		case AT_DATTACK: return "Dash Attack" break;
		case AT_TAUNT: return "Taunt" break;
		case AT_TAUNT_2: return "Taunt 2" break;
		//Tilts
		case AT_FTILT: return "Forward Tilt" break;
		case AT_DTILT: return "Down Tilt" break;
		case AT_UTILT: return "Up Tilt" break;
		//Strong
		case AT_FSTRONG: return "Forward Strong" break;
		case AT_FSTRONG_2: return "Forward Strong 2" break;
		case AT_DSTRONG: return "Down Strong" break;
		case AT_DSTRONG_2: return "Down Strong 2" break;
		case AT_USTRONG: return "Up Strong" break;
		case AT_USTRONG_2: return "Up Strong 2" break;
		//Specials
		case AT_NSPECIAL: return "Neutral Special" break;
		case AT_NSPECIAL_2: return "Neutral Special 2" break;
		case AT_NSPECIAL_AIR: return "Neutral Special (Air)" break;
		case AT_FSPECIAL: return "Forward Special" break;
		case AT_FSPECIAL_2: return "Forward Special 2" break;
		case AT_FSPECIAL_AIR: return "Forward Special (Air)" break;
		case AT_DSPECIAL: return "Down Special" break;
		case AT_DSPECIAL_2: return "Down Special 2" break;
		case AT_DSPECIAL_AIR: return "Down Special (Air)" break;
		case AT_USPECIAL: return "Up Special" break;
		case AT_USPECIAL_2: return "Up Special 2" break;
		case AT_USPECIAL_GROUND: return "Up Special (Grounded)" break;
		//Aerials
		case AT_NAIR: return "Neutral Aerial" break;
		case AT_FAIR: return "Forward Aerial" break;
		case AT_DAIR: return "Down Aerial" break;
		case AT_BAIR: return "Back Aerial" break;
		case AT_UAIR: return "Up Aerial" break;
		//Throws
		case AT_NTHROW: return "Neutral Throw" break;
		case AT_FTHROW: return "Forward Throw" break;
		case AT_DTHROW: return "Down Throw" break;
		case AT_UTHROW: return "Up Throw" break;
		//Extras
		case AT_EXTRA_1: return "Extra 1" break;
		case AT_EXTRA_2: return "Extra 2" break;
		case AT_EXTRA_3: return "Extra 3" break;
		default: return _attack break;
	}	
}

#define apply_cards(_proj, _owner) {
	var _ror_is_boss = (obj_stage_main.ror_boss_mode && obj_stage_main.ror_boss_player == _owner.player);
	var _mushroom_size = _owner.ror_card_mega - _owner.ror_card_mini;
	_mushroom_size += (2 * _ror_is_boss);
	var _scale_math = (_mushroom_size >= 0) ? 1 + (_mushroom_size * .5) : power(2, _mushroom_size);
	//Blob Expansion
	if (image_xscale <= 20 / 200 && image_yscale <= 20 / 200) {
		_proj.image_xscale = (
			20 * 
			power(2, _owner.ror_card_blob_expansion) // "Sweet Spots"
		) / 200;
		_proj.image_yscale = _proj.image_xscale;
		//Sweet Pearlfection
		_proj.kb_value += _owner.ror_card_pearl * .5;
		_proj.kb_scale += _owner.ror_card_pearl * .1;
	}
	//Reversi
	if (_owner.ror_card_reversi && _proj.attack == AT_USTRONG) {
		if (_proj.kb_angle != 361) {
			_proj.kb_angle = -(180 - _proj.kb_angle);
		} else {
			_proj.kb_angle = -135;
		}
	}
	//Bonus Damage from projectile items
	if ("ror_hitbox_type" in _proj && (_proj.ror_hitbox_type == "proj" || _proj.ror_hitbox_type == "projectile")) {
		//
		//Get Over Here
		if (_owner.ror_card_get_over_here) {
			if ("is_atg" in _proj || "ror_can_send_in" in _proj) { //ATG Missile Inwards
				_proj.kb_angle = 45;
				_proj.hit_flipper = 7;
			} else { //Other Inwards
				_proj.kb_angle = 180 - _proj.kb_angle;
			}
		}
		//
		_proj.damage += _owner.ror_card_batter_up;
		_proj.damage *= 1 + (_owner.ror_card_paint * .2) + (obj_stage_main.sandstorm_active * _owner.ror_card_pocket_sand * .5);		
		
		_proj.transcendent = 	_owner.ror_card_trans_proj ? true : _proj.transcendent;
		//Ricochet / Bounce
		_proj.grounds = 		_owner.ror_card_proj_bounce ? 2 : _proj.grounds;
		_proj.walls = 			_owner.ror_card_proj_bounce ? 2 : _proj.walls;
		
		//Extra Hitpause
		_proj.extra_hitpause = _owner.ror_card_stunning_projectiles * 7;
		
		//Blazing Projectiles
		//_proj.effect =			_owner.ror_card_fire_proj ? 1 : 0;
		_proj.set_on_fire = 	("set_on_fire" in _proj && _proj.set_on_fire) || (_owner.ror_card_fire_proj);
		
		//Projectile Active Time
		_proj.length *= 1 + (_owner.ror_card_active_proj * .2);		
	} else { //Physical Stage Hitbox
		_proj.damage += _owner.ror_card_heavy_hitter;
		_proj.damage *= 1 + (_owner.ror_card_body_build * .2);
		//Donyoku
		if _owner.ror_card_fools_gold {
			_proj.image_xscale *= (_owner.ror_card_fools_gold * 1.35)
			_proj.image_yscale *= (_owner.ror_card_fools_gold * 1.35)
		}		
	}		
	//print(_proj)
	//Base KB
	_proj.kb_value += _owner.ror_card_doc_orders && _proj.kb_angle == 90 ? (_owner.ror_card_doc_orders * .5) : 0;
	_proj.kb_value += _owner.ror_card_rough_guy && _proj.kb_angle == 45 ? (_owner.ror_card_rough_guy * .5) : 0;
	_proj.kb_value += _owner.ror_card_meteor_master && _proj.kb_angle == 270 ? (_owner.ror_card_meteor_master * .5) : 0;
	//Scaling
	_proj.kb_scale += _owner.ror_card_doc_orders && _proj.kb_angle == 90 ? (_owner.ror_card_doc_orders * .1) : 0;
	_proj.kb_scale += _owner.ror_card_rough_guy && _proj.kb_angle == 45 ? (_owner.ror_card_rough_guy * .1) : 0;
	_proj.kb_scale += _owner.ror_card_meteor_master && _proj.kb_angle == 270 ? (_owner.ror_card_meteor_master * .25) : 0;
	//Hitstun
	_proj.hitstun_factor += _owner.ror_card_more_hitstun ? .1 * _owner.ror_card_more_hitstun : 0
	//Proj Speed
	if (_owner.ror_card_proj_speed && "ror_proj_speed_up" !in _proj) {
		_proj.ror_proj_speed_up = true;
		_proj.hsp *= 1 + 0.35*_owner.ror_card_proj_speed;
		_proj.vsp *= 1 + 0.35*_owner.ror_card_proj_speed;
	}
	//
	//Mega Mushroom
	print(_proj.image_xscale)
	if (_mushroom_size != 0) {
		//var _scale_math = (_mushroom_size >= 0) ? 1 + (_mushroom_size * .5) : power(2, _mushroom_size)
		if ("ror_hitbox_type" in _proj && !(_proj.ror_hitbox_type == "proj" || _proj.ror_hitbox_type == "projectile")) {
			_proj.image_xscale *= _scale_math;
			_proj.image_yscale *= _scale_math;
		}
		//
		if (_mushroom_size > 0) {
			_proj.kb_value *= (1 + (_mushroom_size * .2));
			_proj.kb_scale *= (1 + (_mushroom_size * .2));
		}
		print(_mushroom_size);		
	}
	print(_proj.image_xscale)
	//if "ror_card_seconds" in _owner {
	//	_proj.ror_card_seconds = _owner.ror_card_seconds;
	//}
}

#define master_blacklist() { //Attacks that cannot be Master of One'd
	if (
		url == CH_MAYPUL && attack == AT_DSPECIAL ||
		url == CH_SYLVANOS && attack == AT_FSTRONG ||
		url == CH_SYLVANOS && attack == AT_USTRONG
		//||
	) {
		//sound_play(sound_get("WERE GONNA CRASH"));
		//spawn_hit_fx(x, y - char_height / 2, HFX_ORI_ORANGE_BIG);
		//print("Sorgy. You can't use this attack with Master of One");
		return false;
	}
	return true;
}

#define rogue_rng_outcome(_range, _rerolls, _type) {
	var _attempts = 1;
	var _return_value = ror_rng_call(_attempts, _range);
	var _values = [_return_value];
	if (obj_stage_main.disable_star) {
		return _return_value;
	}
	for (var _i = 0; _i < _rerolls; _i++) {
		_attempts++;
		switch(_type) {
			case "lower":
				var _new = ror_rng_call(_attempts, _range);
				if (_return_value > _new) {
					_return_value = _new;
				}
			break;	
			default:
			case "higher":
				var _new = ror_rng_call(_attempts, _range);
				if (_return_value < _new) {
					_return_value = _new;
				}
			break;
			case "once":
				i = _rerolls;
			break;
		}
		array_push(_values, _new);
	}
	//print(["5 Leaf Clover Results: ", player, string(_type), _return_value, _values])
	return _return_value;
}

#define ror_rng_call(_offset, _mod) {
	if _offset == 0 {
		_offset = 1;
	}
	if (_mod == 0) {
		_mod = 1;
	}
	obj_stage_main.ror_custom_seed += get_gameplay_time() + round(get_gameplay_time() * sin(get_gameplay_time())) + get_gameplay_time() * _offset
	obj_stage_main.ror_custom_seed += random_func_2(_offset, 99, true)
	obj_stage_main.ror_custom_seed %= 999999
	var _rng_call = obj_stage_main.ror_custom_seed % power(_offset, _mod)
	//for (var _l = 0; _l <= _offset; _l++) {
	//	obj_stage_main.ror_custom_seed += _offset * random_func_2(_offset, 99, true) * random_func_2(_offset * 2, 99, true);
	//}
	//print(_rng_call % _mod);
	return obj_stage_main.ror_custom_seed % _mod;
}

#define dmg_particle(_player_id, _crit) {
	with obj_stage_main {
		if (show_damage) && _player_id.visible {
			var _particle = instance_create(floor(_player_id.x - _player_id.spr_dir * 16), floor(_player_id.y - _player_id.char_height * 1.5), "obj_stage_article", 6);
			_particle.dmg_value = _player_id.ror_previous_damage - get_player_damage(_player_id.player);
			if (_particle.dmg_value > 0) {
				_particle.x -= _player_id.spr_dir * 32;
				_particle.dmg_color = c_lime;
			} else if (_particle.dmg_value == 0) {
				_particle.dmg_value = "Blocked";
			} else {
				_particle.dmg_value = abs(_particle.dmg_value);
				if _crit {
					_particle.dmg_color = c_red;
				}
			}
		}
	}
}

#define meter_particle(_player_id, _value) {
	with obj_stage_main {
		if (show_meter_gain) && _player_id.visible {
			var _particle = instance_create(floor(_player_id.x + _player_id.spr_dir * 16), floor(_player_id.y - _player_id.char_height * 1.5), "obj_stage_article", 6);
			_particle.dmg_value = _value;
			_particle.dmg_color = c_blue;
		}
	}
	return _particle;
}

#define button_down() {
	return (taunt_down || special_down || attack_down || up_strong_down || right_strong_down || down_strong_down || left_strong_down || up_stick_down || right_stick_down || down_stick_down || left_stick_down);
}



#define spawn_base_dust
//spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
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
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

#define give_meter(_player_obj, _base) {
	if !(obj_stage_main.round_state == "alive" && obj_stage_main.round_state_timer >= 120) { return -4 }
	//var _total_meter_gain = 0;
	with _player_obj {
		//
		var _curr_meter = ror_install_meter;
		var _curr_timer = ror_install_timer;
		var _base_amount = _base;
		//print([_base, ror_card_install_charge_champ, ror_card_install_abyss_boost])
		if _base >= 0 {
			_base += _player_obj.ror_card_install_charge_champ
			_base *= _player_obj.ror_install_mult;
			_base *= 1 + (_player_obj.ror_card_install_abyss_boost * .2);
		}
		//print(["Meter Gain", _base_amount, _base]);
		//
		//print([ror_install_active, ror_card_install_recharge])
		if (!ror_install_active) {
			//print(["Meter Gain", _base_amount, _base]);
			ror_install_meter = clamp(ror_install_meter + _base, 0, ror_install_meter_max); //INSTALL STUFF	
			if _base {
				return meter_particle(_player_obj, round(ror_install_meter - _curr_meter));
			}
		} else {
			if (ror_card_install_recharge) {	
				//print(["Duration Increased", _base_amount, _base]);
				ror_install_timer = clamp(round(ror_install_timer + (_base * ror_card_install_recharge * 3)), 0, ror_install_timer_length);
				if _base {
					return meter_particle(_player_obj, ror_install_timer - _curr_timer);
				}
			}
		}
		//

	}
	return -4;
}

#define heal_player(_player_obj, _base, _sfx) {
	with _player_obj {
		var _damage = get_player_damage(player);
		set_player_damage(player, clamp(get_player_damage(player) - (_base * (ror_card_bamboo + 1)), ror_decay_health, 999));
		//
		//ror_previous_damage = _damage;
		print(["Heal Check", _base, _damage, get_player_damage(player)])
		if ror_previous_damage != 0 && !(ror_decay_health && ror_previous_damage == ror_decay_health) {
			sound_stop(_sfx);	
			sound_play(_sfx);	
			dmg_particle(self, false);
		}
		ror_previous_damage = get_player_damage(player);
		var _ror_healed_damage = abs(get_player_damage(player) - _damage);
		//
		//dmg_particle(self, false)
		if ror_card_install_blood_clotting {
			give_meter(self, _ror_healed_damage);
		}
		ror_final.ror_total_damage_healed += abs(_ror_healed_damage);
		//print("Healed (b) " + string(abs(_ror_healed_damage)));
	}	
	return;
}

#define check_attack_array(_value, _array) {
	//_value is usually attack
	for (var _i = 0; _i < array_length(_array); _i++) {
		if (_array[_i] == _value) {
			return true;
		}
	}
	return false;
}

#define create_shock_dart(_player, _other) {
	with obj_stage_main.main_obj {
		sound_stop(asset_get("sfx_absa_singlezap1"));
		sound_play(asset_get("sfx_absa_singlezap1"));
		//sound_play(_sfx_shock_dart);
		var _hitbox = create_hitbox(AT_DSPECIAL, 2, floor(_other.x), floor(_other.y));
		//Owner
		_hitbox.player = _player.player;
		_hitbox.ror_player_id = _player;
		_hitbox.ror_hitbox_type = "proj";
		
		//
		_hitbox.ror_shock_dart = true;
		_hitbox.bullet_hell_buddy = true;
		//
		var _size = 144;
		_hitbox.damage = 3 + ((_player.ror_card_shock_dart - 1) * 2);
		spawn_hit_fx(_other.x, _other.y, obj_stage_main.vfx_shock);

		_hitbox.image_xscale = _size / 200;
		_hitbox.image_yscale = _size / 200;
		_hitbox.ror_hitbox_parry_stun = true;
		_hitbox.ror_thwomp_player_id = _player;
		//
		apply_cards(_hitbox, _player);
	}
}