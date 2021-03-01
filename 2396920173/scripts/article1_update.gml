//article1_update
timer++

switch piece {
    case "P": hp_max = player_id.hp_P; height = 40; break;
    case "B": hp_max = player_id.hp_B; height = 55; break;
    case "N": hp_max = player_id.hp_N; height = 50; break;
    case "K": hp_max = player_id.hp_K; height = 75; break;
    case "R": hp_max = player_id.hp_R; height = 45; break;
    case "Q": hp_max = player_id.hp_Q; height = 70; break;
}
hitbox_active = false;
with pHitBox {
	if ("owner" in self) && owner == other.id {
		other.hitbox_active = true;
	}
}

switch piece {
    case "N":
    hsp *= free ? 0.95 : 0.8;
    if free vsp = clamp(vsp+0.7, -100, 20)
    sprite_index = sprite_get("Nidle")
    wire_sprite = sprite_get("Nwire")
    image_index = 0;
    break;
    
    case "P":
    hsp *= free ? 0.95 : 0.8;
    if free vsp = clamp(vsp+0.7, -100, 20)
    sprite_index = sprite_get("idle")
    wire_sprite = sprite_get("Pwire")
    image_index = 0;
    break;
    
    case "R":
    hsp *= free ? 0.95 : 0.8;
    if free vsp = clamp(vsp+0.7, -100, 20)
    sprite_index = sprite_get("Ridle")
    wire_sprite = sprite_get("Rwire")
    image_index = 0;
    break;
    
    case "B":
    hsp *= free ? 0.95 : 0.8;
    if free vsp = clamp(vsp+0.7, -100, 20)
    sprite_index = sprite_get("Bidle")
    wire_sprite = sprite_get("Bwire")
    image_index = 0;
    break;
    
    case "K":
    hsp *= free ? 0.95 : 0.8;
    if free vsp = clamp(vsp+0.7, -100, 20)
    sprite_index = sprite_get("Kidle")
    wire_sprite = sprite_get("Kwire")
    image_index = 0;
    break;
    
    case "Q":
    hsp *= free ? 0.95 : 0.8;
    if free vsp = clamp(vsp+0.7, -100, 20)
    sprite_index = sprite_get("Qidle")
    wire_sprite = sprite_get("Qwire")
    image_index = 0;
    break;
}

//hit with hitbox
var hitbox = noone;
if instance_place(x, y, pHitBox) {
	var currentPriority = 0;
	with pHitBox {
		if (instance_place(x, y, other)) && !(player_id == other.player_id && (attack == AT_FTHROW || attack == AT_DSPECIAL_2 || attack == AT_UTHROW || attack == AT_FSPECIAL_2 || attack == AT_NSPECIAL_2)) {
			with player_id {
				var hitboxParent = get_hitbox_value(other.attack, other.hbox_num, HG_PARENT_HITBOX);
				var hboxNum = other.hbox_num;
	            if (hitboxParent != 0) {
	                hboxNum = hitboxParent;
	            }
				var hitboxPriority = get_hitbox_value(other.attack, hboxNum, HG_PRIORITY);
			}
			if hitboxPriority > currentPriority {
				currentPriority = hitboxPriority;
				hitbox = id;
			}
		}
	}
}

if (hitbox != noone) {
    if !(hitbox.player_id == player_id && (hitbox.attack == AT_FTHROW || hitbox.attack == AT_USPECIAL)) {
        with hitbox.player_id {
            var hitboxParent = get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_PARENT_HITBOX);
            var hboxNum = hitbox.hbox_num;
            if (hitboxParent != 0) {
                hboxNum = hitboxParent;
            }
            var baseHitpause = get_hitbox_value(hitbox.attack, hboxNum, HG_BASE_HITPAUSE);
            var hitpauseScaling = get_hitbox_value(hitbox.attack, hboxNum, HG_HITPAUSE_SCALING);
            var extraHitpause = get_hitbox_value(hitbox.attack, hboxNum, HG_EXTRA_HITPAUSE);
            var _hitpause = baseHitpause + (get_player_damage(hit_player+1) * hitpauseScaling * 0.05);
            var hitboxGroup = get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_HITBOX_GROUP);
            var hitboxSound = get_hitbox_value(hitbox.attack, hboxNum, HG_HIT_SFX);
            var hitboxAngle = get_hitbox_value(hitbox.attack, hboxNum, HG_ANGLE);
            var hitboxAngleFlipper = get_hitbox_value(hitbox.attack, hboxNum, HG_ANGLE_FLIPPER);
            var hitboxDamage = get_hitbox_value(hitbox.attack, hboxNum, HG_DAMAGE);
            
            var baseKnockback = get_hitbox_value(hitbox.attack, hboxNum, HG_BASE_KNOCKBACK);
            var knockbackScaling = get_hitbox_value(hitbox.attack, hboxNum, HG_KNOCKBACK_SCALING);
            var hitstunMultiplier = get_hitbox_value(hitbox.attack, hboxNum, HG_HITSTUN_MULTIPLIER);
            var hitboxSprDir = spr_dir;
            
            var hitboxEffect = get_hitbox_value(hitbox.attack, hboxNum, HG_EFFECT);
            
            var hitboxCat = get_attack_value(hitbox.attack, AG_CATEGORY);
            
            var hitboxDistX = other.x - hitbox.x;
            var hitboxDistY = other.y - hitbox.y;
            
            var oppDistX = other.x - x;
            var oppDistY = other.y - y;
            
            var oppHsp = hsp;
        }
        
        if (hitbox != prevHitboxID && (hitboxGroup != prevHitboxGroup || hitboxGroup == -1)) {
        	var superarmour = false;
            
            var playerHitstun = (baseKnockback*4*((knockback_adj-1)*0.6 + 1) + damage*0.12*knockbackScaling*4*0.65*knockback_adj);
            var playerKnockback = baseKnockback + (damage*knockbackScaling*0.12*knockback_adj);
            
            if prevHitboxAttack != hitbox.attack || !hitbox_active {
            	decreased_var = false;
            }
            
            prevHitboxID = hitbox;
            prevHitboxNumber = hboxNum;
            prevHitboxAttack = hitbox.attack;
            prevHitboxGroup = hitboxGroup;
            
            hitstun = playerHitstun;
            
            if (hitboxAngle == 361) { //soccerguy angle
            if (free) {
                hitAngle = 45;
            } else {
                hitAngle = 40;
            }
            } else {
                hitAngle = hitboxAngle;
            }
            
            hitKnockback = playerKnockback;
            hitXDir = hitboxSprDir;
            hitYDir = 1;
            switch (hitboxAngleFlipper) {
                case 0:
                break;
                
                case 1:
                hitAngle = darctan2(-oppDistY + 40, hitboxSprDir*oppDistX);
                break;
                
                case 2:
                hitAngle = darctan2(oppDistY + 40, -hitboxSprDir*oppDistX);
                break;
                
                case 3:
                hitXDir = sign(hitboxDistX);
                hitAngle = darctan2(dsin(hitAngle), abs(dcos(hitAngle)));
                break;
                
                case 4:
                hitXDir = -sign(hitboxDistX);
                hitAngle = darctan2(dsin(hitAngle), abs(dcos(hitAngle)));
                break;
                
                case 5:
                hitXDir *= -1;
                break;
                
                case 6:
                hitXDir = sign(oppDistX);
                hitAngle = darctan2(dsin(hitAngle), abs(dcos(hitAngle)));
                break;
                
                case 7:
                hitXDir = -sign(oppDistX);
                hitAngle = darctan2(dsin(hitAngle), abs(dcos(hitAngle)));
                break;
                
                case 8:
                hitAngle = darctan2(-hitboxDistY, hitboxSprDir*hitboxDistX);
                break;
                
                case 9:
                hitAngle = darctan2(hitboxDistY, -hitboxSprDir*hitboxDistX);
                break;
                
                case 10:
                if (sign(dcos(hitAngle)) != sign(oppHsp)) {
                	hitXDir = -hitboxSprDir;
                }
                break;
            }
            
            with hitbox.player_id {
                sound_play(get_hitbox_value(hitbox.attack, hboxNum, HG_HIT_SFX));
                var hitboxVfx = get_hitbox_value(hitbox.attack, hboxNum, HG_VISUAL_EFFECT);
                if hitboxVfx == 0 hitboxVfx = 301
                var hitboxVfxX = get_hitbox_value(hitbox.attack, hboxNum, HG_VISUAL_EFFECT_X_OFFSET);
                var hitboxVfxY = get_hitbox_value(hitbox.attack, hboxNum, HG_VISUAL_EFFECT_Y_OFFSET);
                spawn_hit_fx(other.x, other.y - 30, hitboxVfx);
                if (hitboxCat != 2) && !superarmour {
                    hitpause = true;
                    hitstop_full = _hitpause;
                    hitstop = _hitpause;
                    old_hsp = hsp;
                    old_vsp = vsp;
                }
            }
            
            
            
            if !superarmour && !king_armour {
            	
            	if piece == "Q" && perform_attack && window < 3 {
            		window = 3;
            		window_timer = 0;
            	} else if !(piece == "Q" && window >= 3) {
            		perform_attack = false;
            		window = 0;
					window_timer = 0;
            	}
                
                image_angle = 0;
                
                hitpause = true;
                hitstop_full = _hitpause + extraHitpause;
                hitstop = _hitpause + extraHitpause;
                
                rook_cannon = undefined;
				attack_timer = 0;
				missile_timer = 0;
				range_dist = 0;
				if target_player != undefined && instance_exists(target_player) {
					target_player.draw_reticle = false;
				}
				target_player = undefined;
				missile_angle = 0;
				draw_missile = false;
				has_hit = false;
            }
        }
    }
} else {
	prevHitboxGroup = undefined;
}

if not_hitpause_timer == 1 && !decreased_var {
	hp -= 1;
}

if not_hitpause_timer == 10 && !decreased_var && !has_hit {
	if !decreased_var {
		decreased_var = true;
	}
	if !hitbox_active && hp > 0 {
	    var hitbox = create_hitbox(AT_FTHROW, 1, x, y - 20);
	        hitbox.owner = id;
	}
}
/*
if hp < 0 {
	die_timer = 60;
}
*/

if (!hitpause) && (hitstun <= 0) {
    hitstun = 0;
    prevHitboxGroup = undefined;
}

if (hitpause) {
    if (hitstop <= 0) {
        hitpause = false;
        hitstop = 0;
        hitstop_full = 0;
    }
    
    if (hitstop <= 0) {
        if (vsp > 0) && (!free) && (hitstop == 0) {
            vsp *= -0.5;
        }
        
        hsp = (hitXDir * hitKnockback * dcos(hitAngle));
        vsp = (-hitYDir * hitKnockback * dsin(hitAngle));
    }
    
    if (!free) && (vsp > 0) {
        vsp *= -1;
    }
}

if spawn_afterimage {
    for (var i = array_length(uspec_afterimages) - 1; i >= 0; i--) {
        if i == 0 {
            uspec_afterimages[i] = [x,y,20];
        } else {
            uspec_afterimages[i] = uspec_afterimages[i - 1];
        }
    }
    if !hitbox_active && !has_hit {
        var hitbox = create_hitbox(AT_FTHROW, 1, x, y - 20);
            hitbox.owner = id;
    }
    
    spawn_afterimage = false;
}

for (var i = array_length(uspec_afterimages) - 1; i >= 0; i--) {
    if uspec_afterimages[i,2] > 0 {
        uspec_afterimages[i,2]--;
    }
}

if !perform_attack {
	rook_cannon = undefined
}

if perform_attack {
    switch piece {
        case "N":
        do_move(AT_UTHROW);
        if window == 1 {
        	progress_attack = false;
        }
        if progress_attack && window == 2 && window_timer > 6 {
        	window = 3;
        	window_timer = 0;
        	hsp -= 12*spr_dir;
            vsp -= 2;
            progress_attack = false;
            sound_play(sound_get("gun_shoot"))
        }
        break;
        
        case "Q":
        progress_attack = false;
        do_move(AT_FSPECIAL_2);
        if window == 2 {
	        var num_hitboxes = 15;
	        var dist = 30;
	        for (var i = 0; i < num_hitboxes; i++) {
	            var startx = x+(28 + dist*i*dcos(player_id.laser_angle))*spr_dir;
	            var starty = y-90 - dist*i*dsin(player_id.laser_angle);
	            create_hitbox(AT_FSPECIAL_2, 1, floor(startx), floor(starty))
	        }
	    } else if window == 3 {
	        player_id.pawn_meter = 0;
	        hp = player_id.hp_P;
	        player_id.queen_active = false;
			player_id.queen_timer = 0;
	    }
        break;
        
        case "P":
        progress_attack = false;
        if player_id.pawn_meter == 7 && player_id.piece != "Q" {
        	do_move(AT_DTHROW);
        	hp = player_id.hp_Q;
        } else {
        	sound_play(sound_get("lol"))
        	perform_attack = false;
        	player_id.shake_timer = 10;
        }
        break;
        
        case "R":
        do_move(AT_NSPECIAL_2);
        if window == 1 {
        	progress_attack = false;
	        if window_timer == 20 {
	            rook_cannon = [x, y - 30, 0, 0]
	        } else {
	            rook_cannon = undefined;
	        }
	    }
	    if window > 1 && window < 4 {
	        rook_cannon[0] = x
	        rook_cannon[1] = y - 30
	    }
	    if window == 2 {
	        if window_timer > 6 && progress_attack {
	            window = 3;
	            window_timer = 0;
	            progress_attack = false;
	        }
	        
	        if player_id.left_down && rook_cannon[2] < 90 {
	            rook_cannon[2] += 2;
	            if window_timer mod 5 == 0 {
	                sound_play(asset_get("sfx_propeller_dagger_loop"))
	            }
	        } else if player_id.right_down && rook_cannon[2] > -90 {
	            rook_cannon[2] -= 2;
	            if window_timer mod 5 == 0 {
	                sound_play(asset_get("sfx_propeller_dagger_loop"))
	            }
	        }
	    }
	    
	    if window == 3 {
	        rook_cannon[3] = ceil(window_timer/4);
	        var proj_spd = 12;
	        var offset = 30;
	        if window_timer == 5 {
	            var Rproj = create_hitbox(AT_NSPECIAL_2, 1, x - round(offset*dsin(rook_cannon[2])), y-30 - round(offset*dcos(rook_cannon[2])));
	                Rproj.hsp = -proj_spd*dsin(rook_cannon[2])
	                Rproj.vsp = -proj_spd*dcos(rook_cannon[2])
	                Rproj.grav = 0.4;
	                var dir = -sign(Rproj.hsp)
                	if dir == 0 dir = spr_dir;
	                Rproj.spr_dir = dir;
	        }
	    }
	    
	    if window == 4 {
        	rook_cannon[2] *= 0.6;
        	rook_cannon[1] += 1;
	    }
        break;
        
        case "B":
        do_move(AT_DSPECIAL_2);
        can_move = false;
	    if window == 1 {
	        if attack_timer == 1 {
	        	progress_attack = false;
	        	has_hit = false;
	        	with player_id {
	        		set_num_hitboxes(AT_DSPECIAL_2, 0);
	        	}
	            vsp *= 0.5;
	            hsp *= 0.5;
	            target_player = undefined;
	            missile_angle = 0;
	            draw_missile = false;
	            sound_play(sound_get("rune_search_start"))
	        }
	        if attack_timer < 60 {
	            range_dist += 3;
	        } else if attack_timer < 120 {
	            range_dist -= 3;
	        } else {
	            window = 4;
	            window_timer = 0;
	            sound_play(sound_get("rune_search_end"))
	            sound_stop(sound_get("rune_search_start"))
	            bishop_cooldown = 0;
	        }
	        if progress_attack && attack_timer > 6 && target_player != undefined {
	            window = 2;
	            window_timer = 0;
	            draw_missile = true;
	            progress_attack = false;
	            missile_angle = point_direction(x, y - 30, target_player.x, target_player.y) + 90
	            sound_stop(sound_get("rune_search_start"))
	        }
	    }
	    
	    if draw_missile {
	        missile_timer++;
	    } else {
	        missile_timer = 0;
	    }
	    
	    if window == 2 {
	        range_dist = 0;
	        if window_timer mod 7 == 0 {
	            sound_play(sound_get("beep"))
	        }
	    }
	    
	    if target_player == undefined {
		    with oPlayer {
		        if id != other.player_id && distance_to_point(other.x, other.y) < other.range_dist {
		            other.target_player = id;
		            draw_reticle = true;
		        }
		    }
	    }
	    
	    if window == 3 {
	    	if window_timer == 1 {
	    		var _hbox = create_hitbox(AT_DSPECIAL_2, 2, x, y);
	    			_hbox.owner = id;
	    	}
	        //fall_through = true;
	        
	        if has_hit {
	        	if target_player != undefined {
		            target_player.draw_reticle = false;
		        }
	        	player_id.piece_id = undefined;
	        	draw_missile = false;
		        range_dist = 0;
		        missile_timer = 0;
		        missile_angle = 0;
		        perform_attack = false;
	            instance_destroy();
	            exit;
	        } else if distance_to_point(target_player.x, target_player.y) < 5 && window_timer > 1 {
	            //sound_play(asset_get("sfx_ell_fist_explode"));
	            //spawn_hit_fx(x, y, 143);
	            window = 4;
	            window_timer = 0;
	            bishop_cooldown = 0;
	            //instance_destroy();
	            exit;
	        }
	        
	        var spd = 12;
	        if target_player != undefined {
	            missile_angle = point_direction(x, y, target_player.x, target_player.y) + 90
	            hsp = spd*dsin(missile_angle)
	            vsp = spd*dcos(missile_angle)
	            if attack_timer mod 5 == 0 spawn_hit_fx(x, y - 30, player_id.proj_particle);
	        } else {
	            vsp = -spd;
	            missile_angle = 180;
	        }
	        
	        if missile_timer > 40 {
	            window = 4;
	            window_timer = 0;
	            bishop_cooldown = 0;
	        }
	    }
	    
	    if window == 4 {
	        hsp *= 0.9;
	        vsp *= 0.9;
	        draw_missile = false;
	        range_dist = 0;
	        missile_timer = 0;
	        missile_angle = 0;
	        if target_player != undefined {
	            target_player.draw_reticle = false;
	        }
	    }
        break;
        
        case "K":
        if player_id.special_counter == 2 && !king_armour && armour_cooldown == 0 {
            king_armour = true;
            armour_timer = 0;
            perform_attack = false;
            sound_play(asset_get("sfx_metal_hit_strong"))
        }
        break;
        
        default:
        perform_attack = false;
        break;
    }
}

attack_timer++;
window_timer++;

if king_armour {
	armour_timer++;
	if armour_timer > 120 {
		king_armour = false;
		armour_timer = 0;
		armour_cooldown = 120;
	}
}

if armour_cooldown > 0 {
	armour_cooldown--;
}

if !hitpause {
	not_hitpause_timer++
} else {
	not_hitpause_timer = 0;
}

if gonnadie {
	die_timer++;
}

bishop_cooldown++;

if hp <= 0 {
	if !gonnadie {
		//sound_play(asset_get("sfx_ell_fspecial_charge"))
	}
	gonnadie = true;
	if die_timer mod 10 == 0 {
		sound_play(sound_get("prebomb"))
	}
	if die_timer > 50 {
		create_hitbox(AT_FTHROW, 2, x, y-30)
		sound_play(asset_get("sfx_ell_fist_explode"))
		spawn_hit_fx(x, y-30, 3)
		player_id.piece_id = undefined;
		instance_destroy();
		exit;
	}
}

if y > room_height {
	player_id.piece_id = undefined;
	if target_player != undefined && instance_exists(target_player) {
		target_player.draw_reticle = false;
	}
	instance_destroy();
	exit;
}

#define do_move(attack)
with player_id {
	var spr = get_attack_value(attack, AG_SPRITE);
	var num_windows = get_attack_value(attack, AG_NUM_WINDOWS);
	var cat = get_attack_value(attack, AG_CATEGORY);
	var charge_win = get_attack_value(attack, AG_STRONG_CHARGE_WINDOW);
	var has_landinglag = get_attack_value(attack, AG_HAS_LANDING_LAG);
	var landinglag = get_attack_value(attack, AG_LANDING_LAG);
	var window_length = get_window_value(attack, other.window, AG_WINDOW_LENGTH);
	var has_grav = get_window_value(attack, other.window, AG_USES_CUSTOM_GRAVITY);
	var win_type = get_window_value(attack, other.window, AG_WINDOW_TYPE);
}

sprite_index = spr;

//window stuff
switch win_type {
	case 9:
	if window_timer == window_length window_timer = 0;
	break;
	
	case 10:
	if !free window++
	window_timer = 0;
	break;
	
	case 7:
	if window_timer >= window_length {
		next_state = PS_PRATFALL;
		exit_state = true;
	}
	break;
	
	default:
	if window_timer >= window_length {
		window++;
		window_timer = 0;
	}
	break;
}

with player_id {
	var window_length = get_window_value(attack, other.window, AG_WINDOW_LENGTH);
	var window_start = get_window_value(attack, other.window, AG_WINDOW_ANIM_FRAME_START);
	var window_frames = get_window_value(attack, other.window, AG_WINDOW_ANIM_FRAMES);
	var has_fric = get_window_value(attack, other.window, AG_WINDOW_HAS_CUSTOM_FRICTION);
	var ground_fric = get_window_value(attack, other.window, AG_WINDOW_CUSTOM_GROUND_FRICTION);
	var air_fric = get_window_value(attack, other.window, AG_WINDOW_CUSTOM_AIR_FRICTION);
	var _hsp = get_window_value(attack, other.window, AG_WINDOW_HSPEED);
	var _hsp_type = get_window_value(attack, other.window, AG_WINDOW_HSPEED_TYPE);
	var _vsp = get_window_value(attack, other.window, AG_WINDOW_VSPEED);
	var _vsp_type = get_window_value(attack, other.window, AG_WINDOW_VSPEED_TYPE);
	var has_sfx = get_window_value(attack, other.window, AG_WINDOW_HAS_SFX);
	var _sfx = get_window_value(attack, other.window, AG_WINDOW_SFX);
	var _sfx_frame = get_window_value(attack, other.window, AG_WINDOW_SFX_FRAME);
	var _grav = get_window_value(attack, other.window, AG_WINDOW_CUSTOM_GRAVITY);
}

//hsp/vsp
switch _hsp_type {
	case 0: if window_timer == 0 hsp += spr_dir*_hsp break;
	case 1: hsp = spr_dir*_hsp break;
	case 2: if window_timer == 0 hsp = spr_dir*_hsp break;
}
switch _vsp_type {
	case 0: if window_timer == 0 vsp += _vsp break;
	case 1: vsp = _vsp break;
	case 2: if window_timer == 0 vsp = _vsp break;
}

//sfx
if has_sfx {
	if window_timer == _sfx_frame sound_play(_sfx)
}

image_index = floor(window_start + (window_timer*window_frames/window_length))

if window == num_windows && window_timer == window_length-1 {
	perform_attack = false;
	window = 0;
	window_timer = 0;
	attack_timer = 0;
	if piece == "Q" {
		piece = "P"
	} else if piece == "P" {
		piece = "Q"
		if !player_id.queen_active {
			player_id.queen_timer = player_id.queen_timer_max;
		}
		player_id.queen_active = true;
	}
	mask_index = sprite_get(piece + "hurtbox")
}

//create hitboxes

with player_id {
	var num_windows = get_attack_value(attack, AG_NUM_WINDOWS);
	var cat = get_attack_value(attack, AG_CATEGORY);
	var charge_win = get_attack_value(attack, AG_STRONG_CHARGE_WINDOW);
	var has_landinglag = get_attack_value(attack, AG_HAS_LANDING_LAG);
	var landinglag = get_attack_value(attack, AG_LANDING_LAG);
	var has_grav = get_window_value(attack, other.window, AG_USES_CUSTOM_GRAVITY);
	var win_type = get_window_value(attack, other.window, AG_WINDOW_TYPE);
	var window_length = get_window_value(attack, other.window, AG_WINDOW_LENGTH);
	var window_start = get_window_value(attack, other.window, AG_WINDOW_ANIM_FRAME_START);
	var window_frames = get_window_value(attack, other.window, AG_WINDOW_ANIM_FRAMES);
	var has_fric = get_window_value(attack, other.window, AG_WINDOW_HAS_CUSTOM_FRICTION);
	var ground_fric = get_window_value(attack, other.window, AG_WINDOW_CUSTOM_GROUND_FRICTION);
	var air_fric = get_window_value(attack, other.window, AG_WINDOW_CUSTOM_AIR_FRICTION);
	var _hsp = get_window_value(attack, other.window, AG_WINDOW_HSPEED);
	var _hsp_type = get_window_value(attack, other.window, AG_WINDOW_HSPEED_TYPE);
	var _vsp = get_window_value(attack, other.window, AG_WINDOW_VSPEED);
	var _vsp_type = get_window_value(attack, other.window, AG_WINDOW_VSPEED_TYPE);
	var has_sfx = get_window_value(attack, other.window, AG_WINDOW_HAS_SFX);
	var _sfx = get_window_value(attack, other.window, AG_WINDOW_SFX);
	var _sfx_frame = get_window_value(attack, other.window, AG_WINDOW_SFX_FRAME);
	var _grav = get_window_value(attack, other.window, AG_WINDOW_CUSTOM_GRAVITY);
	var num_hitboxes = get_num_hitboxes(attack);
	
	for (var i = 1; i < num_hitboxes+1; i++) {
		
		var hitbox_window = get_hitbox_value(attack, i, HG_WINDOW);
		var hitbox_x = get_hitbox_value(attack, i, HG_HITBOX_X);
		var hitbox_y = get_hitbox_value(attack, i, HG_HITBOX_Y);
		var hitbox_frame = get_hitbox_value(attack, i, HG_WINDOW_CREATION_FRAME);
		var hitbox_angle = get_hitbox_value(attack, i, HG_ANGLE);
		var hitbox_group = get_hitbox_value(attack, i, HG_HITBOX_GROUP);
		var hitbox_lifetime = get_hitbox_value(attack, i, HG_LIFETIME);
		var hit_lockout = get_hitbox_value(attack, i, HG_HIT_LOCKOUT);
		
		if other.window == hitbox_window && other.window_timer == hitbox_frame+1 {
			var hitbox = create_hitbox(attack,i,other.x + hitbox_x*other.spr_dir,other.y + hitbox_y);
				hitbox.spr_dir = other.spr_dir;
				hitbox.hsp *= spr_dir*other.spr_dir
		}
	}
}