



var fric = 1;

var heal = 1;

var dont_change_visibility = 0;

var dont_pull_me = 0;



visible = !((player_id.state == PS_RESPAWN || player_id.state == PS_DEAD) && !player_id.visible);

if player_id.sprite_index == player_id.spr_intro && player_id.intro_legion_flag != noone{
	image_alpha = player_id.intro_legion_flag;
	x = player_id.x - 56 * player_id.spr_dir;
	y = player_id.y - 60;
	dont_change_visibility = 1;
}

if visible && !was_visible{
	sound_play(player_id.sfx_astral_chain_legion_summon);
}

if !visible && was_visible{
	sound_play(player_id.sfx_astral_chain_legion_dismiss);
}

was_visible = visible;

depth = orig_depth;
type = 0;

max_dist = player_id.chain_length * player_id.chain_nodes * 1.9;
player_dist = point_distance(x, y, player_id.x, player_id.y);

ignores_walls = 0;



if !sync && state != PS_HITSTUN{
	if player_id.state_cat == SC_HITSTUN && player_id.hitpause{
		setState(PS_HITSTUN);
		hsp = clamp(player_id.old_hsp, -10, 10);
		vsp = clamp(player_id.old_vsp, -10, 10);
		hitstop = round(player_id.hitstop);
	}
	else hitbox_detection();
}



x = round(x);
y = round(y);

with player_id if phone_attacking && attack == AT_USPECIAL_2 dont_pull_me = 1;



if dash_timer{
		
	sync = 0;
	
	var d_t_max = 20;
	
	if (dash_timer == 1){
		start_x = x;
		start_y = y;
		
		if start_x != dash_target_x spr_dir = sign(dash_target_x - start_x);
		if to_player sound_play(player_id.sfx_astral_chain_legion_dismiss);
	}
	
	if !((dash_timer - 1) % 5){
		spawnAfterimage();
	}
	
	if to_player{
		dash_target_x = player_id.x - 56 * player_id.spr_dir;
		dash_target_y = player_id.y - 60;
		
		with obj_article2 if player_id == other.player_id{
			x = lerp(x, player_id.x, 0.5);
			y = lerp(y, player_id.y - 32, 0.5);
		}
	}
	
	if to_enemy{
		var x_off = 0;
		var y_off = 0;
		
		switch(attack){
			case AT_FSTRONG:
				x_off = -64;
				y_off = 32;
				break;
			case AT_DSTRONG:
				x_off = 64;
				y_off = 0;
				break;
			case AT_USTRONG:
				x_off = 72;
				y_off = 96;
				break;
		}
		
		dash_target_x = hit_player_obj.x - (56 - x_off) * spr_dir;
		dash_target_y = hit_player_obj.y - (60 - y_off);
	}
	
	x = ease_sineOut(start_x, dash_target_x, dash_timer, d_t_max);
	y = ease_sineOut(start_y, dash_target_y, dash_timer, d_t_max);
	
	var first_window_length = 0;
	
	if attack with player_id first_window_length = get_window_value(other.attack, 1, AG_WINDOW_LENGTH);
	
	if dash_timer == max(d_t_max - first_window_length, 1) && attack{
		setAttack(attack);
	}
	
	if attack && abs(stored_spr_dir) spr_dir = stored_spr_dir;
	
	if (dash_timer == d_t_max){
		x = dash_target_x;
		y = dash_target_y;
		
		sync = to_player;
		dash_timer = 0;
	}
	
	else dash_timer++;
	
	if to_player dont_pull_me = 1;
	
}



switch(state){
	
	case PS_IDLE:
	
		// nspecial control
		
		var was_controlled_already = controlled;
		
		controlled = 0;
		
		if player_id.phone_attacking && player_id.attack == AT_NSPECIAL && player_id.window == 2 && (!badly_damaged || !sync || (legion_health > 1 && was_controlled_already)){
		
			sync = 0;
			controlled = 1;
			
			if !was_controlled_already && !player_id.prev_sync sound_play(player_id.sfx_astral_chain_legion_summon);
			
			if !player_id.joy_pad_idle{
                var acc = 0.6;
                var spd = 10;
                hsp = clamp(hsp + lengthdir_x(acc, player_id.joy_dir), -spd, spd);
                vsp = clamp(vsp + lengthdir_y(acc, player_id.joy_dir), -spd, spd);
                moving = 1;
                
            }
            
            if !(state_timer % 5) && (floor(abs(hsp)) || floor(abs(vsp))) spawnAfterimage();
		}
		
		if sync && !(player_id.phone_attacking && player_id.attack == AT_USPECIAL){
			var target_x = -56 * player_id.spr_dir;
			var target_y = -60;
			
			if (point_distance(x, y, target_x, target_y) > 1){
			
				var amt = 0.1 + (sprite_index == player_id.spr_legion_fade) * 0.5;
				
				hsp = (player_id.x + target_x - x) * amt;
				vsp = (player_id.y + target_y - y) * amt;
				
				moving = 1;
			}
			
			if abs(player_id.x - x) && abs(hsp) < 3 && spr_dir != sign(player_id.x - x) && !turning{
				spr_dir = sign(player_id.x - x);
				turning = 8;
			}
		}
		
		if walking{
			if abs(hsp) < 1 walking = 0;
		}
		else{
			if abs(hsp) > 2 walking = 1;
		}
		
		if walking{
			if spr_dir != sign(hsp) && !sync{
				spr_dir = sign(hsp);
				turning = 6;
			}
			sprite_index = player_id.spr_legion_walk;
		}
		else{
			sprite_index = player_id.spr_legion_idle;
		}
		
		image_index = state_timer / 6;
		
		if turning{
			sprite_index = player_id.spr_legion_turn;
			image_index = (turning < 4);
			state_timer = 0;
			turning--;
		}
		
		if dash_buffer{
			dash_buffer = 0;
			dash_timer = 1;
		}
		
		if player_id.phone_attacking && player_id.attack == AT_DSPECIAL{
			if badly_damaged{
				
			}
			else{
				setAttack(AT_DSPECIAL_AIR);
				spr_dir = player_id.spr_dir;
				loops_remaining = sync * 5;
				powered_up = sync;
				sync = 0;
			}
		}
		
		if player_id.phone_attacking && !sync{
			
			var first_part = (player_id.attack == AT_FSPECIAL || player_id.window_timer < player_id.phone_window_end / 2);
			
			if badly_damaged{
				
			}
			else if first_part switch(player_id.attack){
				case AT_FSPECIAL:
					setAttack(AT_FSPECIAL_AIR);
					spr_dir = player_id.spr_dir;
					break;
				case AT_FSTRONG_2:
					setAttack(AT_FSTRONG);
					spr_dir = player_id.spr_dir;
					break;
				case AT_DSTRONG_2:
					setAttack(AT_DSTRONG);
					spr_dir = player_id.spr_dir;
					break;
				case AT_USTRONG_2:
					setAttack(AT_USTRONG);
					spr_dir = player_id.spr_dir;
					break;
			}
		}
		
		if player_id.phone_attacking switch(player_id.attack){
			case AT_FSTRONG:
				sync = 1;
				switch(player_id.image_index){
					case 12:
					case 0:
						image_alpha = 2;
						sprite_index = player_id.spr_legion_fade;
						break;
					default:
						image_alpha = noone;
						dont_change_visibility = 1;
						break;
				}
				if player_id.window == 2 && player_id.window_timer == 1 attackingRecoil();
				heal = 0;
				type = 1;
				break;
			case AT_DSTRONG:
				sync = 1;
				switch(player_id.image_index){
					case 13:
					case 0:
						image_alpha = 2;
						sprite_index = player_id.spr_legion_fade;
						break;
					default:
						image_alpha = noone;
						dont_change_visibility = 1;
						break;
				}
				if player_id.window == 2 && player_id.window_timer == 1 attackingRecoil();
				heal = 0;
				type = 2;
				break;
			case AT_USTRONG:
				sync = 1;
				switch(player_id.image_index){
					case 13:
					case 0:
						image_alpha = 2;
						sprite_index = player_id.spr_legion_fade;
						break;
					default:
						image_alpha = noone;
						dont_change_visibility = 1;
						break;
				}
				if player_id.window == 2 && player_id.window_timer == 1 attackingRecoil();
				heal = 0;
				type = 4;
				break;
			case AT_USPECIAL:
				sync = 1;
				switch(player_id.image_index){
					case 0:
					case 11:
						image_alpha = 2;
						sprite_index = player_id.spr_legion_fade;
						break;
					default:
						image_alpha = noone;
						dont_change_visibility = 1;
						break;
				}
				// if player_id.window == 2 && player_id.window_timer == 1 attackingRecoil();
				heal = 0;
				type = 3;
				x = lerp(x, player_id.x, 0.5);
				y = lerp(y, player_id.y - 16, 0.5);
				dont_pull_me = 1;
				ignores_walls = 1;
				break;
			default:
				if image_alpha == noone image_alpha = 1;
				break;
		}
		
		else if image_alpha == noone image_alpha = 1;
		
		break;
	
	case PS_ATTACK_AIR: // desynced attack
	
		// initialising stuff...
		
		if (state_timer == 0){
			window = 1;
			window_timer = 1;
			has_hit_player = 0;
		}
		
		var new_window = 0;
		
		
		
		// messy
		
		if (attack == AT_FSPECIAL_AIR || attack == AT_EXTRA_3) && window == 3 && has_hit_player && !hitstop{
			setWindow(4);
			sound_play(asset_get("sfx_spin"));
			attack = AT_FSPECIAL_AIR;
		}
		
		
		
		// general window/hitbox code
		
		with player_id{
		
			other.num_windows =
				get_attack_value(other.attack, AG_NUM_WINDOWS);
			other.win_length =
				ceil(get_window_value(other.attack, other.window, AG_WINDOW_LENGTH)
				* ((!other.has_hit_player && get_window_value(other.attack, other.window, AG_WINDOW_HAS_WHIFFLAG)) ? 1.5 : 1));
			other.win_frames =
				get_window_value(other.attack, other.window, AG_WINDOW_ANIM_FRAMES);
			other.win_frame_start =
				get_window_value(other.attack, other.window, AG_WINDOW_ANIM_FRAME_START);
			other.win_sfx =
				get_window_value(other.attack, other.window, AG_WINDOW_HAS_SFX) ? get_window_value(other.attack, other.window, AG_WINDOW_SFX) : noone;
			other.win_sfx_frame =
				get_window_value(other.attack, other.window, AG_WINDOW_SFX_FRAME);
			
			other.sprite_index =
				get_attack_value(other.attack, AG_SPRITE);
			
			other.hbox_active = 0;
			other.real_type = [];
			other.hbox_number = [];
			
			for (var i = 1; i < get_num_hitboxes(other.attack) + 1 && !other.hbox_active; i++){
				if (get_hitbox_value(other.attack, i, HG_WINDOW) == other.window && other.window_timer == 1){
					other.hbox_active = 1;
					array_push(other.hbox_number, i);
					other.hbox_x = get_hitbox_value(other.attack, i, HG_HITBOX_X);
					other.hbox_y = get_hitbox_value(other.attack, i, HG_HITBOX_Y);
					reset_hitbox_value(other.attack, i, HG_HITBOX_TYPE);
					array_push(other.real_type, get_hitbox_value(other.attack, i, HG_HITBOX_TYPE));
					set_hitbox_value(other.attack, i, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
					set_hitbox_value(other.attack, i, HG_PROJECTILE_MASK, -1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_WALL_BEHAVIOR, 1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_UNBASHABLE, 1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_IS_TRANSCENDENT, 1);
					set_hitbox_value(other.attack, i, HG_PROJECTILE_PARRY_STUN, 1);
					set_hitbox_value(other.attack, i, HG_EXTENDED_PARRY_STUN, 1);
					attack_end(other.attack);
				}
			}
				
		}
		
		image_index = win_frame_start + lerp(0, win_frames, max(window_timer - 1, 0) / win_length);
		
		if win_sfx && (window_timer - 2) == win_sfx_frame && !hitstop sound_play(win_sfx);
		
		// print_debug(string(window) + " / " + string(window_timer) + " / " + string(image_index))
		
		
		
		// spawn hitboxes
		
		var hbox = noone;
		var hboxes_made = [];
		
		if hbox_active && !hitstop for (var cur = 0; cur < array_length(hbox_number); cur++){
			
			var number = hbox_number[cur];
			
			with player_id set_hitbox_value(other.attack, number, HG_HITBOX_TYPE, 2);
			
			hbox = create_hitbox(attack, number, round(x) + hbox_x * spr_dir, round(y) + hbox_y);
			hbox.article_owner = self;
			
			hbox.true_type = real_type[cur];
			hbox.type = 2;
			hbox.offset_x = hbox_x;
			hbox.offset_y = hbox_y;
			hbox.spr_dir = spr_dir;
			
			if hbox.true_type == 1{
				//
			}
			
			array_push(hboxes_made, hbox);
			
			with player_id reset_hitbox_value(other.attack, number, HG_HITBOX_TYPE);
			with player_id reset_hitbox_value(other.attack, number, HG_EXTENDED_PARRY_STUN);
			
		}
		
		
		
		// attack_update
		
		var dir = 0;
		
		switch(attack){
			
			case AT_FSPECIAL_AIR: // rush-attack
				
				// rush forward, then find a player and multi-hit
				
				switch(window){
					
					case 1:
						if (window_timer == win_length){
							hsp = 20 * spr_dir;
							moving = 1;
							sound_play(player_id.sfx_astral_chain_swipe_3);
						}
						break;
						
					case 2:
						moving = 1;
						if (window_timer == 1) attackingRecoil();
						if has_hit_player && !hitstop{
							hit_player_obj.x = lerp(hit_player_obj.x, x + 30 * spr_dir, 0.5);
							hsp = 5 * spr_dir;
						}
						break;
						
					case 3:
						hsp = clamp(hsp, -5, 5);
						if (window_timer == win_length){
							window = num_windows;
						}
						break;
						
					case 4:
					case 5:
					case 6:
						hsp = 5 * spr_dir;
						vsp = -2;
						break;
					
				}
				
				anchored = has_hit_player;
				
				break;
			
			case AT_DSPECIAL_AIR: // chain drive (can be shared with player)
				
				switch(window){
						
					case 1:
						if (window_timer == 1){
							with obj_article2 if player_id == other.player_id{
								var hfx = spawn_hit_fx(round(x), round(y), player_id.vfx_reticle);
								hfx.akira_obj_follow = self;
							}
						}
						if (window_timer == win_length && loops_remaining){
							loops_remaining--;
							window_timer = 0;
						}
						break;
					
					case 2:
						if (window_timer == win_length){
							with obj_article2 if player_id == other.player_id{
								create_hitbox(AT_DSPECIAL_AIR, 1 + other.powered_up, round(x), round(y));
							}
							create_hitbox(AT_DSPECIAL_AIR, 1 + powered_up, round(x), round(y));
							sound_play(asset_get("sfx_swipe_heavy1"));
							attackingRecoil();
						}
						break;
						
					case 3:
						break;
						
					case 4:
						break;
						
				}
				
				break;
			
			case AT_FSTRONG:
				type = 1;
				sprite_index = sprite_get("legion_fstrong");
				player_id.strong_charge = 0;
				var hbox_correct_x = 44;
				var hbox_correct_y = 56;
				if !array_equals(hboxes_made, []){
					hboxes_made[0].offset_x += hbox_correct_x;
					hboxes_made[0].offset_y += hbox_correct_y;
				}
				switch(window){
            
		            case 1:
		                if (window_timer == 1){
		                   fstrong_sound_1 = sound_play(asset_get("sfx_ori_charged_flame_charge"));
		                   fstrong_sound_2 = sound_play(asset_get("sfx_ori_charged_flame_charge2"));
		                   array_push(stopped_sounds, fstrong_sound_1);
		                   array_push(stopped_sounds, fstrong_sound_2);
		                }
		                break;
		            
		            case 2:
		                if (window_timer == win_length){
		                    sound_stop(asset_get("sfx_ori_charged_flame_charge"));
		                    sound_stop(asset_get("sfx_ori_charged_flame_charge2"));
							attackingRecoil();
		                }
		                break;
		            
		            case 3:
		                if (window_timer == win_length && !has_hit_player){
		                    with player_id{
			                    set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 5);
		                    }
		                    create_hitbox(AT_FSTRONG, 2, x + (80 + hbox_correct_x) * spr_dir, y - 74  + hbox_correct_y);
		                }
		                break;
		            
		        }
				break;
			
			case AT_DSTRONG:
				type = 2;
				sprite_index = sprite_get("legion_dstrong");
				player_id.strong_charge = 0;
				var hbox_correct_x = 44;
				var hbox_correct_y = 56;
				if !array_equals(hboxes_made, []){
					hboxes_made[0].offset_x += hbox_correct_x;
					hboxes_made[0].offset_y += hbox_correct_y;
				}
				switch(window){
            
		            case 1:
		                if (window_timer == 1){
		                   array_push(stopped_sounds, sound_play(asset_get("sfx_ori_charged_flame_charge")));
		                   array_push(stopped_sounds, sound_play(asset_get("sfx_ori_charged_flame_charge2")));
		                }
		                break;
		            
		            case 2:
		                if (window_timer == win_length){
		                    sound_stop(stopped_sounds[0]);
		                    sound_stop(stopped_sounds[1]);
							attackingRecoil();
		                }
		                break;
		            
		            case 3:
		                break;
		            
		        }
				break;
			
			case AT_USTRONG:
				type = 4;
				sprite_index = sprite_get("legion_ustrong");
				player_id.strong_charge = 0;
				var hbox_correct_x = 0;
				var hbox_correct_y = 58;
				if !array_equals(hboxes_made, []){
					hboxes_made[0].offset_x += hbox_correct_x;
					hboxes_made[0].offset_y += hbox_correct_y;
				}
				switch(window){
            
		            case 1:
		                if (window_timer == 1){
		                   array_push(stopped_sounds, sound_play(asset_get("sfx_ori_charged_flame_charge")));
		                   array_push(stopped_sounds, sound_play(asset_get("sfx_ori_charged_flame_charge2")));
		                }
		                break;
		            
		            case 2:
		                if (window_timer == win_length){
		                    sound_stop(stopped_sounds[0]);
		                    sound_stop(stopped_sounds[1]);
							attackingRecoil();
		                }
		                break;
		            
		            case 3:
		                break;
		            
		        }
				break;
			
			case AT_EXTRA_3:
			
				sync = 0;
				
				switch(window){
					
					case 1:
						
						if (window_timer < 18) sync = 1;
						
						if player_id.image_index > 1{
							image_alpha = -10;
							see_thru = 1;
						}
						
						switch(dir){
							case 0:
								// var sin_thing = sin((window_timer + 4) / 3) * -72;
								// x = lerp(x, player_id.x + sin_thing * player_id.spr_dir, (window_timer > 5) ? 1 : 0.5);
								// y = player_id.y - 60;
								// if abs(sin_thing) spr_dir = sign(sin_thing);
								
								x = lerp(x, player_id.x - 32 * player_id.spr_dir, 0.5);
								y = lerp(y, player_id.y - 32, 0.5);
								break;
						}
						break;
						
					case 2:
						if (window_timer == 1){
							attackingRecoil();
							spr_dir = player_id.spr_dir;
							stored_spr_dir = spr_dir;
							switch(dir){
								case 0:
									hsp = 20 * spr_dir;
									x = player_id.x + hsp;
									y = player_id.y - 60;
									break;
							}
							image_alpha = 1;
						}
						anchored = 1;
						// if (window_timer - 1) % 4 == 0 spawnAfterimage();
						// depth = player_id.depth - 1;
						
						if window_timer < win_length < 2{
							moving = 1;
						}
						else{
							fric = 2;
						}
						
						if has_hit_player && !hitstop{
							hit_player_obj.x = lerp(hit_player_obj.x, x + 30 * spr_dir, 0.5);
							hsp = 5 * spr_dir;
						}
						break;
						
					case 3:
						spr_dir = stored_spr_dir;
						fric = 3;
						break;
						
				}
				
				break;
			
		}
		
		
		
		// end-of-frame housekeeping
		
		if !hitstop window_timer++;
		
		if window_timer > win_length{
			if (window >= num_windows) setState(PS_IDLE);
			else setWindow(window + 1);
		}
		
		if new_window setWindow(new_window);
		
		break;
	
	case PS_ATTACK_GROUND: // synced attack
		
		// probably just be invisible
		
		break;
	
	case PS_HITSTUN:
		
		// can't act
		
		hitstop = min(hitstop, 20);
		
		sprite_index = player_id.spr_legion_hurt;
		image_index = !hitstop;
		
		if abs(hsp) spr_dir = -sign(hsp);
		
		moving = 1;
		
		if !hitstop{
		
			hsp -= 0.05 * sign(hsp);
			// vsp -= 0.5 * sign(vsp);
			
			if abs(hsp) < 0.5 hsp = 0;
			// if abs(vsp) < 0.5 vsp = 0;
			
			vsp += player_id.hitstun_grav;
			
			if state_timer > 20 setState(PS_IDLE);
			
		}
		
		break;
	
	case PS_SPAWN:
		
		// spawn anim (when player spawns or respawns)
		
		break;
	
	case PS_DEAD: // dying when player dies or when enemy depletes HP
		
		// disappear; new article is created
		
		break;
	
}
		
if !moving{
	hsp -= sign(hsp) * fric;
	vsp -= sign(vsp) * fric;
	
	if (abs(hsp) < fric) hsp = 0;
	if (abs(vsp) < fric) vsp = 0;
}

moving = 0;

if (player_dist > max_dist) && !hitstop && !dont_pull_me{
	var pulled = self;
	var puller = player_id;
	
	if anchored{
		pulled = player_id;
		puller = self;
	}
	
	var ang = point_direction(puller.x, puller.y, pulled.x, pulled.y);
	pulled.x = puller.x + lengthdir_x(max_dist, ang);
	pulled.y = puller.y + lengthdir_y(max_dist, ang);
	
	var spd = point_distance(0, 0, hsp, vsp);
	pulled.hsp = -lengthdir_x(spd, ang);
	pulled.vsp = -lengthdir_y(spd, ang);
}

player_dist = point_distance(x, y, player_id.x, player_id.y);

anchored = 0;



bot_x = x;
bot_y = y;



badly_damaged = (legion_health <= 5 * health_ratio);

if player_id.phone_cheats[player_id.cheat_immortal_legion]{
	legion_health = max_health;
}

else{

	if heal && sync legion_health = min(badly_damaged ? (legion_health + 0.5) : round(legion_health + 1), max_health);
	else if badly_damaged legion_health = max(legion_health - 1, 0);
	
	if target_health != noone{
		legion_health = lerp(target_health, legion_health, 0.5);
		if abs(legion_health - target_health) < 2{
			legion_health = target_health;
			target_health = noone;
		}
	}
	
	if !legion_health && !dash_timer && !sync && state == PS_IDLE{
		dash_timer = 1;
		dash_target_x = player_id.x;
		dash_target_y = player_id.y;
		to_player = 1;
		to_enemy = 0;
		attack = 0;
	}
	
}

badly_damaged = (legion_health <= 5 * health_ratio);

if !legion_health && can_damage_player{
	take_damage(player, player, 10);
	can_damage_player = 0;
}
if legion_health can_damage_player = 1;



if abs(image_alpha - (see_thru ? 0.25 : 1)) > 0.05 && !dont_change_visibility{
	image_alpha = lerp(image_alpha, see_thru ? 0.25 : 1, 0.25);
}

if abs(walk_opac - (controlled)) > 0.05{
	walk_opac = lerp(walk_opac, controlled, 0.25);
}

with obj_article2 if player_id == other.player_id image_alpha = other.image_alpha;

see_thru = sync;



if !hitstop state_timer++;
exist_timer++;

if dash_buffer dash_buffer--;



#define setState(n_s)

state = n_s;
state_timer = 0;

walking = 0;

if !array_equals(stopped_sounds, []){
	for (var snd = 0; snd < array_length(stopped_sounds); snd++){
		sound_stop(stopped_sounds[snd]);
	}
}



#define setWindow(n_w)

window = n_w;
window_timer = 1;



#define setAttack(n_a)

attack = n_a;
setState(PS_ATTACK_AIR);

window = 1;
window_timer = 1;
has_hit_player = 0;

stopped_sounds = [];



#define spawnAfterimage

var hfx = spawn_hit_fx(round(x), round(y), player_id.vfx_legion_afterimage);
hfx.spr_dir = spr_dir;



#define attackingRecoil

target_health = max(0, legion_health - 5 * health_ratio);



#define hitbox_detection // supersonic
//estimated like 80% accurate imo
if hit_lockout <= 0 {
    var article = self;
    //reset hitbox groups when necessary
    with (oPlayer)
        if (state == clamp(state, 5, 6) && window == 1 && window_timer == 1) {
            other.hbox_group[@ player-1][@ attack] = array_create(10,0);
            //with other print_debug(`${article}: reset hb group for ${other.player},${other.attack}`);
        }
    
    var currentHighestPriority = noone;
    with (pHitBox) 
        if `hit_${article}` not in self && player != other.player
            if place_meeting(x,y,other) && (groundedness == 0 || groundedness == 1+free) && hit_priority != 0 {
                if hbox_group == -1 || ( hbox_group != -1 && other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] == 0) {
                    //hit
                    if currentHighestPriority != noone {
                        if currentHighestPriority.hit_priority < hit_priority
                            currentHighestPriority = self;
                    } else {
                        currentHighestPriority = self;
                    }
                    
                    variable_instance_set(self, `hit_${article}`, true);
                }
            } else if (place_meeting(x,y,other) && hbox_group != -1 && other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] == 1) || (hit_priority == 0) {
                //prevent from running hit detection for optimization sake
                //with other print_debug("hit but also not");
                variable_instance_set(self, `hit_${article}`, true);
            }
    
    if instance_exists(currentHighestPriority) with currentHighestPriority {
        sound_play(sound_effect);
        spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
        //this handles the knockback; hitstun, speed, etc.
        with other {
            //print_debug(`hit_${article}`);
            setState(PS_HITSTUN);
            
            sound_play(asset_get("sfx_absa_singlezap1"));
            
            // legion_health = max(0, legion_health - other.damage * health_ratio);
            
            attackingRecoil();
            
            hitstun = (other.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + other.damage * 0.12 * other.kb_scale * 4 * 0.65 * kb_adj) + 12;
            hitstun_full = hitstun;
            
            hit_lockout = other.no_other_hit;
            // for you archy. 
            // if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for enemies
            if other.force_flinch orig_knock = 0.3; //comment out this line for enemies.
            else orig_knock = other.kb_value + other.damage * other.kb_scale * 0.12 * kb_adj;
            kb_dir = get_hitbox_angle(other);
            
            hsp = lengthdir_x(orig_knock, kb_dir);
            vsp = lengthdir_y(orig_knock, kb_dir);
            
            hit_player_obj = other.player_id;
            hit_player_num = other.player;
        }
        //apply hitpause (where applicable)
        var desired_hitstop = hitpause + damage * hitpause_growth * 0.05;
        if type == 1 with player_id {
            old_vsp = vsp;
            old_hsp = hsp;
            hitpause = true;
            has_hit = true;
            if hitstop < desired_hitstop {
                hitstop = desired_hitstop;
                hitstop_full = desired_hitstop;
            }
        }
        other.hitstop = floor(desired_hitstop);
        if hbox_group != -1 other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] = 1;
    }
} else hit_lockout--;