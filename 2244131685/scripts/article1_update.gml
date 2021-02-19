hitpause = player_id.hitpause;

state_timer += !hitpause;

if apply_friction_mult {
    r_hsp *= frict;
    r_vsp *= frict;
}

//Cooldown management
for (var i = 0; i < array_length(move_cooldown); i++) {
    if move_cooldown[i] > 0 {
        move_cooldown[i]--;
    }
}

//#region State Processing (except attack)
switch (state) {
    case 0: //INIT
        x = player_id.x-50*player_id.spr_dir;
        y = player_id.y-80;
        set_pod_state(PD_IDLE);
    break;
    
    case 1://IDLE
        if parry_lag == 0 can_attack = true;
        else {
            can_attack = false;
            parry_lag--;
        }
        can_glide = true;
        
        if (attached) {
            depth = def_depth;
            var lerp_spd = 0.3;
            x = floor(lerp(x,player_id.x+follow_x*player_id.spr_dir,lerp_spd));
            y = floor(lerp(y,player_id.y+follow_y,lerp_spd));
            
            spr_dir = abs(player_id.x-x) >= 1 ? sign(player_id.x-x) : spr_dir;
        } else {
            depth = def_depth+2;
        }
    break;
    
    case 2: //GLIDE
        can_glide = false;
        depth = player_id.depth+1;
        //movement handled by player object for properly synchronized movement.
        if (player_id.state != clamp(player_id.state,5,6) || player_id.attack != AT_EXTRA_1) {
            set_pod_state(PD_IDLE);
        }
    break;
    
    case 4: //RETURN
        depth = def_depth;
        spr_dir = sign(player_id.x - x); // Applies proper direction
        can_attack = false;
        can_glide = false;
        var spd = ease_sineIn(1,6,clamp(state_timer,0,16),16)/40;
        x = floor( lerp( x + player_id.hsp, player_id.x+follow_x*player_id.spr_dir, spd ) );
        y = floor( lerp( y + player_id.vsp, player_id.y+follow_y, spd ) );
        if point_distance( x + hsp, y + vsp, player_id.x+follow_x*player_id.spr_dir, player_id.y+follow_y) < 20 {
            set_pod_state(PD_IDLE);
            attached = true;
        }
    break;
    
    case 5: //RESPAWN
        can_attack = false;
        can_glide = false;
        depth = def_depth;
        var lerp_spd = 0.3;
        if state_timer <= 10 {
            alpha -= 0.1;
        } else if player_id.visible {
            alpha = clamp(alpha+0.1,0,1);
            if alpha == 1 set_pod_state(PD_IDLE);
            x = floor(lerp(x,player_id.x+follow_x*player_id.spr_dir,lerp_spd));
            y = floor(lerp(y,player_id.y+follow_y,lerp_spd));
        } else {
            attached = true;
            x = floor(lerp(x,player_id.x+follow_x*player_id.spr_dir,lerp_spd));
            y = floor(lerp(y,player_id.y+follow_y,lerp_spd));
        }
    break;
}
//#endregion


//#region Attack Processing
if (state == PD_ATTACK) {
	with (player_id) {
		move_cooldown[AT_TAUNT] = 2;
	}
    if state_timer == 1 {
        has_hit = false;
        was_parried = false;
        with player_id attack_end(other.attack_grid[other.attack][0,3]);
    }
    //general attack processing
    can_glide = false;
    can_attack = false;
    //hitbox handling
    if (attack_grid[attack][0,2] > 0 && !hitpause) {
        for (var i = 0; i < attack_grid[attack][0,2]; i++) {
            var hbox_num = attack_grid[attack][2,i],
                atk = attack_grid[attack][0,3];
            with (player_id) {
                var tgt_window = get_hitbox_value(atk,hbox_num,HG_WINDOW),
                tgt_frame = get_hitbox_value(atk,hbox_num,HG_WINDOW_CREATION_FRAME),
                xpos = get_hitbox_value(atk,hbox_num,HG_HITBOX_X),
                ypos = get_hitbox_value(atk,hbox_num,HG_HITBOX_Y),
                shape = get_hitbox_value(atk,hbox_num,HG_SHAPE),
                width = get_hitbox_value(atk,hbox_num,HG_WIDTH),
                height = get_hitbox_value(atk,hbox_num,HG_HEIGHT);
            }
            //print_debug(string(window)+","+string(tgt_window))
            if (window == tgt_window && window_timer == tgt_frame) {
                with (player_id) attack_end();
                //print_debug("h");
                var hb = create_hitbox(
                    atk,
                    hbox_num,
                    round(x+xpos*spr_dir),
                    round(y+ypos)
                    );
                hb.pod = id;
                hb.podhbtype = 2;
                if (hb.type == 1) {
                    //var i = 1;
                    //repeat (4) hb.can_hit[i++] = 1;
                    hb.type = 2;
                    //hb.hbox_group = -1;
                    hb.podhbtype = 1;
                    hb.grounds = 1;
                    hb.walls = 1;
                    hb.enemies = 1;
                    hb.plasma_safe = true;
                    hb.unbashable = true;
                    hb.does_not_reflect = true;
                    hb.transcendent = true;
                    hb.projectile_parry_stun = true;
                    hb.sprite_index = asset_get("empty_sprite");
                    //hb.image_xscale = (1/200)*width;
                    //hb.image_yscale = (1/200)*height;
                    switch (shape) {
                        case 0:
                            hb.mask_index = asset_get("hitbox_circle_spr");
                        break;
                        case 1:
                            hb.mask_index = asset_get("hitbox_square_spr");
                        break;
                        case 2:
                            hb.mask_index = asset_get("hitbox_rounded_rectangle");
                        break;
                    }
                }
                
            }
        }
    }
    
    window_timer += !hitpause;
    
    var anim_frames = attack_grid[attack][1][window-1,2],
        anim_start = attack_grid[attack][1][window-1,3],
        window_length = attack_grid[attack][1][window-1,1],
        window_type = attack_grid[attack][1][window-1,0],
        has_sfx = attack_grid[attack][1][window-1,9],
        sfx = attack_grid[attack][1][window-1,10],
        sfx_frame = attack_grid[attack][1][window-1,11],
        has_whifflag = attack_grid[attack][1][window-1,8];
    //movement speeds
    switch (attack_grid[attack][1][window-1,6]) {
        case 0: //add hsp at start of window
            if window_timer == 1 r_hsp += attack_grid[attack][1][window-1,4]*spr_dir;
        break;
        case 1: //set hsp every frame
            r_hsp = attack_grid[attack][1][window-1,4]*spr_dir;
        break;
        case 2: //set hsp at start of window
            if window_timer == 1 r_hsp = attack_grid[attack][1][window-1,4]*spr_dir;
        break;
    }
    switch (attack_grid[attack][1][window-1,7]) {
        case 0: //add vsp at start of window
            if window_timer == 1 r_vsp += attack_grid[attack][1][window-1,5];
        break;
        case 1: //set vsp every frame
            r_vsp = attack_grid[attack][1][window-1,5];
        break;
        case 2: //set vsp at start of window
            if window_timer == 1 r_vsp = attack_grid[attack][1][window-1,5];
        break;
    }
    //window sfx
    if has_sfx && !hitpause && window_timer == sfx_frame {
        sound_play(sfx);
    }
    //#region Attack specific code
    
    switch (attack) {
        case 1: //FSPECIAL
            depth = def_depth;
            if (player_id.state == PS_JUMPSQUAT || player_id.state == PS_DOUBLE_JUMP) {
                set_pod_state(PD_IDLE);
            }
            // Location handled in update.gml
        break;
        case 3: //DSPECIAL
            spr_dir = player_id.spr_dir;
            if attached {
                var lerp_spd = 0.4;
                x = floor(lerp( x,player_id.x+36*spr_dir,lerp_spd));
                y = floor(lerp( y,player_id.y-20,lerp_spd));
            }
        break;
        case 5: //DSPECIAL CR
            if state_timer == 6 {
                if player_id.special_down {
                    set_pod_state(PD_RETURN);
                } else {
                    can_be_grounded = true;
                    ignores_walls = false;
                    var block_check = collision_line_point(x,y-10,x,y+800,asset_get("par_block"),true,true);
                    var plat_check = collision_line_point(x,y-10,x,y+800,asset_get("par_jumpthrough"),true,true);
                    
                    if plat_check[0] != noone {
                        if point_distance(x,y-10,plat_check[1],plat_check[2]) > 20 {
                            dspeccr_warn = plat_check;
                        } else {
                            dspeccr_warn = block_check;
                        }
                    } else {
                        dspeccr_warn = block_check;
                    }
                }
            } else if window == 2 {
            	crash_image_index = 0;
            	crash_anim_win = 0;
                if window_timer == 1 {
                    dspeccr_x = x;
                    dspeccr_y = floor(y);
                }
                can_be_grounded = true;
                ignores_walls = false;
                y = ease_linear(dspeccr_y,floor(dspeccr_warn[2]),window_timer,floor(point_distance(x,dspeccr_y,dspeccr_warn[1],dspeccr_warn[2])/50));
                if !free || y >= dspeccr_warn[2] || y > room_height {
                    x = dspeccr_warn[1];
                    y = dspeccr_warn[2];
                    vsp = 0;
                    hsp = 0;
                    r_hsp = 0;
                    r_vsp = 0;
                    window++;
                    window_timer = 0;
                }
            } else if (window == 3) {
            	if (window_timer == crash_win_time[crash_anim_win] + crash_win_total_time[crash_anim_win] && crash_anim_win < crash_anim_wins - 1) {
            		// increments the animation window everytime it hits its max
            		crash_anim_win++;
            	}
            	if (window_timer < crash_win_time[crash_anim_win] + crash_win_total_time[crash_anim_win]) {
            		// increments the image index to match the intended animation speed
            		crash_image_index = (crash_win_frames[crash_anim_win]/(crash_win_time[crash_anim_win]) * window_timer) + crash_win_total_frames[crash_anim_win];
            	}
            }
        break;
        case 4: //NSPECIAL_AT
            move_cooldown[PA_NSPECIAL_AT] = 80;
            move_cooldown[PA_NSPECIAL] = 80;
            // Volt sprite code
            if (window <= 3) {
            	// adjusts for whifflag
            	volt_image_index = (volt_win_frames[window - 1]/((has_hit || window < 3 ? window_length : window_length * 1.5) + 1) * window_timer) + volt_win_total_frames[window - 1];
            }
            if (window == 1) {
                spr_dir = player_id.spr_dir;
                depth = player_id.depth-1;
                var lerp_spd = 0.7;
                x = floor(lerp(x,player_id.x+16*player_id.spr_dir,lerp_spd));
                y = floor(lerp(y,player_id.y-30,lerp_spd));
            } else if window == 2 {
                //x = player_id.x+40*player_id.spr_dir;
                //y = player_id.y-30;
            }
        break;
        case 6: // USTRONG
        	if (state_timer == 1) {
        		spear_enabled = [true, true, true, true];
        		charging = false;
        		charge_timer = 0;
        	}
        	hsp = 0;
        	vsp = 0;
        	if (player_id.window == 1 && window == 1) {
        		if (player_id.up_strong_down && player_id.window_timer == 9) {
        			charging = true;
        			if (charge_timer < 10) {
        				charge_timer++;
        			} else {
        				charge_timer = 1;
        			}
        		} else {
        			charging = false;
        			charge_timer = 0;
        		}
        		window_timer = player_id.window_timer;
        	} else {
        		charging = false;
        		charge_timer = 0;
        	}
        	if (window == 1) {
        		var lerp_spd = 0.5;
        		if (attached) {
	        		spr_dir = player_id.spr_dir;
	        		if (window_timer <= 1) {
	        			ustrong_x_start = player_id.x - follow_x * -spr_dir;
		        		var block_check_1 = position_meeting(ustrong_x_start + 92 * spr_dir, y + 50, asset_get("par_block"));
		        		var block_check_2 = position_meeting(ustrong_x_start + 46 * spr_dir, y + 50, asset_get("par_block"));
		        		var plat_check_1 = position_meeting(ustrong_x_start + 92 * spr_dir, y + 50, asset_get("par_jumpthrough"));
		        		var plat_check_2 = position_meeting(ustrong_x_start + 46 * spr_dir, y + 50, asset_get("par_jumpthrough"));
		        		if (block_check_1 || plat_check_1) {
		        			ustrong_x_offset = 92;
		        		} else if (block_check_2 || block_check_2) {
		        			ustrong_x_offset = 46;
		        		} else {
		        			ustrong_x_offset = 23;
		        		}
	        		} else {
		                x = floor(lerp(x,ustrong_x_start+ustrong_x_offset*spr_dir,lerp_spd));
		                y = floor(lerp(y,player_id.y-20,lerp_spd));
	        		}
        		} else {
        			if (window_timer == 0) {
	        			var block_check = collision_line_point(x,y-10,x,y+800,asset_get("par_block"),true,true);
	                    var plat_check = collision_line_point(x,y-10,x,y+800,asset_get("par_jumpthrough"),true,true);
	                    
	                    if (plat_check[0] != noone) {
	                        if point_distance(x,y-10,plat_check[1],plat_check[2]) > 20 {
	                            ustrong_pos = plat_check;
	                        } else {
	                            ustrong_pos = block_check;
	                        }
	                    } else if (block_check[0] != noone) {
	                        ustrong_pos = block_check;
	                    } else {
	                    	attached = true;
	                    }
        			} else {
        				y = floor(lerp(y, ustrong_pos[2] - 20, lerp_spd))
        			}
        		}
        		depth = player_id.depth-1;
        	} else if (window == 2) {
        		var spawn_sound = asset_get("sfx_absa_whip");
        		if (window_timer == 1) {
        			// If the spears exist
	        		spear_enabled[0] = position_meeting(x - 10 * spr_dir, y + 50, asset_get("par_block")) || position_meeting(x - 10 * spr_dir, y + 50, asset_get("par_jumpthrough"));
	        		spear_enabled[1] = position_meeting(x + 10 * spr_dir, y + 50, asset_get("par_block")) || position_meeting(x + 10 * spr_dir, y + 50, asset_get("par_jumpthrough"));
	        		spear_enabled[2] = position_meeting(x - 40 * spr_dir, y + 50, asset_get("par_block")) || position_meeting(x - 40 * spr_dir, y + 50, asset_get("par_jumpthrough"));
	        		spear_enabled[3] = position_meeting(x + 40 * spr_dir, y + 50, asset_get("par_block")) || position_meeting(x + 40 * spr_dir, y + 50, asset_get("par_jumpthrough"));
	    			with (player_id) {
	    				if (!other.spear_enabled[0]) {
	    					set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 0);
	    				}
	    				if (!other.spear_enabled[1]) {
	    					set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 0);
	    				}
	    				if (!other.spear_enabled[2]) {
	    					set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 0);
	    				}
	    				if (!other.spear_enabled[3]) {
	    					set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 0);
	    				}
	    			}
    				// Spears
        			if (spear_enabled[0] || spear_enabled[1] || spear_enabled[2] || spear_enabled[3]) {
        				sound_play(spawn_sound);
        			}
        			if (spear_enabled[0]) {
        				player_id.spears[0] = spawn_hit_fx(x - 10 * spr_dir, y - 30, spear1);
        				player_id.spears[0].depth = depth-1;
        				player_id.spears[0].spr_dir = spr_dir;
        			}
        			if (spear_enabled[1]) {
        				player_id.spears[1] = spawn_hit_fx(x + 10 * spr_dir, y - 30, spear2);
        				player_id.spears[1].depth = depth-1;
        				player_id.spears[1].spr_dir = spr_dir;
        			}
        		} else if (window_timer == 7) {
        			if (spear_enabled[2]) {
        				player_id.spears[2] = spawn_hit_fx(x - 40 * spr_dir, y - 27, spear3);
        				player_id.spears[2].depth = depth-1;
        				player_id.spears[2].spr_dir = spr_dir;
        			}
        			if (spear_enabled[3]) {
        				player_id.spears[3] = spawn_hit_fx(x + 40 * spr_dir, y - 27, spear4);
        				player_id.spears[3].depth = depth-1;
        				player_id.spears[3].spr_dir = spr_dir;
        			}
        		}
        	}
        	break;
        case 7:
        	if (window == 1) {
        		var lerp_spd = 0.3;
        		x = lerp(x, player_id.x + follow_x * player_id.spr_dir, lerp_spd);
        		y = lerp(y, player_id.y - 10, lerp_spd);
        	} else if (window == 2) {
        		x = player_id.x + follow_x * player_id.spr_dir;
        		y = player_id.y - 10;
        		attached = true;
        	}
        	break;
        case 0: //NSPECIAL
            move_cooldown[PA_NSPECIAL_AT] = 30;
            move_cooldown[PA_NSPECIAL] = 30;
            break;
        break;
    }
    //#endregion
    
    // Increment window
    if ( window_timer == window_length && (!has_whifflag || has_hit) ) || (window_timer == floor(window_length*1.5) && !has_hit) {
        window++; 
        window_timer = 0;
        //OK I FIXED IT. no seriously this is the best solution i could come up with; 
        //just making it regrab these values afterwards.
        //because if i just moved the definitions below here, it *would* fix it but
        //pod would break after the attack ends, so i'd need a conditional anyway.
        if window <= attack_grid[attack][0,1] {
	        anim_frames = attack_grid[attack][1][window-1,2];
	        anim_start = attack_grid[attack][1][window-1,3];
	        window_length = attack_grid[attack][1][window-1,1];
        }
    }
    
    if attached && (player_id.state_cat == SC_HITSTUN) {
        //yikes my player got hit, better stop
        set_pod_state(PD_IDLE);
    }
    
    //attack anim processing
    desired_sprite = attack_grid[attack][0,0];
    // Update image index
    _image = anim_frames*window_timer/(has_hit ? window_length : round(window_length*1.5)) + anim_start;
    //image = window_anim_frame_start+
	if (player_id.state_cat == SC_HITSTUN || player_id.was_parried) {
		was_parried = player_id.was_parried;
		window = attack_grid[attack][0,1] + 1;
	}
    if ( window > attack_grid[attack][0,1] ) {
        if !was_parried
        switch window_type {
            case 1:
                attached = !attached;
            case 0:
                set_pod_state(PD_IDLE);
                can_attack = true;
            break;
            case 2:
                set_pod_state(PD_RETURN);
            break;
        }
        else {
            was_parried = false;
            parry_lag = extended_parry ? 60 : 40;
            set_pod_state(PD_RETURN);
        }
    }
} else {
	charging = false;
	charge_timer = 0;
}
//#endregion

//#region (non-attack) Animation Processing

if state != PD_ATTACK {
    _image += frame_rate;
}

switch (state) {
    case 0: //init
    case 1: //idle
        desired_sprite = spr_idle;
        frame_rate = 0.2;
        break;
    case 2: //glide
        desired_sprite = spr_glide;
        //pod does not handle the animation for this one.
        frame_rate = 0;
        break;
    case 4: //return
        desired_sprite = spr_return;
        frame_rate = 0.2;
        break;
    case 5: //respawn
        desired_sprite = spr_respawn;
        frame_rate = 0.2;
        break;
    case 6: //die
        desired_sprite = spr_die;
        frame_rate = 0.2;
        break;
}
if sprite != desired_sprite {
    sprite = desired_sprite;
    _image = 0;
}

//#endregion
vsp = round(r_vsp);
hsp = round(r_hsp);

if hitstop <= 0 {
    hitpause = false;
}

if (player_id.state == PS_RESPAWN) {
	attached = true;
}
if (player_id.state == PS_DEAD) {
	instance_destroy();
}
#define get_pod_state_name(state)
switch (state) {
    case 0: return "PD_INIT";
    case 1: return "PD_IDLE";
    case 2: return "PD_GLIDE";
    case 3: return "PD_ATTACK";
    case 4: return "PD_RETURN";
    case 5: return "PD_RESPAWN";
    case 6: return "PD_DIE";
}
#define set_pod_state(_state)
prev_state = state;
state = _state;
state_timer = 0;
window = 0;
window_timer = 0;
can_be_grounded = false;
ignores_walls = true;

#define set_pod_attack(_attack)
if can_attack && !move_cooldown[_attack] {
    set_pod_state(PD_ATTACK);
    attack = _attack;
    window = 1;
    window_timer = 0;
}
#define collision_line_point
//thanbk you blessed yal
/// collision_line_point(x1, y1, x2, y2, obj, prec, notme)
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