
force_depth = 0;

if (hitstop <= 0) { 
    hsp = old_hsp;
    vsp = old_vsp;
}
else {
    hsp = 0;
    vsp = 0;
} 

if (player_id.has_hit || player_id.has_hit_player) {
    has_hit_player = true;
}

follower_attack_update();

if (hitstop <= 2 && (!player_id.hitpause || player_id.hitstop <= 2)) { 
	if (p_get_attack_value(attack, AG_CATEGORY) == 0) {
		if (player_id.free) destroyed = true;
	}
	
	if (p_get_attack_value(attack, AG_CATEGORY) == 1) {
		if (!player_id.free) destroyed = true;
	}
}

depth = player_id.depth + force_depth;

if (destroy_on_hit && (player_id.state == PS_HITSTUN || player_id.state == PS_HITSTUN_LAND)) {
    destroyed = true;
}
        
follower_offset_x += hsp;
follower_offset_y += vsp;

if (follow_player) {
    x = round(player_id.x + player_id.hsp + follower_offset_x)
    y = round(player_id.y + player_id.vsp + follower_offset_y)
}

if (hitstop <= 0) {
    old_hsp = hsp;
    old_vsp = vsp;
}

if (destroyed) {
    with (pHitBox) {
        if ("tomoko_owner" in self && player_id == other.player_id && type == 1) {
            if (instance_exists(tomoko_owner) && tomoko_owner== other.id) {
	        	instance_destroy(id);
	        	continue;
            }
        }
    }
		
	with (hit_fx_obj) {
		if (player_id == other.player_id) {
			if (hit_fx == player_id.fx_ustrong_w_back) {
                step_timer = 240;
			}
			if (hit_fx == player_id.fx_nspecial_charge) {
                step_timer = 80;
			}
		}
	}
    instance_destroy(id);
    exit;
}

#define follower_attack_update()
if (hitstop > 0) return;

switch p_get_window_value(attack, window, AG_WINDOW_HSPEED_TYPE) {
    case 2:
        if window_timer == 0 hsp = p_get_window_value(attack, window, AG_WINDOW_HSPEED)*spr_dir;
        break;
    case 1:
        hsp = p_get_window_value(attack, window, AG_WINDOW_HSPEED)*spr_dir;
        break;
    default:
        if window_timer == 0 hsp += p_get_window_value(attack, window, AG_WINDOW_HSPEED)*spr_dir;
        break;
}

switch p_get_window_value(attack, window, AG_WINDOW_VSPEED_TYPE) {
    case 2:
        if window_timer == 0 vsp = p_get_window_value(attack, window, AG_WINDOW_VSPEED);
        break;
    case 1:
        vsp = p_get_window_value(attack, window, AG_WINDOW_VSPEED);
        break;
    default:
        if window_timer == 0 vsp += p_get_window_value(attack, window, AG_WINDOW_VSPEED);
        break;
}

var a_frict = air_friction*2;
if (p_get_window_value(attack, window, AG_WINDOW_HAS_CUSTOM_FRICTION) == 1) {
    a_frict = p_get_window_value(attack, window, AG_WINDOW_CUSTOM_AIR_FRICTION);
}

var last_window_timer = floor(p_get_window_value(attack, window, AG_WINDOW_LENGTH) * ((p_get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit_player) ? 1.5 : 1)) - 1;
window_end = last_window_timer;
    
sprite_index = player_id.weapon_attack_spr[attack];
    

image_index = clamp(p_get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START)+round(ease_linear(0,p_get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES) - 1, window_timer,
        window_end)),  p_get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START), p_get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START) + p_get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES)-1);
	    

if (window_timer >= window_end) {
    if (window == player_id.weapon_charge_window[attack] && follower_charging_attack() && strong_charge < 60) {
        strong_charge ++;
    }
    else {
        if p_get_window_value(attack, window, AG_WINDOW_TYPE) != 9 {
            if (p_get_window_value(attack, window, AG_WINDOW_GOTO) > 0)
                window = p_get_window_value(attack, window, AG_WINDOW_GOTO);
            else
                window++;
        }
        window_timer = (strong_charge > 0 && strong_charge < 60) ? 1 : -1;
        strong_charge = 0;
    }
    if (strong_charge == 0) {
        if window > player_id.weapon_window_max[attack] {
            destroyed = true;
        }
    }
}
else {
	if (window != player_id.weapon_charge_window[attack] || (window == player_id.weapon_charge_window[attack] && window_timer < window_end-1)) {
	    strong_charge = 0;
	} 
}

follower_attacks();
#define follower_attacks()

switch (attack) {
    case AT_JAB:
        force_depth = window <= 12 ? -1 : 1
        if (window == player_id.weapon_window_min[attack] && window_timer == 1) {
            jab_hit_ground = false;
        }
        sprite_index = jab_hit_ground ? sprite_get("jab_wg") : sprite_get("jab_w")
        
        //Cancel
        if ((window == 12 || window == 15) && hitstop <= 0) {
            if (player_id.window == 4 || player_id.window == 7) {
                window ++;
                window_timer = 1;
            }
        }
        
        if ((player_id.state != PS_ATTACK_AIR && player_id.state != PS_ATTACK_GROUND) || player_id.attack != AT_JAB) {
            destroyed = true;
        }
        
        //Look for platforms
        if (window == 17 && window_timer == 0 && hitstop <= 0) {
            var ground_test = collision_point(floor(x + 70 * spr_dir), floor(y), asset_get("par_block"), 1, 1)
            var plat_test = collision_point(floor(x + 70 * spr_dir), floor(y), asset_get("par_jumpthrough"), 1, 1)
            if (ground_test || plat_test) {
                window = 19;
                window_timer = 0;
                jab_hit_ground = true;
                sound_play(asset_get("sfx_ice_nspecial_hit_ground"));
                sound_play(asset_get("sfx_kragg_spike"));
            }
        }
        
        destroy_on_hit = window != 3 && window != 6 && window != 9;
    break;
    case AT_DTILT:
        ignores_walls = true;
        can_be_grounded = true;
        
        if (window != 6) {
            var x_offset = round(player_id.x + follower_offset_x);
            var y_offset = round(player_id.y + follower_offset_y);
            if (!collision_rectangle(x_offset + 4 * spr_dir, y_offset, x_offset + 5 * spr_dir, y_offset, asset_get("par_block"), 1, 0) &&
                !collision_rectangle(x_offset + 4 * spr_dir, y_offset, x_offset + 5 * spr_dir, y_offset, asset_get("par_jumpthrough"), 1, 0))
                x_offset -= 32 * player_id.spr_dir;
            while (y_offset <= player_id.y) {
                if (collision_point(x_offset, y_offset, asset_get("par_block"), 1, 0) ||
                    collision_point(x_offset, y_offset, asset_get("par_jumpthrough"), 1, 0)) 
                    break;
                y_offset++;
            }
            x = round(x_offset);
            y = round(y_offset);
        }
        destroy_on_hit = window != 6;
        follow_player = false
    break;
    
    case AT_UTILT:
        destroy_on_hit = window != 6;
        force_depth = 1;
    break;
    
    case AT_NAIR:
        destroy_on_hit = window != 6;
        force_depth = 1;
    break;
    
    case AT_FAIR:
        destroy_on_hit = (window != 6 || (window == 6 && window_timer <= window_end / (p_get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES) / 5)));
        follow_player = destroy_on_hit;
        force_depth = 1;
    break;
    
    case AT_BAIR:
        force_depth = window == 5 && window_timer <= 2 ? -1 : 1;
    break;
    
    case AT_UAIR:
        force_depth = -1;
    break;
    
    case AT_FSTRONG:
        force_depth = -1;
        spr_dir = player_id.spr_dir
		follower_offset_x = player_id.weapon_xoffset[attack] * spr_dir;
		follower_offset_y = player_id.weapon_yoffset[attack];
    break;
    
    case AT_USTRONG:
        force_depth = -1;
        spr_dir = player_id.spr_dir
		if (window <= 7) {
			follower_offset_x = player_id.weapon_xoffset[attack] * spr_dir;
			follower_offset_y = player_id.weapon_yoffset[attack];
		}
		
		if (window == 6 && window_timer == 2 && hitstop <= 0) {
        	spawn_hit_fx(round(x), round(y), player_id.fx_ustrong_w_back);
		}
		
		with (hit_fx_obj) {
			if (player_id == other.player_id) {
				if (hit_fx == player_id.fx_ustrong_w_back) {
		    		start_frame = other.image_index;
		    		image_length = 1;
		    		x = round(other.x + other.hsp);
		            y = round(other.y + other.vsp);
		            spr_dir = other.spr_dir;
		            depth = player_id.depth + 2;
		            if (other.destroyed) {
		                step_timer = 240;
		            }
		            if (start_frame >= other.image_number-1)
		            { 
		                step_timer = 240;
		            }
				}
			}
		}
    break;
    
    case AT_DSTRONG:
        force_depth = -1;
        spr_dir = player_id.spr_dir
		follower_offset_x = player_id.weapon_xoffset[attack] * spr_dir;
		follower_offset_y = player_id.weapon_yoffset[attack];
    break;
    
    case AT_NSPECIAL:
        force_depth = 1;
        spr_dir = player_id.spr_dir;
        var trail_length = 640;
        var charge1_threshold = 4;
        var charge2_threshold = 32;
        
		if (window == 11 && window_timer == 1) {
			follower_offset_x = -76 * spr_dir;
			follower_offset_target_x = follower_offset_x;
		}
		
        follower_offset_target_x = player_id.weapon_xoffset[attack];
        var width = 64;
        var height = 32;
        while (collision_rectangle(
        		x + (follower_offset_target_x - width / 2) * spr_dir, 
        		y + (follower_offset_y - height / 2),
        		x + (follower_offset_target_x + width / 2) * spr_dir, 
        		y + (follower_offset_y + height / 2),
        		asset_get("par_block"), 0, 0)) {
        	follower_offset_target_x += 2;
        }
        
        follower_offset_x += ((follower_offset_target_x * spr_dir) - follower_offset_x) / 10;
		follower_offset_y = player_id.weapon_yoffset[attack];
        
		if (window == 12 && hitstop <= 0) {
            if (player_id.window == 2 && player_id.nspecial_charge == charge1_threshold) {
				sound_play(sound_get("sfx_nspecial_charge"));
            	spawn_hit_fx(round(x + 64 * spr_dir), round(y - 24), 29)
            }
            
            if (player_id.window == 2 && player_id.nspecial_charge == charge2_threshold) {
				sound_play(sound_get("sfx_nspecial_charge"), false, noone, 1, 0.9);
            	spawn_hit_fx(round(x + 64 * spr_dir), round(y - 24), 29)
            }
           
            
            if (player_id.window == 6 && player_id.window_timer == 1 && player_id.window_loops == 7) {
				var trail_x = x + 64 * spr_dir;
				var trail_y = y - 24;
				var _length = 0;
				while (_length <= trail_length) {
			        if place_meeting(trail_x, trail_y, asset_get("par_block")) 
			            break;
				    trail_x += 32 * spr_dir;
				    _length += 32;
				}
            	spawn_hit_fx(round(trail_x), round(trail_y), 28);
				sound_play(asset_get("sfx_oly_nspecial_shoot"), false, noone, 1, 1.3);
            }
            if (player_id.window == 6 && player_id.window_timer == 1 && player_id.window_loops == 1) {
            	spawn_hit_fx(round(x + 64 * spr_dir), round(y - 24), player_id.fx_nspecial_charge)
            }
            if (player_id.window == 3) {
            	window ++;
            	window_timer = 0;
			}
           else if (player_id.window == 7) {
            	window = 14;
            	window_timer = 0;
			}
           else if (player_id.window == 10) {
            	window = 16;
            	window_timer = 0;
			}
		}
		
		if (window == 14 && window_timer == 0 && hitstop <= 0) {
            if (player_id.window >= 7) {
				sound_play(sound_get("sfx_nspecial_shoot2"));
            	var _hbox = instance_create(floor(x + 64 * spr_dir), floor(y - 24), "obj_article2")
            	_hbox.spr_dir = spr_dir;
            	_hbox.trail_length = trail_length;
                shake_camera(10, 6);
			}
			else {
				sound_play(sound_get("sfx_nspecial_shoot"));
				
				var proj_hbox_num = 1;
				
				if (player_id.nspecial_charge >= charge2_threshold) proj_hbox_num = 3;
				else if (player_id.nspecial_charge >= charge1_threshold) proj_hbox_num = 2;
				
            	var _hbox = create_hitbox(AT_NSPECIAL, proj_hbox_num, floor(x + 64 * spr_dir), floor(y - 24))
            	_hbox.spr_dir = spr_dir;
			}
		}
		
		
		with (hit_fx_obj) {
			if (player_id == other.player_id) {
				if (hit_fx == player_id.fx_nspecial_charge) {
		    		x = round(other.x + 56 * spr_dir + other.hsp);
		            y = round(other.y - 24 + other.vsp);
		            depth = other.depth - 1;
		            if (other.destroyed) {
		                step_timer = 80;
		            }
				}
			}
		}
		
        destroy_on_hit = window != 15 && window != 16;
        follow_player = window != 15 && window != 16;
    break;
    case AT_FSPECIAL:
        force_depth = 1;
        
		if (window == 11 && window_timer == 1) {
			follower_offset_x = -32 * spr_dir;
			follower_offset_target_x = follower_offset_x;
		}
		
        follower_offset_target_x = player_id.weapon_xoffset[attack];
        var width = 64;
        var height = 32;
        while (collision_rectangle(
        		x + (follower_offset_target_x - width / 2) * spr_dir, 
        		y + (follower_offset_y - height / 2),
        		x + (follower_offset_target_x + width / 2) * spr_dir, 
        		y + (follower_offset_y + height / 2),
        		asset_get("par_block"), 0, 0)) {
        	follower_offset_target_x += 2;
        }
        
        follower_offset_x += ((follower_offset_target_x * spr_dir) - follower_offset_x) / 10;
		follower_offset_y = player_id.weapon_yoffset[attack];
        
		if (window == 5 && window_timer == 0 && hitstop <= 0) {
			sound_play(asset_get("sfx_ori_spirit_flame_2"));
			sound_play(asset_get("sfx_ice_shatter"));
        	var _hbox = create_hitbox(AT_FSPECIAL, 1, floor(x + 16 * spr_dir), floor(y))
        	_hbox.spr_dir = spr_dir;
		}
        
        destroy_on_hit = window < 6
        follow_player = window < 6
        if (follow_player)
        	spr_dir = player_id.spr_dir;
    break;
    case AT_TAUNT:
        destroy_on_hit =  window < 10;
        follow_player = destroy_on_hit;
        force_depth = 0;
        if ((player_id.state != PS_ATTACK_AIR && player_id.state != PS_ATTACK_GROUND) || player_id.attack != AT_TAUNT) {
            destroyed = true;
        }
        else {
        	if (player_id.window == 7 && player_id.window_timer == 1) {
                window = 10;
                window_timer = 1;
            }
        }
    break;
    
    /*
    case AT_USPECIAL:
	    var num_walls = 0;
	    with (obj_article_platform) {
	    	if (player == other.player && player_id == other.player_id) {
	    		num_walls++;
	    	}
	    }
	    
		if (window == 9 && hitstop <= 0) {
			if (num_walls > 0) {
				destroyed = true;
			}
			else {
				if (!instance_exists(player_id.uspecial_on_plat)) {
					if (window_timer == 1) {
						player_started_free = player_id.free;
					}
					x = player_id.x;
					y = (player_started_free) ? ease_linear(round(room_height), floor(player_id.y), window_timer, window_end) : room_height;
				}
				else {
					x = player_id.x;
					y = player_id.y;
					visible = false;
				}
			}
		}
		
		if (window == 10 && hitstop <= 0) {
			if (instance_exists(player_id.uspecial_on_plat)) {
				player_id.uspecial_on_plat.destroyed = true;
			}
			visible = true;
        	destroy_on_hit = false;
        	
        	if (player_id.window == 4) {
        		if (player_id.window_timer == 1) {
					var hitb = create_hitbox(AT_USPECIAL, 3, round(x) + p_get_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X)*spr_dir,round(y) + p_get_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y));
			        hitb.type = 1;
			        if (not "tomoko_owner" in hitb) hitb.tomoko_owner = id;
        		}
        		if (player_id.window_timer == 5) {
					var hitb = create_hitbox(AT_USPECIAL, 4, round(x) + p_get_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X)*spr_dir,round(y) + p_get_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y));
			        hitb.type = 1;
			        if (not "tomoko_owner" in hitb) hitb.tomoko_owner = id;
        		}
        	}
        	
            if (player_id.window == 5 && player_id.window_timer <= 1) {
            	destroyed = true;
            }
            
            if (!player_id.is_attacking) {
            	window ++;
            	window_timer = 0;
            }
            
            if (player_id.window == 8) {
			    if (num_walls == 0) {
	            	var _hbox = instance_create(floor(x), floor(y), "obj_article_platform");
	            	destroyed = true;
			    }
			    else {
	            	window ++;
	            	window_timer = 0;
            	}
            }
		}
		
        follow_player = window != 9 && window != 11;
    break;
    */
}

#define p_get_attack_value(_attack, _window_value)
with (player_id) {
    return get_attack_value(_attack, _window_value)
}

#define p_get_window_value(_attack, _window, _window_value)
with (player_id) {
    return get_window_value(_attack, _window, _window_value)
}

#define p_get_hitbox_value(_attack, _window, _window_value)
with (player_id) {
    return get_hitbox_value(_attack, _window, _window_value)
}
        
#define follower_charging_attack()
var result = false;
if (player_id.up_strong_down)
        result = true;
if (player_id.down_strong_down)
        result = true;
if (player_id.right_strong_down && player_id.spr_dir == 1) || (player_id.left_strong_down && player_id.spr_dir == -1)
        result = true;
if (player_id.strong_down)
    result = true;
if (player_id.smash_charging)
    result = true;
if (player_id.window == p_get_attack_value(player_id.attack, AG_STRONG_CHARGE_WINDOW) && player_id.window_timer >= player_id.window_end - 1)
    result = true;
return result;