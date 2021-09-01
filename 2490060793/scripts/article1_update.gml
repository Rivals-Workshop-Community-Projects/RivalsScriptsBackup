//article1_update

timer++;

if (timer == 4 && !player_id.has_hit) || (hitstop == 0 && hitpause == true) {
	var orb_hitbox = create_hitbox(AT_NSPECIAL, 3, round(x), round(y));
        orb_hitbox.owner = id;
        orb_hitbox.spr_dir = sign(hsp);
}

if die {
	commit_die();
	exit;
}

if timer < 30 && image_index < 4 {
    if timer mod 4 == 0 image_index++;
} else if pulse && pulse_cooldown == 0 {
	pulse_timer++;
	if pulse_timer == 6 {
		create_hitbox(AT_DSPECIAL, 1, round(x), round(y))
	}
	anim_speed = 0;
	sprite_index = sprite_get("orb_pulse")
	image_index = floor(pulse_timer/3)
	if image_index == 7 {
		pulse = false;
		pulse_timer = 0;
		pulse_cooldown = 20;
		sprite_index = sprite_get("orb")
		image_index = 4;
	}
} else {
	if sprite_index != sprite_get("orb_idle") image_index = 0;
	sprite_index = sprite_get("orb_idle");
	if timer mod 10 == 0 image_index++;
}

if pulse_cooldown > 0 {
	pulse_cooldown--;
}

//air friction

if abs(hsp) > 0.2 {
    hsp *= 0.9
} else {
    hsp = 0;
}

//wall collision
if position_meeting(x, y, asset_get("par_block")) && !has_reversed {
	has_reversed = true;
	x -= hsp;
	hsp *= -0.5;
}

if abs(vsp) > 0.2 {
    vsp *= 0.9
} else {
    vsp = 0;
}

if getting_bashed {
	was_bashed = true;
}

if was_bashed && (abs(hsp) > 2 || abs(vsp) > 2) {
	commit_die();
}

if timer mod 4 == 0 {
    for (var i = 0; i < array_length(trail_array); i++) {
        if hsp == 0 {
            trail_array[i] = [undefined,undefined]
        } else if i == array_length(trail_array)-1 {
            trail_array[i] = [x,y]
        } else {
            trail_array[i] = trail_array[i+1]
        }
    }
}

//hit with hitbox
var hitbox = noone;
if instance_place(x, y, pHitBox) {
	var currentPriority = 0;
	with pHitBox {
		if (instance_place(x, y, other)) {
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

if (hitbox != noone) && (timer > 10) {
    with hitbox.player_id {
        var hitboxParent = get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_PARENT_HITBOX);
        var hboxNum = hitbox.hbox_num;
        if (hitboxParent != 0) {
            hboxNum = hitboxParent;
        }
        var baseHitpause = get_hitbox_value(hitbox.attack, hboxNum, HG_BASE_HITPAUSE);
        var hitboxLifetime = get_hitbox_value(hitbox.attack, hboxNum, HG_LIFETIME);
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
        var playerHitstun = (baseKnockback*4*((knockback_adj-1)*0.6 + 1) + damage*0.12*knockbackScaling*4*0.65*knockback_adj);
        var playerKnockback = baseKnockback + (damage*knockbackScaling*0.12*knockback_adj);
        
        if prevHitboxAttack != hitbox.attack {
        	decreased_var = false;
        }
        
        prevHitboxID = hitbox;
        prevHitboxNumber = hboxNum;
        prevHitboxAttack = hitbox.attack;
        prevHitboxGroup = hitboxGroup;
        
        var move_orb = false;
        if hitbox.player_id == player_id && (hitbox.attack == AT_BAIR && hitbox.hbox_num == 1) || (hitbox.attack == AT_DATTACK && hitbox.hbox_num == 2) || (hitbox.attack == AT_JAB && hitbox.hbox_num == 1) || hitbox.attack == AT_DTILT {
        	move_orb = true;
        }
        
        var is_opp = false;
		if hitbox.player_id != player_id is_opp = true;
        
        var is_tipper = false;
        if (hitbox.player_id == player_id && !(hitbox.attack == AT_NSPECIAL || hitbox.attack == AT_DSPECIAL || hitbox.attack == AT_DTILT || hitbox.attack == AT_BAIR || hitbox.attack == AT_DATTACK || (hitbox.attack == AT_JAB && hitbox.hbox_num == 1))) {
        	is_tipper = true;
        }
        
        if is_tipper {
	        var tipper_num = undefined;
	        switch hitbox.attack {
			    case AT_FTILT:
			    tipper_num = 2;
			    break;
			    
			    case AT_USTRONG:
			    tipper_num = 3;
			    break;
			    
			    case AT_UAIR:
			    tipper_num = 2;
			    break;
			    
			    case AT_FSTRONG:
			    tipper_num = 2;
			    break;
			    
			    case AT_DSTRONG:
			    switch hitbox.hbox_num {
			    	case 1: case 3: tipper_num = 3 break;
			    	case 2: case 4: tipper_num = 4 break;
			    }
			    break;
			    
			    case AT_DAIR:
			    tipper_num = 2;
			    break;
			    
			    case AT_FAIR:
			    tipper_num = 2;
			    break;
			    
			    case AT_UTILT:
			    switch hitbox.hbox_num {
			    	case 1: case 4: tipper_num = 4 break;
			    	case 2: case 5: tipper_num = 5 break;
			    	case 3: case 6: tipper_num = 6 break;
			    }
			    break;
			    
			    case AT_FSPECIAL:
			    tipper_num = 2;
			    break;
			    
			    case AT_NAIR:
			    switch hitbox.hbox_num {
			    	case 1: case 8: tipper_num = 8 break;
			    	case 2: case 9: tipper_num = 9 break;
			    	case 3: case 10: tipper_num = 10 break;
			    	case 4: case 11: tipper_num = 11 break;
			    	case 5: case 12: tipper_num = 12 break;
			    	case 6: case 13: tipper_num = 13 break;
			    	case 7: case 14: tipper_num = 14 break;
			    }
			    break;
			    
			    case AT_JAB:
			    tipper_num = 3;
			    break;
			    
			    case AT_USPECIAL:
			    switch hitbox.hbox_num {
			    	case 1: case 5: tipper_num = 5 break;
			    	case 2: case 6: tipper_num = 6 break;
			    	case 3: case 7: tipper_num = 7 break;
			    	case 4: tipper_num = 4 break;
			    }
			    break;
			}
        }
        
        with hitbox.player_id {
			var player_hit = has_hit_player;
			var tipper_hit = is_tipper;
			
            var hitboxVfx = get_hitbox_value(hitbox.attack, hboxNum, HG_VISUAL_EFFECT);
            if hitboxVfx == 0 hitboxVfx = 301
            var hitboxVfxX = get_hitbox_value(hitbox.attack, hboxNum, HG_VISUAL_EFFECT_X_OFFSET);
            var hitboxVfxY = get_hitbox_value(hitbox.attack, hboxNum, HG_VISUAL_EFFECT_Y_OFFSET);
            if is_tipper || is_opp {
	            hitpause = true;
	            hitstop_full = baseHitpause;
	            hitstop = baseHitpause;
	            has_hit = true;
	            old_hsp = hsp;
	            old_vsp = vsp;
	            hsp = 0;
	            vsp = 0;
            }
            
            if is_tipper {
            	spawn_hit_fx(other.x, other.y, tipper_hfx)
            	sound_play(asset_get("sfx_absa_kickhit"))
            	
	            var tipper_dmg = get_hitbox_value(hitbox.attack, tipper_num, HG_DAMAGE);
				var tipper_angle = get_hitbox_value(hitbox.attack, tipper_num, HG_ANGLE);
				var tipper_flipper = get_hitbox_value(hitbox.attack, tipper_num, HG_ANGLE_FLIPPER);
				var tipper_bkb = get_hitbox_value(hitbox.attack, tipper_num, HG_BASE_KNOCKBACK);
				var tipper_kbs = get_hitbox_value(hitbox.attack, tipper_num, HG_KNOCKBACK_SCALING);
				var tipper_bhp = get_hitbox_value(hitbox.attack, tipper_num, HG_BASE_HITPAUSE);
				var tipper_hps = get_hitbox_value(hitbox.attack, tipper_num, HG_HITPAUSE_SCALING);
				var tipper_effect = get_hitbox_value(hitbox.attack, tipper_num, HG_EFFECT);
				var tipper_sfx = get_hitbox_value(hitbox.attack, tipper_num, HG_HIT_SFX);
				var tipper_vfx = get_hitbox_value(hitbox.attack, tipper_num, HG_VISUAL_EFFECT);
				
				if tipper_vfx == 0 tipper_vfx = 301
				
				if player_hit {
					tipper_dmg = 0;
				}
				
				if tipper_hit {
					//tipper_vfx = 1;
				}
	            
				set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, tipper_dmg);
				set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, tipper_angle);
				set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, tipper_flipper);
				set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, tipper_bkb);
				set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, tipper_kbs);
				set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, tipper_bhp);
				set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, tipper_hps);
				set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, tipper_effect);
				set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, tipper_sfx);
				set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, tipper_vfx);
				
				//spawn_hit_fx(other.x, other.y, tipper_vfx);
				create_hitbox(AT_NSPECIAL, 2, round(other.x), round(other.y))
				sound_play(tipper_sfx);
				
            	
	            meter_prev = meter_cur;
	            meter_cur = clamp(meter_cur + other.refund_amount, 0, meter_max);
	            meter_flash_timer = meter_flash_val;
		        spark_timer = spark_val;
		        spark_sprite = sprite_get("sparks" + string((timer mod 2) + 1));
		        has_increased = true;
		        shake_camera(10,2)
				instance_destroy(other)
            	exit;
            } else if is_opp && hitbox.type == 1 {
            	with other {
            		spawn_hit_fx(x, y, player_id.orb_explosion_vfx)
            	}
            	sound_play(hitboxSound)
            	sound_play(asset_get("sfx_absa_jab1"))
            	shake_camera(6,2)
            	instance_destroy(other)
            	exit;
            } else if move_orb && !has_hit_player {
            	other.old_hsp = sign(dsin(hitboxAngle))*spr_dir*14;
            	if hitboxAngleFlipper == 5 other.old_hsp *= -1;
            	other.hitpause = true;
            	other.hitstop = 10;
            	sound_play(hitboxSound)
            	spawn_hit_fx(other.x, other.y, hitboxVfx)
            	
            	hitpause = true;
	            hitstop_full = baseHitpause;
	            hitstop = baseHitpause;
	            has_hit = true;
	            old_hsp = hsp;
	            old_vsp = vsp;
	            hsp = 0;
	            vsp = 0;
	            shake_camera(6, 2)
	            
	            meter_prev = meter_cur;
	            meter_cur = clamp(meter_cur + hit_value, 0, meter_max);
	            meter_flash_timer = meter_flash_val;
	            spark_timer = spark_val;
    			spark_sprite = sprite_get("sparks" + string((timer mod 2) + 1));
            }
        }
    }
} else {
	prevHitboxGroup = undefined;
}

if hitpause {
	if hitstop <= 0 {
		hsp = old_hsp;
		hitpause = false;
	}
}

#define commit_die
spawn_hit_fx(x, y, player_id.orb_explosion_vfx)
instance_destroy()
exit;