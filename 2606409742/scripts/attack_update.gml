
//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
	trigger_b_reverse();
}



switch(attack){
	case AT_JAB:
	case AT_FTILT:
	case AT_UTILT:
	case AT_DTILT:
		if (window == 1 || (attack == AT_UTILT || attack == AT_JAB) && (window == 4 || window == 7)) && window_timer == phone_window_end{
			spawn_base_dust(x - 16 * spr_dir, y, "dash");
		}
		break;
	case AT_DATTACK:
		if window == 1 && window_timer == phone_window_end{
			spawn_base_dust(x + 64 * spr_dir, y, "dash_start");
		}
		break;
	case AT_USTRONG:
	case AT_FSTRONG:
	case AT_DSTRONG:
		if window == 1 && (window_timer == 1 || strong_charge % 10 == 1){
			array_push(phone_dust_query, [x - 16 * spr_dir + sin(strong_charge) * 10, y, "dash", spr_dir]);
		}
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x - (40 * attack == AT_FSTRONG) * spr_dir + hsp, y, "dash_start", spr_dir]);
		}
		break;
}



switch(attack){
	
	case AT_JAB:
		if (window == 3 && window_timer == phone_window_end) was_parried = 0;
		
		if window == 1 && window_timer == 1{
			// var h = instance_create(x, y, "obj_article3");
			// h.message_type = shield_down;
		}
		break;
	
	case AT_DAIR:
		if window == 1 && window_timer == phone_window_end{
			var h = spawn_hit_fx(x, y + 32, vfx_dair_sweetspot);
			h.depth = depth - 1;
		}
	case AT_UTILT:
	case AT_FTILT:
	case AT_DTILT:
	case AT_FSTRONG:
	case AT_USTRONG:
		if (window == 1 && window_timer == 1 && !hitpause){
			sound_play(asset_get("sfx_forsburn_cape_swipe"));
		}
		break;
	
	case AT_DATTACK:
		switch(window){
			case 1:
				hsp -= 0.5 * spr_dir;
				if window_timer == phone_window_end{
					hsp = 7 * spr_dir;
				}
				break;
			case 3:
				if window_timer == 1{
					 sound_play(asset_get("sfx_forsburn_cape_swipe"));
					 sound_play(asset_get("sfx_ori_ustrong_charge"));
				}
				if window_timer == phone_window_end{
					sound_play(asset_get("sfx_kragg_rock_land"))
					spawn_base_dust(x, y, "land");
				}
			case 2:
				if has_hit_player && "melee_hit_player" in self && melee_hit_player.state_cat == SC_HITSTUN{
					melee_hit_player.hsp = hsp;
				}
				break;
			case 4:
				hsp = 0;
				break;
		}
		break;
	
	case AT_DSTRONG:
		switch(window){
			case 1:
				if (window_timer == 1 && !hitpause){
					sound_play(asset_get("sfx_forsburn_cape_swipe"));
				}
				break;
			case 2:
				hsp += 3 * spr_dir;
				break;
			case 3:
			case 4:
				if has_hit_player && melee_hit_player.state_cat == SC_HITSTUN{
					// h
				}
				break;
			case 5:
				hsp = 0;
				break;
		}
		break;
	
	case AT_DSPECIAL:
		
		can_move = false;
		can_wall_jump = (window < 7);
		dspecial_window_tracker = window;
		
		switch(window){
			case 1: // start
				if window_timer == 1 with obj_article1 if player_id == other instance_destroy(self);
			case 2: // pull
				can_fast_fall = false;
				vsp = min(vsp, max_fall);
				can_move = true;
				set_window_value(attack, 2, AG_WINDOW_GOTO, 6 * free);
				break;
			case 3: // idle
				fall_through = down_hard_pressed;
				if fall_through && !place_meeting(x, y + 2, asset_get("par_block")){
					free = true;
					can_fast_fall = false;
					do_a_fast_fall = false;
					clear_button_buffer(PC_DOWN_HARD_PRESSED);
				}
				can_shield = true;
				if abs(right_down - left_down) && !rune_menu.state{
					spr_dir = right_down - left_down;
					set_window(4);
				}
				if free{
					set_window(6);
				}
				dspecialThrowInputs();
				if (jump_pressed || can_tap_jump() && tap_jump_pressed) && !rune_menu.state{
					set_window(5);
				}
				break;
			case 4: // walk
				fall_through = down_hard_pressed;
				if fall_through && !place_meeting(x, y + 2, asset_get("par_block")){
					free = true;
					can_fast_fall = false;
					do_a_fast_fall = false;
					clear_button_buffer(PC_DOWN_HARD_PRESSED);
				}
				can_shield = true;
				hsp = clamp(hsp + spr_dir * walk_accel, -walk_speed, walk_speed);
				if window_timer % 10 == 0{
					spawn_base_dust(x, y, "walk");
				}
				if (right_down - left_down) != spr_dir || rune_menu.state{
					set_window(3);
				}
				if (jump_pressed || can_tap_jump() && tap_jump_pressed) && !rune_menu.state{
					set_window(5);
				}
				dspecialThrowInputs();
				if free{
					set_window(6);
				}
				break;
			case 5: // jumpsquat
				hsp = clamp(hsp + (right_down - left_down) * walk_accel, -walk_speed, walk_speed);
				if window_timer == phone_window_end{
					free = true;
					vsp = -1 * (jump_down ? jump_speed : short_hop_speed);
					spawn_base_dust(x, y, "jump");
					clear_button_buffer(PC_JUMP_PRESSED);
					sound_play(jump_sound);
				}
				break;
			case 6: // jump
				fall_through = down_down;
				can_move = true;
				can_shield = true;
				if !free{
					set_window(abs(right_down - left_down) ? 4 : 3);
					spawn_base_dust(x, y, "land");
					sound_play(land_sound);
				}
				else if djumps < max_djumps && (jump_pressed || can_tap_jump() && tap_jump_pressed) && !rune_menu.state{
					djumps++;
					vsp = -djump_speed;
					hsp = clamp(hsp + (right_down - left_down) * jump_change, -air_max_speed, air_max_speed);
					spawn_base_dust(x, y, "doublejump");
					sound_play(djump_sound);
				}
				dspecialThrowInputs();
				break;
			case 7: // throw
				if window_timer == 1{
					was_up = up_strong_pressed || up_down;
					was_down = down_strong_pressed || down_down;
					was_left = left_strong_pressed || (left_down && !right_strong_pressed);
					was_right = right_strong_pressed || (right_down && !left_strong_pressed);
				}
				// if up_down was_up = true;
				// if down_down was_down = true;
				// if left_down was_left = true;
				// if right_down was_right = true;
				can_move = true;
				can_fast_fall = false;
				if window_timer == 10{
					sound_play(sfx_ssbu_item_throw);
					var a = instance_create(x, y, "obj_article1");
					a.state = PS_ATTACK_AIR;
					a.hitstun = 200;
					with a spawn_hitbox_as_melee(AT_DSPECIAL, 1);
					sound_play(asset_get("sfx_swipe_medium1"));
					if was_up{
						a.hsp = 2 * spr_dir;
						a.vsp = -16;
						a.x += 16 * spr_dir;
						a.y -= 64;
					}
					else if was_down{
						a.hsp = 4 * spr_dir;
						a.vsp = 16;
						a.x += 48 * spr_dir;
						a.y -= 32;
					}
					else if was_left{
						spr_dir = -1;
						a.hsp = 10 * spr_dir;
						a.vsp = -5;
						a.x += 16 * spr_dir;
						a.y -= 64;
					}
					else if was_right{
						spr_dir = 1;
						a.hsp = 10 * spr_dir;
						a.vsp = -5;
						a.x += 16 * spr_dir;
						a.y -= 64;
					}
					else{
						a.hsp = 7 * spr_dir;
						a.vsp = -10;
						a.x += 16 * spr_dir;
						a.y -= 64;
					}
					a.spr_dir = spr_dir;
				}
				if window_timer > 10{
					can_fast_fall = true;
				}
				if window_timer > phone_window_end * 2 / 3{
					iasa_script();
				}
		}
		
		if window < 7 && can_shield && shield_pressed && !(free && !has_airdodge) && !rune_menu.state{
			var a = instance_create(x, y - 80, "obj_article1");
			a.vsp = -5;
			a.fake_image_angle = -360;
		}
		break;
	
	case AT_DSPECIAL_2:
		can_fast_fall = false;
		do_a_fast_fall = false;
		
		if window_timer == 1 magnesising = (cur_rune == RUNE_MAGNESIS);
		
		if !magnesising{
			hsp = clamp(hsp, -4, 4);
		}
		vsp = min(vsp, 4);
		break;
	
	case AT_FSPECIAL:
		
		if was_parried can_move = false;
		
		if hitpause{
			if check_for_bounce{
				check_for_bounce = false;
				if !was_parried{
					old_vsp = -7;
					if has_hit_bomb{
						old_hsp += 4 * spr_dir;
						has_hit_bomb = false;
					}
				}
			}
		}
		else{
			check_for_bounce = true;
		}
		
		switch(window){
			case 1:
				if stamina{
					stamina--;
				}
				if window_timer == 1{
					hsp = 8 * spr_dir;
					vsp = -8;
					free = true;
					has_bounced = false;
					sound_play(asset_get("sfx_forsburn_cape_swipe"));
					spawn_base_dust(x, y, "dash_start");
				}
				if window_timer == phone_window_end{
					hsp = lerp(hsp, clamp(hsp, -air_max_speed, air_max_speed), 0.5);
					vsp = 0;
				}
				break;
			case 3:
				can_wall_jump = true;
			case 2:
				if !free{
					if has_bounced || was_parried{
						attack_end();
						set_state(was_parried ? PS_PRATLAND : PS_LAND);
					}
					else{
						vsp = -5;
						has_bounced = true;
						spawn_base_dust(x, y, "land");
						sound_play(landing_lag_sound);
					}
				}
				vsp -= gravity_speed * 0.5;
				break;
			case 4:
				can_wall_jump = true;
				if !free{
					if has_bounced || was_parried{
						attack_end();
						set_state(was_parried ? PS_PRATLAND : PS_LAND);
					}
					else{
						vsp = -6;
						has_bounced = true;
						spawn_base_dust(x, y, "land");
						sound_play(landing_lag_sound);
					}
				}
				else if !was_parried iasa_script();
				break;
		}
		
		break;
	
	case AT_USPECIAL:
		can_fast_fall = false;
		switch(window){
			case 1:
				if window_timer == 1{
					glide_sound = sound_play(sfx_minecraft_elytra, true);
					hsp = clamp(hsp, -3, 3);
					vsp = (stamina > 0) ? -9 : -4;
					if stamina{
						var h = spawn_hit_fx(x + hsp * 10, y - 12, vfx_wind);
						h.depth = depth - 1;
						if !free{
							spawn_base_dust(x, y, "jump");
						}
					}
				}
			case 2:
				if stamina stamina--;
				vsp = min(vsp, 2);
				break;
			case 3:
				if window_timer == 1{
					spawn_base_dust(x, y - 76, "walk");
				}
				can_wall_jump = true;
				vsp = min(vsp, 2);
				if !free{
					attack_end();
					set_state(PS_LAND);
				}
				else{
					iasa_script();
					move_cooldown[attack] = 2;
				}
				if stamina stamina--;
				else{
					attack_end();
					set_state(PS_IDLE_AIR);
					move_cooldown[attack] = 30;
				}
				break;
		}
		break;
	
	case AT_NSPECIAL:
		can_move = false;
		can_fast_fall = false;
		
		if window < 3 && abs(right_down - left_down) && !rune_menu.state{
			spr_dir = right_down - left_down;
		}
		
		switch(window){
			case 1:
				if window_timer == 1{
					array_push(phone_stopped_sounds, sound_play(sfx_ssbu_bow_charge));
					if stamina && attack_had_spear{
						array_push(phone_stopped_sounds, sound_play(sfx_botw_bullet_time));
					}
					nspecial_stamina_stored = stamina > 1;
				}
				if attack_had_spear{
					hsp = clamp(hsp, -3, 3);
					vsp = min(vsp, 1);
				}
				if window_timer == phone_window_end || window_timer == phone_window_end - 4{
					spawn_base_dust(x - 10 * spr_dir + sin(window_timer + 2) * 16 * spr_dir, y, "dash");
				}
				if window_timer == phone_window_end && !attack_had_spear{
					window = 3;
					window_timer = 0;
					sound_play(sfx_botw_bow_no_arrow);
					sound_stop(phone_stopped_sounds[0]);
					if nspecial_stamina_stored && attack_had_spear sound_stop(phone_stopped_sounds[1]);
					spawn_base_dust(x - 16 * spr_dir, y, "dash_start");
				}
				break;
			case 2:
				if stamina && attack_had_spear{
					stamina--;
				}
				if nspecial_stamina_stored && attack_had_spear{
					hsp = clamp(hsp, -0.75, 0.75);
					vsp = min(vsp, 0.5);
				}
				if window_timer % 6 == 0{
					spawn_base_dust(x - 10 * spr_dir + sin(window_timer + 2) * 16 * spr_dir, y, "dash");
				}
				if shield_pressed && (!free || has_airdodge) && !rune_menu.state{
					can_shield = true;
					sound_stop(phone_stopped_sounds[0]);
					if nspecial_stamina_stored && attack_had_spear sound_stop(phone_stopped_sounds[1]);
				}
				else if (jump_pressed || can_tap_jump() && tap_jump_pressed) && (!free || djumps == 0) && !rune_menu.state{
					can_jump = true;
					sound_stop(phone_stopped_sounds[0]);
					if nspecial_stamina_stored && attack_had_spear sound_stop(phone_stopped_sounds[1]);
				}
				else if window_timer == phone_window_end{
					sound_stop(phone_stopped_sounds[0]);
					if nspecial_stamina_stored && attack_had_spear sound_stop(phone_stopped_sounds[1]);
					spawn_base_dust(x - 16 * spr_dir, y, "dash_start");
					if attack_had_spear{
						hsp	= (free ? -9 : -5) * spr_dir;
						if free{
							vsp = -3;
						}
						spawn_hit_fx(x + 64 * spr_dir, y - 56, vfx_arrow_shoot);
						sound_play(sfx_ssbu_bow_loose);
						
						set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, spears[cur_spear].vfx[0]);
						set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, spears[cur_spear].vfx[1]);
						
						var h = create_hitbox(AT_NSPECIAL, 1 + (spear_durability == 1), x, y - 45);
						h.image_index = cur_spear;
						h.hsp = 32 * spr_dir;
						h.vsp = -3;
						with h proj_angle = point_direction(0, 0, hsp, vsp) - 90 * spr_dir + 180 * (spr_dir == -1);
						
						
						cur_spear = 0;
					}
					else{
						sound_play(sfx_botw_bow_no_arrow);
					}
				}
				break;
			case 3:
				hsp = lerp(hsp, clamp(hsp, -2, 2), 0.25);
				if free{
					vsp -= 0.5 * gravity_speed;
				}
				break;
		}
		break;
	
	case AT_TAUNT:
		if !rune_menu.state{
			iasa_script();
			if window < 3{
				window = 3;
				window_timer = 0;
			}
		}
		break;
	
	case AT_TAUNT_2:
		vsp = min(vsp, 4);
		break;
	
}



if cur_spear switch(attack){
	case AT_UAIR:
	case AT_FSTRONG:
	case AT_USTRONG:
		if window == 1 && window_timer == 1{
			hit_accounted_for = false;
			hitpause_unaccounted_for = false;
		}
		if hitpause && !hit_accounted_for{
			hit_accounted_for = true;
			hitpause_unaccounted_for = true;
			
			if spear_durability == 1{
			}
		}
		if !hitpause && hitpause_unaccounted_for{
			hitpause_unaccounted_for = false;

			spear_durability--;
			if spear_durability == 1{
				instance_create(x, y, "obj_article3");
			}
			if spear_durability == 0{
				var a = instance_create(x, y, "obj_article3");
				a.message_type = 1;
				cur_spear = 0;
				var h2 = spawn_hit_fx(x, y, vfx_spear_break_2);
				var h1 = spawn_hit_fx(x, y, vfx_spear_break);
				
				h1.depth = -7;
				h2.depth = -7;
				
				switch(attack){
					case AT_FSTRONG:
						h1.draw_angle = -90 * spr_dir;
						h1.x += 140 * spr_dir;
						h1.y += -48;
						h2.x += 156 * spr_dir;
						h2.y += -32;
						break;
					case AT_USTRONG:
						h1.y -= 172;
						h2.y -= 172;
						break;
					case AT_UAIR:
						h1.draw_angle = -90 * spr_dir;
						h1.x += 32 * spr_dir;
						h1.y += -96;
						h2.x += 0 * spr_dir;
						h2.y += -96;
						break;
				}
				
				h1.depth = -6;
			}
		}
		break;
}



if rune_menu.state{
	can_move = false;
	can_jump = false;
	can_attack = false;
	can_special = false;
	can_strong = false;
	can_ustrong = false;
	can_shield = false;
	can_wall_jump = false;
}



#define dspecialThrowInputs

if rune_menu.state return;

if attack_pressed || special_pressed || up_strong_pressed || down_strong_pressed{
	if abs(right_down - left_down) spr_dir = right_down - left_down;
	set_window(7);
}

if right_strong_pressed{
	set_window(7);
	spr_dir = 1;
}

if left_strong_pressed{
	set_window(7);
	spr_dir = -1;
}



#define set_window(n_w)

window = n_w;
window_timer = 0;



#define spawn_hitbox_as_melee(atk, num) // from article

// spawn hitboxes
		
var hbox = noone;
	
hbox = create_hitbox(atk, num, round(x), round(y));
hbox.article_owner = self;

hbox.type = 2;
hbox.spr_dir = spr_dir;

return hbox;



#define spawn_base_dust // supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
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
if newdust == noone return newdust;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;