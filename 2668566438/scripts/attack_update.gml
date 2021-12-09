//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}



// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	//Credit to FelixBlobDev	
	case AT_JAB:
	switch(window){
		case 3:
			if(attack_down){
				window = 4;
				window_timer = 0;
			}
		break;
		case 4:
		case 1:
			if(window_timer == phone_window_end){
				array_push(phone_dust_query, [x, y, "dash", spr_dir]);
			}
		break;
		case 6:
			if(attack_down){
				window = 7;
				window_timer = 0;
			}
		break;
		case 7:
			if(window_timer == 6){
	    		if(!attack_down || was_parried){
					window = 9;
					window_timer = 0;
				}
	    	}
			if(window_timer == phone_window_end){
				array_push(phone_dust_query, [x, y, "dash", spr_dir]);
			}
		break;
		case 8:
			if(window_timer == 6){
	    		if(attack_down && !was_parried){
	    		    window = 7;
	    	    	window_timer = 0;
	    		}
	    	}
			if(window_timer == 6){
	    		if(!attack_down || was_parried){
					window = 9;
					window_timer = 0;
				}
	    	}
			if(window_timer == phone_window_end){
				array_push(phone_dust_query, [x, y, "dash", spr_dir]);
			}
		break;
		case 9:
			if(window_timer == phone_window_end){
				array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			}
		break;
	}
	break;
	case AT_FTILT:
		if window == 1 && window_timer == phone_window_end{
			sound_play(asset_get("sfx_swipe_heavy2"));
		}
	case AT_DTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		if(attack == AT_DTILT){
			if window == 1 && window_timer == 1{
				sound_play(sound_get("pkm_sfx_knockoff"))
			}
		}
		break;
	case AT_UTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		break;
	case AT_FSTRONG:
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			sound_play(asset_get("sfx_swipe_heavy1"));
		}
		break;
	case AT_DATTACK:
		if (window == 2 || window == 3) && window_timer % 2 == 0 && !hitpause{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
	break;
	case AT_DSTRONG:
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			if !hitpause{
				shake_camera(5,5);
				spawn_hit_fx(x+36*spr_dir,y,305);
				spawn_hit_fx(x+36*spr_dir,y,192);
			}		
		}
		if window == 3 && window_timer == 1 && !hitpause && !has_hit_player{
			shake_camera(5,5);
			sound_play(asset_get("sfx_blow_heavy2"));
			sound_play(asset_get("sfx_blow_heavy1"));
		}
		soft_armor = (window == 2 || window == 3 && window_timer <= 4)?4:0;
		break;
	case AT_DAIR:
		can_wall_jump = true;
		if(window != 4){
			can_float = false;
			hsp = hsp*0.5;
			if(!free){
		    	window_timer = 0;
		    	window = 4;
		    	can_float = true;
			}
		}
	    if(window == 3){
	    	if(window_timer >= 25){
		        can_jump = true;
		        can_shield = true;
				if(jump_pressed){
					can_float = true;
					set_state(PS_IDLE_AIR);
				}
		        if(is_special_pressed(DIR_UP) && move_cooldown[AT_USPECIAL] == 0){
		            set_attack(AT_USPECIAL);
		        }	    		
	    	}
	    	if(window_timer == 56){
	    		if(free){
			    	set_state(PS_IDLE_AIR);
	    		}
	    		can_float = true;
	    	}
	    }
	    if window == 4 && window_timer == 1 && !hitpause{
	    	if(!free){
	    		array_push(phone_dust_query, [x, y, "land", spr_dir]);
	    		sound_play(asset_get("sfx_land"));
	    	}
	    	destroy_hitboxes();	
	    	can_float = true;
	    }
	break;
	case AT_USTRONG:
	can_fast_fall = false;
		if window == 1{
			if strong_charge == 30{
				spawn_hit_fx(x,y-30,305);
			}
		}
		if window == 2{
			if window_timer == 1{
				//sound_play(sound_get("pkm_sfx_gigaimpact"))
				array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
				array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
				array_push(phone_dust_query, [x, y, "dash", spr_dir]);
				array_push(phone_dust_query, [x, y, "dash", -spr_dir]);
			}
			if window_timer == 7{
				if(strong_charge < 30){
					vsp -= 10;
				}else{
					vsp -= 12;
				}
				sound_play(asset_get("sfx_jumpground"))
				sound_play(sound_get("wing2"))
				sound_play(asset_get("sfx_swipe_heavy1"))
			}
		}
		if window == 3 || window == 4{
			hsp = clamp(hsp, -4, 4)
		}
		break;
	
	
	
	case AT_NSPECIAL:
	hsp *= .95;
	vsp *= .95;
	switch(window){
		case 1:
		    if (charge_length < 80) {
		    	charge_max = (80 - charge_length);
		    } else {
			    window = 3;
			    window_timer = 0;
		    }
		break;
		case 2:
		    charge_length++;
		    if (!special_down) {
			    window = 3;
			    window_timer = 0;
		    }
		    if(shield_pressed){
		    	window = 4;
		    	window_timer = 0;
		    	sound_stop(asset_get("sfx_frog_fspecial_charge_loop"));
		    }
		    if(charge_length == 40){
		    	var chargefx = spawn_hit_fx(x - 30*spr_dir,y - 30,fx_charge1);chargefx.depth = depth -4;
		    	sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"))
		    }else if(charge_length == 70){
		    	var chargefx = spawn_hit_fx(x - 30*spr_dir,y - 30,fx_charge2);chargefx.depth = depth -4;
		    	sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"))
		    }
		break;
		case 3:
		    if (window_timer == 1) {
		    	sound_stop(asset_get("sfx_frog_fspecial_charge_loop"))
		    	create_hitbox(AT_NSPECIAL, 1, floor(x + 35*spr_dir), floor(y-32));
		    	if(charge_length >= 40){
		    		create_hitbox(AT_NSPECIAL, 2, floor(x + 35*spr_dir), floor(y-32));
		    		sound_play(asset_get("sfx_swipe_medium1"))
		    	}
		    	if(charge_length >= 70){
		    		create_hitbox(AT_NSPECIAL, 3, floor(x + 35*spr_dir), floor(y-32));
		    	}
		    }
		    if(window_timer == 2){
		    	if(charge_length >= 70){
		    		sound_play(asset_get("sfx_swipe_medium1"));
		    	}
		    }
		    if (window_timer > 2) {
		    	charge_length = 0;
		    }
		break;
	}
	break;
	
	
	
	case AT_FSPECIAL:
		can_move = false;
		can_fast_fall = false;
		switch(window){
			case 1:
				hsp *= 0.5;
				vsp *= 0.5;
				break;
			case 2:
				can_wall_jump = true;
				hsp += 1 * spr_dir;
				hsp = clamp(hsp, -8, 8);
				if(up_down){
					vsp = ease_sineIn(0,-5,window_timer, 15);
					spr_angle = lerp(0, 45*spr_dir, 0.4);
				}else if(down_down){
					vsp = ease_sineIn(0,5,window_timer, 15);
					spr_angle = lerp(0, -45*spr_dir, 0.4);	
					if(!free){
						vsp = -4;
						hsp = -4*spr_dir;
						window = 3;
						window_timer = 0;
					}
				}
				else{
					vsp = 0;
					spr_angle = lerp(0, 0, 0.4);
				}
				if(position_meeting(x+60*spr_dir,y,asset_get("par_block")) && free){
					vsp = -4;
					hsp = -4*spr_dir;
					window = 3;
					window_timer = 0;						
				}
				if(instance_exists(fspecial_target))
					Grab(50,0,4,4,fspecial_target);
				vsp = clamp(vsp, -5, 5);
				break;
			case 3:
				hsp *= .95;
				vsp *= .8;
				can_wall_jump = true;
				fspecial_target = noone;
				move_cooldown[AT_FSPECIAL] = 999;
				spr_angle = 0;
				break;
		}
		break;
	
	
	
	case AT_USPECIAL:
		can_move = false;
		can_fast_fall = false;
		can_wall_jump = true;
		fall_through = true;
		move_cooldown[AT_USPECIAL] = 999;
		if(window <= 4){
			can_float = false;
		}else{
			can_float = true;
		}
		if(has_hit_player && window < 4){
			Grab(0,0,2,2,hit_player_obj);
		}
		if(window == 1 && !hitpause && window_timer == 1){
			sound_play(asset_get("sfx_swipe_heavy2"));
			times_through = 0;
		}
		if(window == 5 && !hitpause && window_timer == 1){
			shake_camera(8,8);
			if(has_hit_player){
				take_damage(player, -1, 5);
			}
		}
		if(window == 4){
			if(window_timer % 3 == 0){
				spawn_hit_fx(x,y,fx_flame_trail);
			}
			if(window_timer == 12){
				times_through++;
			}
			if(times_through >= 2){
				can_shield = true;
				can_jump = true;
				can_float = true;
				if(floating){
					hsp = 0;
					set_state(PS_IDLE_AIR);
				}
			}
		}
		break;
	
	
	
	case AT_DSPECIAL:
		if(window == 1 && window_timer == phone_window_end){
			if(!instance_exists(sludge_hb) && !was_on_puddle)
				sludge_hb = create_hitbox(AT_DSPECIAL,1,floor(x + 35 *spr_dir),floor(y - 40));			
		}
		if(window == 2){
			if(window_timer == 1 && !hitpause && instance_exists(puddle_hb) && !on_puddle)
				move_puddle = true;
		}
		if(on_puddle && window == 1 && window_timer == 1 && !hitpause){
			window = 4;
			window_timer = 0;
		}
	    move_cooldown[AT_DSPECIAL] = 45;
		break;
	
	case AT_NAIR:
		if(window == 2 && window_timer < 6 && has_hit_player){
			Grab(0,0,8,8,hit_player_obj);
		}
	break;
	
	case AT_TAUNT:
		if !taunt_down && window == 2{
			window = 3;
			window_timer = 0;
		}
		break;	

	case AT_TAUNT_2:
		if !taunt_down && window == 2{
			window = 3;
			window_timer = 0;
		}
		if window_timer == 1 && window == 1{
			shake_camera(15,15);
			if(get_player_color(player) == 26){
				sound_play(sound_get("bumble"));
			}else{
				sound_play(sound_get("this_pic_goes_so_hard"));
			}
		}
		break;
}
//PUDDLE ABSORB LOGIC
if(instance_exists(puddle_hb)){
	switch(attack){
		default:
			if(on_puddle && !was_on_puddle && puddle_hb.state == 1 && (attack != AT_TAUNT || AT_TAUNT_2)){
				with(puddle_hb){
					state = 3;
					state_timer = 0;
				}was_on_puddle = true;
				sound_play(asset_get("sfx_orca_absorb"));
			}
		break;
		case AT_TAUNT_2:
		case AT_TAUNT:
			return;
		break;
		case AT_DTILT:
			if(window == 1){
				reset_hitbox_value(AT_DSTRONG,3,HG_PROJECTILE_HSPEED);
				reset_hitbox_value(AT_DSTRONG,3,HG_PROJECTILE_VSPEED);			
			}
			if(window == 2 && window_timer == 1 && !hitpause){
				if(on_puddle && puddle_hb.state == 1){
					with(puddle_hb){
						state = 3;
						state_timer = 0;
					}sound_play(asset_get("sfx_orca_absorb"));	
					was_on_puddle = true;
					create_hitbox(AT_DSTRONG,3,x+30*spr_dir,y-10);
				}else{
					with(pHitBox){
						if(place_meeting(x,y,player_id.puddle_hb) && "amBeedrill" in player_id){
							if(type == 1){
								if(other.puddle_hb.state == 1){
									other.puddle_hb.state = 3;
									other.puddle_hb.state_timer = 0;
								}
								other.was_on_puddle = true;
								sound_play(asset_get("sfx_orca_absorb"));	
								create_hitbox(AT_DSTRONG,3,x+30*spr_dir,y-10);
							}
						}
					}					
				}
			}
		break;
		case AT_UTILT:
			if(window == 1){
				reset_hitbox_value(AT_DSTRONG,3,HG_PROJECTILE_HSPEED);
				reset_hitbox_value(AT_DSTRONG,3,HG_PROJECTILE_VSPEED);
			}
			if(window == 2 && window_timer == 1 && !hitpause && on_puddle && puddle_hb.state == 1){
				with(puddle_hb){
					state = 3;
					state_timer = 0;
				}sound_play(asset_get("sfx_orca_absorb"));	
				was_on_puddle = true;
				set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_VSPEED, -9);
				set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_HSPEED, 4);
				create_hitbox(AT_DSTRONG,3,x+30*spr_dir,y-10);
			}
			if(window == 3){
				reset_hitbox_value(AT_DSTRONG,3,HG_PROJECTILE_HSPEED);
				reset_hitbox_value(AT_DSTRONG,3,HG_PROJECTILE_VSPEED);				
			}
		break;
		case AT_USTRONG:
			if(window == 1){
				reset_hitbox_value(AT_DSTRONG,3,HG_PROJECTILE_HSPEED);
				reset_hitbox_value(AT_DSTRONG,3,HG_PROJECTILE_VSPEED);
			}
			if(window == 2 && window_timer == 1 && !hitpause && on_puddle && puddle_hb.state == 1){
				with(puddle_hb){
					state = 3;
					state_timer = 0;
				}sound_play(asset_get("sfx_orca_absorb"));	
				was_on_puddle = true;
				if(strong_charge < 30){
					set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_VSPEED, -9);
					set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_HSPEED, 0);
				}else{
					set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_VSPEED, -11);
					set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_HSPEED, 0);					
				}
				create_hitbox(AT_DSTRONG,3,x+0*spr_dir,y-10);
			}
			if(window == 3){
				reset_hitbox_value(AT_DSTRONG,3,HG_PROJECTILE_HSPEED);
				reset_hitbox_value(AT_DSTRONG,3,HG_PROJECTILE_VSPEED);				
			}
		break;
		case AT_DSTRONG:
			if(window == 1){
				set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_HSPEED, 10);
				set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_VSPEED, -4);				
			}
			if(window == 5){
				reset_hitbox_value(AT_DSTRONG,3,HG_PROJECTILE_HSPEED);
				reset_hitbox_value(AT_DSTRONG,3,HG_PROJECTILE_VSPEED);			
			}
			if(window == 3 && window_timer == 1 && !hitpause){
				if(on_puddle && puddle_hb.state == 1){
					with(puddle_hb){
						state = 3;
						state_timer = 0;
					}sound_play(asset_get("sfx_orca_absorb"));	
					was_on_puddle = true;
					create_hitbox(AT_DSTRONG,3,x+30*spr_dir,y-10);
				}else{
					with(pHitBox){
						if(place_meeting(x,y,player_id.puddle_hb) && "amBeedrill" in player_id){
							if(type == 1){
								if(other.puddle_hb.state == 1){
									other.puddle_hb.state = 3;
									other.puddle_hb.state_timer = 0;
								}
								other.was_on_puddle = true;
								sound_play(asset_get("sfx_orca_absorb"));	
								create_hitbox(AT_DSTRONG,3,x+30*spr_dir,y-10);
							}
						}
					}					
				}
			}
		break;
	}
}
if(was_on_puddle && window == get_attack_value(attack, AG_NUM_WINDOWS) && attack != AT_DSPECIAL && !hitpause){
	was_on_puddle = false;
}
#define beam_clash_logic

if !beam_clash_buddy.doing_goku_beam{
	beam_clash_buddy.beam_clash_buddy = noone;
	beam_clash_buddy = noone;
}
else{
	if beam_clash_timer >= beam_clash_timer_max{
		var winner = noone;
		if beam_length > beam_clash_buddy.beam_length{
			winner = self;
		}
		if beam_length < beam_clash_buddy.beam_length{
			winner = beam_clash_buddy;
		}
		if winner == self{
			window = 5;
			window_timer = 0;
		}
		else{
			beam_juice = 0;
		}
		if winner == beam_clash_buddy{
			
		}
		else{
			beam_clash_buddy.beam_juice = 0;
		}
	}
	else{
		beam_clash_timer++;
		if special_pressed{
			clear_button_buffer(PC_SPECIAL_PRESSED);
			beam_length += 32;
			beam_clash_buddy.beam_length -= 32;
			beam_juice = min(beam_juice + 20, beam_juice_max);
			beam_clash_buddy.beam_juice = max(beam_clash_buddy.beam_juice - 10, 10);
			sound_play(sfx_dbfz_kame_charge, false, noone, 1, 1 + beam_juice * 0.001);
		}
	}
}



#define spawn_nspecial_hitbox(num)

if hitpause && num == 1 return;

attack_end();

var x1 = 72;
var y1 = -20 + lengthdir_y(32, beam_angle);

switch((abs(lengthdir_y(1, beam_angle)) > abs(lengthdir_y(1, 15))) * sign(lengthdir_y(1, beam_angle))){
	case 1: // down
		x1 = 74;
		y1 = -6;
		break;
	case -1: // up
		x1 = 60;
		y1 = -72;
		break;
}

// x1 += lengthdir_x(beam_length - 32 * !has_hit, beam_angle) * spr_dir;
// y1 += lengthdir_y(beam_length - 32 * !has_hit, beam_angle);

var cur_x = x1;
var cur_y = y1;

set_hitbox_value(attack, num, HG_WIDTH, 64 + 16 * has_hit);
set_hitbox_value(attack, num, HG_HEIGHT, 64 + 16 * has_hit);

var ld_x = lengthdir_x(32, beam_angle) * spr_dir;
var ld_y = lengthdir_y(32, beam_angle);

for (var i = 0; i * 32 < beam_length && i < 32 && cur_x == clamp(cur_x, phone_blastzone_l, phone_blastzone_r); i++){
	if i % 3 == 0 || (i+1) * 32 >= beam_length{
		if (i+1) * 32 >= beam_length{
			set_hitbox_value(attack, num, HG_WIDTH, 64 + 64 * has_hit);
			set_hitbox_value(attack, num, HG_HEIGHT, 64 + 64 * has_hit);
		}
		beam_newest_hbox = create_hitbox(attack, num, round(x + cur_x * spr_dir), round(y + cur_y));
		beam_newest_hbox.x_pos = round(cur_x * spr_dir);
		beam_newest_hbox.y_pos = round(cur_y);
	}
	cur_x += ld_x;
	cur_y += ld_y;
}



#define spawn_base_dust // written by supersonic
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
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;


#define Grab(xpos, ypos, xsmooth, ysmooth, target)
{
    if(target.hitstun > 0){
    if (xsmooth != 0)
    {
        target.x += ((x + spr_dir * xpos) - target.x)/xsmooth;
        target.hitpause = true;
        target.hitstop = 1;
    }
    if (ysmooth != 0)
    {
        target.y += ((y + ypos) - target.y)/ysmooth;
        target.hitpause = true;
        target.hitstop = 1;
    }
    }
}