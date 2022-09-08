//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch (attack){
    case AT_JAB:
        //Anti parrystun on jab
        was_parried = false;
        if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_SFX_FRAME) && !hitpause) {
            sound_play(sound_get("sfx_float"))
        }
        if (has_hit_player && window = 3 && window_timer >= 4) {
            can_attack = true;
        }
    break;
    case AT_UTILT:
        if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_SFX_FRAME) && !hitpause) {
            sound_play(asset_get("sfx_forsburn_cape_swipe"))
        }
    break;
    case AT_DTILT:
        if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_SFX_FRAME) && !hitpause) {
            sound_play(sound_get("sfx_float"))
        }
    break;
    case AT_NAIR:
    case AT_BAIR:
    case AT_UAIR:
        if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_SFX_FRAME) && !hitpause) {
            sound_play(sound_get("sfx_float"))
        }
    break;
    case AT_DAIR:
        if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1 && !hitpause) {
            sound_play(asset_get("sfx_swipe_weak1"))
        }
        if (window == 2 && window_timer % 6 == 4 && !hitpause) {
            sound_play(asset_get("sfx_swipe_weak1"))
        }
    break;
    case AT_FSTRONG:
        if (window == 6 && window_timer == 19 && !hitpause) {
            spawn_hit_fx(round(x) + 36 * spr_dir, round(y) - 32, hfx_leaf)
        }
    break;
    case AT_USTRONG:
        if (window == 4 && window_timer == 14 && !hitpause) {
            spawn_hit_fx(round(x) - 36 * spr_dir, round(y) - 32, hfx_leaf)
        }
    break;
    case AT_DSTRONG:
        if (window == 4 && window_timer == 16 && !hitpause) {
            var hfx = spawn_hit_fx(round(x), round(y), hfx_leaf_half)
            hfx.depth = depth - 1;
        }
        if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1 && !hitpause) {
			var dust = spawn_base_dust(round(x + 32), round(y), "dash_start")
			dust.spr_dir = -1;
			var dust = spawn_base_dust(round(x - 32), round(y), "dash_start")
			dust.spr_dir = 1;
        }
    break;
    case AT_NSPECIAL:
    	move_cooldown[AT_NSPECIAL] = 25;
    	move_cooldown[AT_NSPECIAL_2] = 25;
	    can_fast_fall = window >= 3;
    break;
    case AT_NSPECIAL_2:
    	move_cooldown[AT_NSPECIAL] = 25;
    	move_cooldown[AT_NSPECIAL_2] = 25; 
	    can_fast_fall = window >= 3;
	    can_move = can_fast_fall;
	    if (window == 1 && window_timer == 1) {
	    	uspecial_hitstun = false;
	    }
	    
    	if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_SFX_FRAME) && !hitpause) {
			with (oPlayer) {
			    if (("mamizou_mark_id" in self) && mamizou_mark_id != noone) {
			        if (mamizou_mark_id == other.id) {
			        	with (other) {
			        		spawn_hit_fx(floor(other.x), floor(other.y), 311 )
			        	}
			        }
			    }
			}
		    with (obj_article2) {
		        if (("mamizou_mark_id" in self) && mamizou_mark_id == other.id) {	
		        	with (other) {
			        	spawn_hit_fx(floor(other.x), floor(other.y), 311 )
		        	}
		        }
		    }
        }
        if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) {
        	sound_play(sound_get("sfx_smb3_explosion"))
        	sound_play(asset_get("sfx_ell_strong_attack_explosion"))
			with (oPlayer) {
			    if (("mamizou_mark_id" in self) && mamizou_mark_id != noone) {
			        if (mamizou_mark_id == other.id) {
			        	with (other) {
			        		var hbox = create_hitbox(AT_NSPECIAL_2, 1, floor(other.x), floor(other.y));
			        		hbox.spr_dir = other.spr_dir;
			        		hbox.mamizou_enemy = other.id;
			        		spawn_hit_fx(floor(other.x), floor(other.y), hfx_leaf_heavy)
			        	}
			        	mamizou_mark_id = noone;
			        }
			    }
			}
			
		    with (obj_article2) {
		        if (("mamizou_mark_id" in self) && mamizou_mark_id == other.id) {	
		        	with (other) {
		        		var hbox = create_hitbox(AT_NSPECIAL_2, 1, floor(other.x), floor(other.y));
		        		hbox.spr_dir = other.spr_dir;
		        		hbox.mamizou_enemy = other.id;
		        		spawn_hit_fx(floor(other.x), floor(other.y), hfx_leaf_heavy)
		        	}
		        	mamizou_mark_id = noone;
		        }
		    }
        }
        
	    if (window == 1 && window_timer == 1 && free) {
	    	hsp /= 2;
	    	vsp -= 2;
	    }
    break;
    case AT_FSPECIAL:
	    can_fast_fall = false;
	    can_move = false;
	    move_cooldown[AT_FSPECIAL] = 25;
	    trigger_wavebounce();
		var window_length = get_window_value(attack, 1, AG_WINDOW_LENGTH);
		var window_frames = get_window_value(attack, 1, AG_WINDOW_ANIM_FRAMES);
		var window_mul = ceil(window_length / window_frames);
		
	    if (window == 1 && window_timer == 1) {
	    	follower_held = noone
	    }
	    
		if (window == 1 && window_timer == 1 && free && !hitpause) {
			vsp += 1;
		}
	    
	    var num_fellas = 0;
	    with (obj_article2) {
	    	if (player == other.player && player_id == other.id) {
	    		num_fellas++;
	    	}
	    }
	    
	    if (window == 1 && window_timer == window_mul && !hitpause && num_fellas < follower_max) {
			follower_held = instance_create(round(x), round(y), "obj_article2");
			follower_held.x = round(x + 36 * spr_dir);
			follower_held.y = round(y - 34);
			follower_held.state = PS_SPAWN;
			follower_held.spr_dir = spr_dir;
			follower_held.enem_id = 0;
	    }
	    
	    if (window == 1 && instance_exists(follower_held)) {
	    	if (window_timer < window_mul * 2) {
				follower_held.x = round(x + 36 * spr_dir);
				follower_held.y = round(y - 8);
	    	}
	    	else if (window_timer < window_mul * 3) {
				follower_held.x = round(x - 28 * spr_dir);
				follower_held.y = round(y - 72);
	    	}
	    	else if (window_timer < window_mul * 4) {
				follower_held.x = round(x - 32 * spr_dir);
				follower_held.y = round(y - 72);
	    	}
	    	else if (window_timer < window_mul * 5) {
				follower_held.x = round(x - 30 * spr_dir);
				follower_held.y = round(y - 72);
	    	}
	    	else if (!hitpause) {
	            var ang = follower_angle_def;
	            if (up_down) ang = follower_angle_max;
	            if (down_down) ang = follower_angle_min;
	            
	            if (free) vsp += -2;
	            
				follower_held.x = round(x + 30 * spr_dir);
				follower_held.y = round(y - 12);
    			follower_held.hitstun = 60;
				follower_held.hitstun_full = 60;
				follower_held.state_timer = 2;
				follower_held.hitstop = 0;
				follower_held.next_state = PS_HITSTUN;
				follower_held.kb_dir = ang;
				follower_held.orig_knock = follower_throw_speed;
				follower_held.state_timer = 0;
				follower_held.spr_dir = spr_dir;
	    		follower_held = noone
	    	}
	    }
		if (free) {
			grav = window < 3 ? 0.3 : 0.5;
			vsp = min(vsp, 3.6);
		}
    break;
    case AT_USPECIAL:
	    can_fast_fall = window == 3;
	    
	    if (window == 1 && window_timer == get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH) && !hitpause) {
	    	hsp *= 0.5;
	    }
    break;
    case AT_USPECIAL_2:
	    can_fast_fall = false;
	    if (window == 1) {
	    	uspecial_hitstun = false;
	    }
	    if (window == 1 && window_timer == get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH) && !hitpause) {
	    	hsp *= 0.5;
	    }
	    var mamizou_marked_temp = noone;
	    
	    if (window > 1) {
			with (oPlayer) {
			    if (("mamizou_mark_id" in self) && mamizou_mark_id != noone) {
			        if (mamizou_mark_id == other.id) {
			        	mamizou_marked_temp = id;
			        }
			    }
			}
			if (!instance_exists(mamizou_marked_temp)) {
			    with (obj_article2) {
			        if (("mamizou_mark_id" in self) && mamizou_mark_id == other.id) {	
			        	mamizou_marked_temp = id;
			        }
			    }
			}
	    }
	    
	    if (window == 2 && window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH) && !hitpause) {
	    	var fx = spawn_hit_fx(round(x), round(y - 32), hfx_log);
	    	fx.spr_dir = spr_dir;
		    if (instance_exists(mamizou_marked_temp)) {
		    	x = round(mamizou_marked_temp.x - 32 * mamizou_marked_temp.spr_dir)
		    	y = round(mamizou_marked_temp.y - 48)
		    	spr_dir = (mamizou_marked_temp.x < x) ? -1 : 1;
		    	djumps = 0;
		    }
		    else {
		    	window = 4;
		    	window_timer = 0;
		    }
		    sound_play(sound_get("sfx_smb3_explosion"));
	    }
	    if (window == 3) {
	    	hsp = 0;
	    	vsp = 0;
	    	grav = 0;
	    	can_move = false;
			var cancel_hitstun =  floor(get_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH) / 2);
			var cancel_no_hitstun =  floor(get_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH) / 1.5);
	    	can_attack = window_timer >= (uspecial_hitstun ? cancel_hitstun : cancel_no_hitstun);
	    	can_jump = can_attack;
	    	can_shield = can_attack;
	    	if (instance_exists(mamizou_marked_temp)) {
	    		if (mamizou_marked_temp.hitstun > 0) {
	    			uspecial_hitstun = true;
	    		}
	    		with (mamizou_marked_temp) {
			        if (("mamizou_mark_id" in self) && mamizou_mark_id == other.id) {	
			        	mamizou_mark_id = noone;
			        }
		        }
	    	}
	    }
    break;
    case AT_DSPECIAL:
    	can_move = false;
    	can_fast_fall = false;
    	move_cooldown[AT_DSPECIAL] = 20;
    	if (window == 1 && window_timer == 1) {
    		dspecial_countered = noone;
    	}
    	
    	if (window == 2 && !hitpause) {
			if (instance_exists(enemy_hitboxID) && enemy_hitboxID > 0 && !was_parried) {
				if (enemy_hitboxID.type != 2) {
					dspecial_counter_active = false;
					var counter = enemy_hitboxID.player_id;
					if (instance_exists(counter)) {
					    orig_knock = 0;
					    should_make_shockwave = false;
					    spr_dir = counter.x < x ? -1 : 1;
						set_attack(AT_DSPECIAL_2);
						sound_play(asset_get("sfx_zetter_shine_charged"));
						sound_play(asset_get("sfx_gus_land"));
						var fx = spawn_dust_fx(round(x), round(y - 64), asset_get("fx_parry_new"), 8);
						fx.depth = 5;
						hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
						window = 1;
						window_timer = 0;
					    hitstop = 8;
					    hitstop_full = hitstop;
					    old_vsp = 0;
					    old_hsp = 0;
					    hitpause = true;
						counter.has_hit_player = false;
						counter.hitstop = hitstop;
						counter.hitstop *= 2;
						counter.hitstop_full *= counter.hitstop;
						counter.hitpause = true;
						counter.old_vsp = 0;
						counter.old_hsp = 0;
						if (("mamizou_mark_id" in counter) && instance_exists(counter.mamizou_mark_id)) {	
							dspecial_countered = counter;
						}
					}
				}
				else {
					attack_invince = 0;
					invincible = 0;
				}
			}
    	}
	    
	    if (window == 3 && window_timer >= 4) {
	    	grav = 0.25;
	    	vsp = min(vsp, 6);
	    }
	    else {
	    	hsp = 0;
	    	vsp = 0;
	    	grav = 0;
	    }
	break;    
    case AT_DSPECIAL_2:
    	can_move = false;
    	can_fast_fall = false;
    	move_cooldown[AT_DSPECIAL] = 20;
    	hsp = 0;
    	vsp = 0;
    	grav = 0;
	    
	    if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) {
	    	var fx = spawn_hit_fx(floor(x + 32 * spr_dir), floor(y - 48), hfx_dspec_smoke);
	    	fx.depth = depth - 3;
	    	djumps = 0;
	        if (instance_exists(dspecial_countered)) {
	    		sound_play(sound_get("sfx_smb3_explosion"));
	        	window = 4;
	        	window_timer = 0;
	        }
	    }
    break;
    case AT_TAUNT:
	    if (window == 1 && window_timer == 1)
	    {
	    	taunt_loops = 0;
	    }
	    if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause)
	    {
	    	taunt_loops++;
	    	if (taunt_loops >= 2 && !taunt_down) {
	    		window = 3;
	    		window_timer = 0;
	    	}
	    	else if (taunt_loops > 5 && taunt_down) {
	    		window = 4;
	    		window_timer = 0;
	    	}
	    }
	    if (window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause)
	    {
	    	taunt_loops++;
	    	if (taunt_loops >= 7 && !taunt_down) {
	    		window = 3;
	    		window_timer = 0;
	    	}
	    	else if (taunt_loops > 10 && taunt_down) {
	    		window = 6;
	    		window_timer = 0;
	    		taunt_loops = 0;
	    	}
	    }
	    if (window == 7 && window_timer == get_window_value(attack, window, AG_WINDOW_SFX_FRAME)  && !hitpause)
	    {
	    	shake_camera(3, 6);
	    	take_damage(player, -1, 1);
	    }
	    if (window == 8 && !hitpause)
	    {
	    	if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) )
	    		taunt_loops++;
	    		
	    	if (taunt_loops >= 2 && !taunt_down) {
	    		window = 9;
	    		window_timer = 0;
	    	}
	    }
    break;
}
#define spawn_base_dust
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
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

//This code lets you add a smash 4 styled wavebouce to your attacks
//Just write "trigger_wavebounce();" under the case statement for the attack you want to wavebounce
#define trigger_wavebounce() 
{
	if ((left_down and state_timer <= 5 and spr_dir == 1) or (right_down and state_timer <= 5 and spr_dir == -1) and (b_reversed == false)) {
    	hsp *= -1;
    	spr_dir *= -1;
    	b_reversed = true;
	} else if (state_timer == 6) {
    	b_reversed = false;
	}
}