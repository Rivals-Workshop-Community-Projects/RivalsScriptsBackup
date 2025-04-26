//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}





switch attack {
	case AT_UTILT:
	if (window == 1 and window_timer > 4) or window == 2 or (window == 3 and window_timer < 6) {
		hud_offset = floor(lerp(hud_offset, 160, .1));
	}
	break;
	case AT_DAIR:
		if window == 1 and window_timer == 9 and !hitpause {
			sound_play(sound_get("sfx_deracine_ground_rustle"), false, noone, 0.85, 0.83)
		}
	break;
	case AT_BAIR:
		if window == 2 and window_timer == 4 and !hitpause {
			sound_play(sound_get("sfx_deracine_ground_rustle"), false, noone, 0.9, 0.87)
		}
	break;
	case AT_DATTACK:
	if window == 1 && window_timer == 1 and !hitpause {
            sound_play(sound_get("sfx_deracine_ground_stop"), false, noone, 0.8, 1.0)
    }
    
    if window == 1 and window_timer == 5 and !hitpause {
    	sound_play(sound_get("sfx_deracine_ground_rustle"), false, noone, 0.9, 0.9)
    }
	break;
	
	case AT_FTILT:
		if window == 1 && window_timer == 3 and !hitpause {
				sound_play(asset_get("sfx_swipe_heavy2"), false, noone, 1, 1.0)
                sound_play(sound_get("sfx_deracine_energy3"), false, noone, 1, 1)
            }
	break;
	case AT_DTILT:
		if window == 2 and window_timer == 1 and !hitpause {
			sound_play(sound_get("sfx_deracine_swing2"), false, noone, 0.8, 0.93)
		}
		if window == 2 && window_timer == 2 and !hitpause {
                sound_play(sound_get("sfx_deracine_ground_rustle"), false, noone, 1, 1.1)
                sound_play(asset_get("sfx_kragg_roll_turn"), false, noone, 0.8, 1.2)
                
            }
	break;
	case AT_USTRONG:
		if window > 1 and window < 4 or (window == 4 and window_timer < 9) {
			hud_offset = floor(lerp(hud_offset, 420, .1));
		}
	
		if window == 2 && window_timer == 1 and !hitpause {
                sound_play(asset_get("sfx_swipe_heavy1"))
                
            }
           
        if window == 2 and window_timer == 4 and !hitpause {
        	sound_play(asset_get("sfx_orca_crunch"), false, noone, 0.8, 0.9)
        	sound_play(sound_get("sfx_deracine_gore3"), false, noone, 0.8, 1.1)
        }
	break;
	case AT_DSTRONG:
        
		if (window == 1 and window_timer > 6) or window == 2 or window == 3 or (window == 4 and window_timer < 5){
			hud_offset = floor(lerp(hud_offset, 200, .1));
		}
		
		if window == 1 and window_timer == 1 and !hitpause {
			sound_play(sound_get("sfx_deracine_ground_rustle"), false, noone, 0.9, 0.8)
		}
		if window == 2 && window_timer == 2 and !hitpause {
                sound_play(asset_get("sfx_kragg_roll_turn"), false, noone, 0.9, 0.9)
            }
	break;
	
	case AT_FAIR:
		if window == 1 and window_timer == 1 and !hitpause {
			sound_play(sound_get("sfx_deracine_energy2"), false, noone, 1, 1)
		}
		
		if window == 1 and window_timer == 5 and !hitpause {
			sound_play(asset_get("sfx_burnapplied"), false, noone, 1, 1.1)
		}
		if window == 3 && window_timer == 2 && !hitpause{
			if has_hit{
				var vfx = spawn_hit_fx( x, y, fair_vfx_2 );
        		vfx.depth -= 20;
			}else{
                var vfx = spawn_hit_fx( x, y, fair_vfx_1 );
        		vfx.depth -= 20;
            }
        }
        break;
    case AT_UAIR:
		if (window == 1 and window_timer > 4) or window == 2 or (window == 3 and window_timer < 6) {
			hud_offset = floor(lerp(hud_offset, 280, .1));
		}
		
	    if window == 1 && window_timer == 7 and !hitpause {
	    	sound_play(asset_get("sfx_swipe_heavy2"))
	    }
	    
		if window == 2 && window_timer == 5 && !hitpause{
			if has_hit{
				var vfx = spawn_hit_fx( x, y, uair_vfx_2 );
        		vfx.depth -= 20;
			}else{
                var vfx = spawn_hit_fx( x, y, uair_vfx_1 );
        		vfx.depth -= 20;
            }
        }
        break;
	
    case AT_NSPECIAL_AIR:
        if window == 1 && window_timer == 1 and !hitpause {
                sound_play(asset_get("sfx_hod_nspecial"), false, noone, 0.8, 1.1)
            }
        if window == 2 and window_timer == 1 and !hitpause {
            with minion_obj {
                state = PS_PARRY
                state_timer = 0;
                lock_state = true;
                minion_sprite_index = player_id.minion_state_info[? state].sprite;
                minion_image_index = 0;
            }
        }
    break;
    case AT_NSPECIAL_2:
        if window == 1 && window_timer == 1 and !hitpause {
                sound_play(asset_get("sfx_hod_nspecial"), false, noone, 0.8, 1.0)
            }
        if window == 2 and window_timer == 1 and !hitpause {
            
            with minion_obj {
                attack = 4 + (incubation == incubation_max); // perform weak scream.
                has_hit = false;
                window = 0;
                window_timer = 0;
                minion_sprite_index = minion_attacks[ attack ].sprite
                minion_image_index = 0;
                state = PS_ATTACK_GROUND;
                state_timer = 0;
                lock_state = true;                   
            }
         
        }
    break;
    case AT_NSPECIAL:
    case AT_EXTRA_1:
        move_cooldown[AT_EXTRA_1] = 20;
        switch window {
            case 1:
            if window_timer == 8 and !hitpause {
            	sound_play(sound_get("sfx_deracine_scream"), false, noone, 0.8, 1.0)
            }
            if window_timer == 13 and !hitpause {
                sound_play(asset_get("sfx_hod_fspecial"), false, noone, 0.7, 1.2)
                sound_play(sound_get("sfx_deracine_energy2"), false, noone, 1, 0.9)
            }
            break
            case 3:
                var ground = collision_line_point(x, y-6, x, y+1000, asset_get("par_block"), 0, 1);
                var plat = collision_line_point(x, y-6, x, y+1000, asset_get("par_jumpthrough"), 0, 1);
                
                var ground_original = noone;
                var ground_invalid = false;
                
                if ground[0] and plat[0] {
                    if abs(y - get_instance_y(plat[0])) <= abs(y - get_instance_y(ground[0]))
                    {
                        ground_original = plat[0]
                    }
                    else {
                        ground_original = ground[0]
                    }
                }
                else if ground[0] {
                    ground_original = ground[0]
                }
                else if plat[0] {
                    ground_original = plat[0]
                }
                
                if ground_original == noone or (ground_original != noone and !instance_exists(ground_original))
                {
                    ground_invalid = true;
                }
            
                if window_timer != 1 || ground_invalid break;
                
                if minion_spawn_position.target_player == noone {
                    minion_spawn_position.target_player = find_closest_decaying_player(x);
                }
                
                if minion_spawn_position.target_player == noone break;
                
                minion_spawn_position.active = true;
                sound_play(asset_get("sfx_ori_glide_start"), false, noone, 1, 1.2)
                sound_play(asset_get("sfx_abyss_portal_spawn"), false, noone, 0.8, 1.2)
                sound_play(asset_get("sfx_kragg_roll_start"), false, noone, 0.6, 0.9)
                
                var dir = sign(minion_spawn_position.target_player.x - x);
                if dir == 0 dir = 1;
                
                minion_spawn_position.x_scale = dir; 
                minion_spawn_position.start_distance = x;
                minion_spawn_position.current_distance = x;
                minion_spawn_position.stop_distance = minion_spawn_position.target_player.x;
                minion_spawn_position.y_pos = get_instance_y(ground_original);

            break;
        }
        
    break;
    case AT_FSPECIAL:
    	move_cooldown[AT_FSPECIAL] = 60;
        move_cooldown[AT_FSPECIAL_AIR] = 60;
        if window == 1 && window_timer ==1 and !hitpause {
            sound_play(sound_get("sfx_deracine_energy"), false, noone, 0.7, 1)
        }
        
        if window == 1 and window_timer == 5 and !hitpause {
        	sound_play(sound_get("sfx_deracine_energy2"), false, noone, 0.8, 1)
        }
        
        if window == 1 and window_timer == 11 and !hitpause {
        	sound_play(sound_get("sfx_deracine_swing1"), false, noone, 0.8, 1)
        	
        }
        
        if window == 2 and window_timer == 2 and !hitpause {
            var hb = create_hitbox(AT_FSPECIAL, 1, x+(40*spr_dir),y-40)
            hb.hsp = 10*spr_dir
            hb.vsp = 2
        }
    break;
    case AT_FSPECIAL_AIR:
        move_cooldown[AT_FSPECIAL] = 60;
        move_cooldown[AT_FSPECIAL_AIR] = 60;
        if window == 1 && window_timer == 1 and !hitpause {
            sound_play(sound_get("sfx_deracine_energy"), false, noone, 0.7, 1)
        }
        
        if window == 1 and window_timer == 5 and !hitpause  {
        	sound_play(sound_get("sfx_deracine_energy2"), false, noone, 0.8, 1)
        }
        
        if window == 1 and window_timer == 11 and !hitpause  {
        	sound_play(sound_get("sfx_deracine_swing1"), false, noone, 0.8, 1.2)
        }
        
        if window == 2 and window_timer == 1 and !hitpause and free {
        	vsp -= 2.5;
        }
        
        if window == 2 and window_timer == 2 and !hitpause {
        	var i = 0;
        	
        	while (place_meeting(x+hsp+i+(26*spr_dir),y,asset_get("par_block"))) {
        		i -= spr_dir;
        	}
        	
            var hb = create_hitbox(AT_FSPECIAL, 1, x+(48*spr_dir)+i,y-30)
            hb.hsp = 10*spr_dir
            hb.vsp = 2
        }
        if (window == 3 && !free && !was_parried){
        landing_lag_time= 18
        state=PS_LANDING_LAG;
        state_timer=0;
	        hurtboxID.sprite_index = hurtbox_spr
	        attack_end()
    }
    break;
    
    case AT_USPECIAL:
        can_wall_jump = window > 1;
        
		if (window == 1 and window_timer > 6) or window == 2 {
			hud_offset = floor(lerp(hud_offset, 200, .1));
		}
		
        if window == 1 && window_timer == 14 and !hitpause {
            sound_play(asset_get("sfx_oly_uspecial_kick"), false, noone, 1.0, 0.9)
            if !free{
            	sound_play(asset_get("sfx_kragg_rock_shatter"),false,noone,1.0);
            }
        }
        
        if (window > 1 && window < 8) && !free{
            window = 8;
			window_timer = 0;
        }
        
        if window == 2 and window_timer > 2{
        	vsp *= 0.9
        }

        if (window == 3 || window == 4) && special_pressed {
            window = 5;
			window_timer = 0;
			
			if right_down-left_down == -spr_dir {
				spr_dir *= -1
			}
        }
        
        if (window > 4 && window < 8){
            can_fast_fall = false;
        }
        
        if window == 5 {
        	vsp *= vsp > 0 ? 0.9 : 1
        	hsp *= 0.9
        }
    break;
    case AT_DSPECIAL:
        move_cooldown[AT_DSPECIAL] = 999;
        can_fast_fall = false;
        can_move = window == 3 or window == 4 or window == 6 or window == 7
        if window == 1{
            if window_timer == 1 and !hitpause {
                fstrong_sfx = sound_play(sound_get("sfx_deracine_dspecial"), false, noone, 0.6, 1.3)
                sound_play(sound_get("sfx_deracine_energy2"),false,noone,0.7, 0.7);
                sound_play(sound_get("sfx_deracine_energy2"),false,noone,0.8, 0.8);
            }
            if window_timer == 14 and !hitpause {
                sound_play(asset_get("sfx_spin"),false,noone,1.0, 0.8);
            }
        }
        
        if window == 2 or window == 5 {
        	var dspec_dir = right_down - left_down
        	if dspec_dir != 0 {
        		hsp = lerp(hsp, dspec_dir * 4, 0.2)
        	}
        	
        }
        
        if window == 2 and window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 1 and dspecial_should_enhance {
        	sound_play(sound_get("sfx_deracine_dspecial_enchanced"), false, noone, 1.0, 1)
        	sound_play(sound_get("sfx_deracine_dspecial_enchanced"), false, noone, 0.1, 1)
           sound_play(sound_get("sfx_deracine_energy"), false, noone, 0.4, 1)
            window = 5;
            window_timer = 0;
        }
        
        if (window == 2 || window == 5) && special_down && !hitpause{
            vsp = -3;
        }
        if window == 3{

            if window_timer == 2 && !hitpause && free{
                vsp = -8;
            }
            
            if window_timer == 4 {
            	sound_stop(fstrong_sfx)
            }
        }
        if window == 4{
            if window_timer == 6 {
            	
                var vfx = spawn_hit_fx( x, y, dspec_vfx_fg );
                vfx.depth -= 20; 
            }
        }
        
        if window == 6{
        	
            if window_timer == 2 && !hitpause && free{
                vsp = -8;
            }
            if window_timer == 4 {
            	sound_stop(fstrong_sfx)
            }
        }
        if window == 7{
            if window_timer == 6 {
                var vfx = spawn_hit_fx( x, y, dspec_vfx_fg );
                vfx.depth -= 20; 
                spawn_hit_fx( x, y, dspec_vfx_bg );
            }
        }
    break;
    case AT_TAUNT:
    	if clamp(window, 1, 3) == window
    		{
        	if (window == 3 and window_timer > 10) break;
        	hud_offset = floor(lerp(hud_offset, 200, .1));
    		}
    	if window == 1 && window_timer == 2 and !hitpause {
    		sound_play(sound_get("sfx_deracine_energy2"), false, noone, 0.7, 0.9)
    	}
    	if window == 2 && window_timer > 19 {
			if taunt_down{
                window = 2;
                window_timer = 0;
			}
            else {
            	window = 3;
                window_timer = 0;
            }
        }
        if window == 3 && window_timer == 2 and !hitpause {
        	sound_play(asset_get("sfx_ori_dspecial_bash_miss"),false,noone,.5, 0.8);
        }
    break;
}





#define collision_line_point
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var qi = argument4;
var qp = argument5;
var qn = argument6;
var rr, rx, ry;
rr = collision_line(x1, y1, x2, y2, qi, qp, qn);
rx = x2;
ry = y2;
if (rr != noone) {
    var p0 = 0;
    var p1 = 1;
    repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
        var np = p0 + (p1 - p0) * 0.5;
        var nx = x1 + (x2 - x1) * np;
        var ny = y1 + (y2 - y1) * np;
        var px = x1 + (x2 - x1) * p0;
        var py = y1 + (y2 - y1) * p0;
        var nr = collision_line(px, py, nx, ny, qi, qp, qn);
        if (nr != noone) {
            rr = nr;
            rx = nx;
            ry = ny;
            p1 = np;
        } else p0 = np;
    }
}
var r;
r[0] = rr;
r[1] = rx;
r[2] = ry;
return r;

#define find_closest_decaying_player
/// @param {undefined} x_pos
var x_pos = argument0;

var xx = x_pos;
x = -10000;

var player_asset = asset_get("oPlayer");
var closest_player = instance_nearest(xx,y,player_asset);

if (closest_player == id or array_find_index(minion_spawn_position.visited_players, closest_player) != -1) {
    x = xx;
    return noone;
} else {
    if (("decay_info" in closest_player) and closest_player.decay_info.player != player) {
        var yy = closest_player.y
        closest_player.y = -100000;
        closest_player.y = yy;
        
        array_push(minion_spawn_position.visited_players, closest_player);
        var new_closest = find_closest_decaying_player(xx);
        
        closest_player.y = yy;
        
        if new_closest == noone {
            x = xx;
            return noone;
        } else {
            closest_player = new_closest;
        }
    }
    
    x = xx;
    return closest_player;
}


