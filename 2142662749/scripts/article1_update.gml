//article1_update
var playerDistX = x - player_id.x;
var playerDistY = y - player_id.y;
var playerDistAbs = sqrt(playerDistX*playerDistX + playerDistY*playerDistY);

prev_hsp = buffer_hsp;
buffer_hsp = hsp;

prev_vsp = buffer_vsp;
buffer_vsp = vsp;

//hit detection
var hitbox = noone;
if instance_place(x, y, pHitBox) {
	var currentPriority = 0;
	with pHitBox {
		if (instance_place(x, y, other)) {
			with player_id {
				var hitboxPriority = get_hitbox_value(other.attack, other.hbox_num, HG_PRIORITY);
			}
			if hitboxPriority > currentPriority {
				currentPriority = hitboxPriority;
				hitbox = id;
			}
		}
	}
}

//holding down allows Zo to pass through plats
if (state != PS_ATTACK_AIR) && (state != PS_ATTACK_GROUND) && (!shieldActive) {
	if place_meeting(x, y, asset_get("par_jumpthrough")) {
	    if (free && player_id.down_down && vsp >= 0) || (!free && player_id.down_hard_pressed) {
	        y += 1;
	        can_be_grounded = false;
	    } else {
	        can_be_grounded = true;
	    }
	}
}

//zo knockback rune
if player_id.runeK { //Zo takes less knockback.
    knockback_adj = 0.6;
} else {
    knockback_adj = 1;
}

//parried
if (state != PS_ATTACK_AIR) && (state != PS_ATTACK_GROUND) && (was_parried) && (state != PS_DEAD) {
    if (free) {
        state = PS_PRATFALL;
        parry_stun = 0;
    } else {
        state = PS_PRATLAND;
    }
    was_parried = false;
    state_timer = 0;
}

var changeState = false;

//bashed
if (getting_bashed) {
    state = PS_HITSTUN;
    state_timer = 0;
    changeState = true;
    image_angle = 0;
}


//check if player/zo is offstage
var playerOffstage = true;
var zoOffstage = true;
if player_id.free {
	for (var i = 0; i < 5; i++) {
	    with player_id {
	        if (position_meeting(x, y+(i*100), asset_get("par_block"))) {
	            playerOffstage = false;
	            break;
	        }
	    }
	}
} else {
	playerOffstage = false;
}

if free {
	for (var i = 0; i < 5; i++) {
	    if (position_meeting(x, y+(i*100), asset_get("par_block"))) {
	        zoOffstage = false;
	        break;
	    }
	}
} else {
	zoOffstage = false;
}

var nearLedge = false;
var ledgeDist = 50;
if (!free) && (!position_meeting(x + ledgeDist, y + 5, asset_get("par_block")) || !position_meeting(x - ledgeDist, y + 5, asset_get("par_block"))) {
    nearLedge = true;
}

//hit with hitbox
if (hitbox != noone) && (state != PS_SPAWN) && (state != PS_RESPAWN) && (state != PS_DEAD) && (origID == player_id) {
    if (hitbox.player_id != player_id) && !(!shieldActive && shieldEndTimer < 30) {
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
        	if (player_id.runeO && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_USTRONG || attack == AT_USTRONG_2 || attack == AT_DSTRONG || attack == AT_FSTRONG)) { //Zo has super armour while performing strongs.
        		superarmour = true;
        	}
            if (!shieldActive) {
                damage += floor(hitboxDamage);
            }
            
            var playerHitstun = (baseKnockback*4*((knockback_adj-1)*0.6 + 1) + damage*0.12*knockbackScaling*4*0.65*knockback_adj);
            var playerKnockback = baseKnockback + (damage*knockbackScaling*0.12*knockback_adj);
            
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
                var hitboxVfxX = get_hitbox_value(hitbox.attack, hboxNum, HG_VISUAL_EFFECT_X_OFFSET);
                var hitboxVfxY = get_hitbox_value(hitbox.attack, hboxNum, HG_VISUAL_EFFECT_Y_OFFSET);
                spawn_hit_fx(other.x, other.y, hitboxVfx);
                if (hitboxCat != 2) && !superarmour {
                    hitpause = true;
                    hitstop_full = _hitpause;
                    hitstop = _hitpause;
                    old_hsp = hsp;
                    old_vsp = vsp;
                }
                hitZo = true;
            }
            if (shieldActive) {
                mask_index = sprite_get("zo_ground_hurtbox");
                shieldHits++;
                if player_id.runeG { //Zo's shield can tank 1 additional hit before disappearing.
                    shieldHealth = 2;
                } else {
                    shieldHealth = 1;
                }
                if (shieldHits >= shieldHealth) {
                    shieldActive = false;
                    shieldHits = 0;
                }
                prevHitboxGroup = undefined;
                sound_play(sound_get("shield_deactivate"));
                hsp = 0;
                vsp = 0;
                hitKnockback = 0;
            } else if !superarmour {
                shieldActive = false;
                state = PS_HITSTUN;
                state_timer = 0;
                
                image_angle = 0;
                
                chainHit = false;
                chainActive = false;
                
                drawTurret = false;
                turretTurning = -10;
                turretAngle = 0;
                turretActive = false;
                drawLightning = false;
                strongCharging = false;
                can_be_grounded = true;
                recovering = false;
                window = 0;
                window_timer = 0;
                
                hitpause = true;
                hitstop_full = _hitpause + extraHitpause;
                hitstop = _hitpause + extraHitpause;
            }
        }
    }
}

if (!free) {
    djumps = 0;
}

/*
if (shieldActive) {
    unbashable = 1;
} else {
    unbashable = 0;
}
*/

//state switch

//print_debug(get_state_name(state))
switch state {
    case PS_IDLE:
    frameSpeed = 7;
    hsp = 0;
    
    if player_id.runeO {
    	prevHitboxID = undefined; //for superarmour rune stuff
    	prevHitboxGroup = undefined;
    }
    
    if (spr_dir == sign(playerDistX)) && (abs(playerDistX) > playerTurnRange) { //turn towards player
        state = PS_WALK_TURN;
        image_index = 0;
        state_timer = 0;
        if (playerDistX > 0) {
            spr_dir = -1;
        } else {
            spr_dir = 1;
        }
    }
    if !(nearLedge && playerOffstage) && (!shieldActive) && (shieldEndTimer > 30) {
        if (abs(playerDistX) > playerDashRange) { //he run
            state = PS_DASH_START;
            state_timer = 0;
        } else if (abs(playerDistX) > playerWalkRange + 10) { //transition to walk if too far away from player
            state = PS_WALK;
            state_timer = 0;
        }
    }
    
    if (playerDistY > playerShorthopRange || bufferJump) && (state_timer > 5 && !shieldActive && shieldEndTimer > 30) { //jump
        if !(nearLedge && playerOffstage) || bufferJump {
            state = PS_JUMPSQUAT;
            state_timer = 0;
        }
    }
    
    if (free) { //fall
        state = PS_IDLE_AIR;
        state_timer = 0;
    }
    break;
    
    case PS_IDLE_AIR:
    if (free) {
        vsp += gravity_speed;
    } else {
        state = PS_IDLE;
        state_timer = 0;
    }
    
    //falling, player still above, transition to djump.
    if (free) && (state_timer > 20) && (playerDistY > 50) && (djumps < max_djumps) {
        state = PS_DOUBLE_JUMP;
        state_timer = 0;
    }
    
    //no djump, falling, player still above, Zo is below stage, transition to uspec.
    if (djumps >= max_djumps) && (free) && (state_timer > 20) && (playerDistY > 50) && (y - player_id.room_height > rocketHeight) {
        state = PS_ATTACK_AIR;
        attack = AT_USPECIAL;
        state_timer = 0;
        window_timer = 0;
        window = 1;
        recovering = true;
    }
    
    hsp = clamp(hsp, -air_max_speed, air_max_speed);
    hsp += sign(playerDistX) * air_friction;
    break;
    
    case PS_CROUCH:
    break;
    
    case PS_JUMPSQUAT:
    frameSpeed = 1;
    
    if (state_timer == jump_start_time) {
        state = PS_FIRST_JUMP;
        state_timer = 0;
        if (playerDistY > playerJumpRange) || (bufferJump && player_id.jump_down) {
            vsp = -jump_speed;
        } else {
            vsp = -short_hop_speed;
        }
        spawn_hit_fx(x, y, jumpVfx);
    }
    break;
    
    case PS_FIRST_JUMP:
    frameSpeed = 8;
    
    if (state_timer <= 1) {
        if (playerDistY > playerJumpRange) || (bufferJump && player_id.jump_down) {
            vsp = -jump_speed;
        } else {
            vsp = -short_hop_speed;
        }
    } else {
        vsp += gravity_speed;
    }
    
    vsp = clamp(vsp, -1000000, max_fall);
    
    //falling, player still above, transition to djump.
    if (free) && (state_timer > 20) && (playerDistY > playerDjumpRange) && (djumps < max_djumps) {
        state = PS_DOUBLE_JUMP;
        state_timer = 0;
    }
    
    //no djump, falling, player still above, Zo is below stage, transition to uspec.
    if (djumps >= max_djumps) && (free) && (state_timer > 20) && (playerDistY > 50) && (y - player_id.room_height > rocketHeight) {
        state = PS_ATTACK_AIR;
        attack = AT_USPECIAL;
        state_timer = 0;
        window_timer = 0;
        window = 1;
        recovering = true;
    }
    
    //on ground, transition to land
    if (!free) && (state_timer > 1) {
        state = PS_LAND;
        state_timer = 0;
    }
    
    //try follow player in air;
    if (abs(playerDistX) > playerAirRange) {
        hsp -= sign(playerDistX) * air_accel;
    }
    hsp = clamp(hsp, -air_max_speed, air_max_speed);
    hsp += sign(playerDistX) * air_friction;
    break;
    
    case PS_DOUBLE_JUMP:
    frameSpeed = 8;
    
    if (state_timer <= 1) {
        vsp = -djump_speed;
    } else {
        vsp += gravity_speed;
    }
    
    if (state_timer == 1) {
        djumps++;
    }
    
    vsp = clamp(vsp, -1000000, max_fall);
    
    //on ground, transition to land
    if (!free) && (state_timer > 1) {
        state = PS_LAND;
        state_timer = 0;
    }
    
    //try follow player in air;
    if (abs(playerDistX) > playerAirRange) {
        hsp -= sign(playerDistX) * air_accel;
    }
    
    //falling, player still above, Zo is below stage, transition to uspec.
    if (free) && (state_timer > 20) && (playerDistY > 50) && (y - player_id.room_height > rocketHeight) {
        state = PS_ATTACK_AIR;
        attack = AT_USPECIAL;
        state_timer = 0;
        window_timer = 0;
        window = 1;
        recovering = true;
    }
    
    hsp = clamp(hsp, -air_max_speed, air_max_speed);
    hsp += sign(playerDistX) * air_friction;
    break;
    
    case PS_WALL_JUMP:
    break;
    
    case PS_LAND:
    frameSpeed = 1;
    
    if (state_timer == land_time) {
        state = PS_IDLE;
        state_timer = 0;
    }
    
    if (state_timer == 1) {
        spawn_hit_fx(x, y, landVfx);
    }
    
    hsp -= sign(hsp) * ground_friction;
    break;
    
    case PS_WALK:
    frameSpeed = 5;
    
    if !(nearLedge && playerOffstage) {
        if (abs(playerDistX) > playerDashRange) { //he run
            state = PS_DASH_START;
            state_timer = 0;
        } else if (abs(playerDistX) <= playerWalkRange) {
            state = PS_IDLE;
            state_timer = 0;
        } else if (abs(playerDistX) > playerWalkRange) {
            if (abs(playerDistX) <= playerWalkFollowRange) && (abs(player_id.hsp) >= 1) {
                hsp = spr_dir * abs(player_id.hsp);
                hsp = clamp(hsp, -walk_speed, walk_speed);
            } else if (abs(hsp) >= walk_speed) {
                hsp = spr_dir * walk_speed;
            } else {
                hsp = clamp(hsp, -walk_speed, walk_speed);
                hsp += spr_dir * walk_accel;
            }
        }
    } else {
        state = PS_IDLE;
        state_timer = 0;
    }
    
    if (playerDistY > playerShorthopRange) || bufferJump { //jump
        if (!nearLedge && !playerOffstage) || bufferJump {
            state = PS_JUMPSQUAT;
            state_timer = 0;
        }
    }
    
    if (free) { //fall
        state = PS_IDLE_AIR;
        state_timer = 0;
    }
    break;
    
    case PS_WALK_TURN:
    frameSpeed = 2;
    
    if (state_timer mod frameSpeed == 0) {
        image_index++;
    }
    
    if (state_timer == walk_turn_time) {
        state = PS_IDLE;
        state_timer = 0;
    }
    
    if (free) { //fall
        state = PS_IDLE_AIR;
        state_timer = 0;
    }
    break;
    
    case PS_DASH_START:
    frameSpeed = 4;
    hsp = spr_dir * initial_dash_speed;
    
    if (state_timer == initial_dash_time) {
        state = PS_DASH;
        state_timer = 0;
    }
    
    if (free) { //fall
        state = PS_IDLE_AIR;
        state_timer = 0;
    }
    break;
    
    case PS_DASH:
    frameSpeed = 3;
    hsp = spr_dir * dash_speed;
    
    if (abs(playerDistX) <= playerDashStopRange) || (nearLedge) {
        state = PS_DASH_STOP;
        state_timer = 0;
    } else if (sign(playerDistX) == spr_dir) {
        state = PS_DASH_TURN;
        state_timer = 0;
        if (playerDistX > 0) {
            spr_dir = -1;
        } else {
            spr_dir = 1;
        }
    }
    
    if (playerDistY > playerShorthopRange) || bufferJump { //jump
        if (!nearLedge && !playerOffstage) || bufferJump {
            state = PS_JUMPSQUAT;
            state_timer = 0;
        }
    }
    
    if (free) { //fall
        state = PS_IDLE_AIR;
        state_timer = 0;
    }
    break;
    
    case PS_DASH_STOP:
    frameSpeed = 4;
    hsp = spr_dir * initial_dash_speed;
    
    if (state_timer == dash_stop_time) {
        state = PS_IDLE;
        state_timer = 0;
    } else {
        hsp *= dash_stop_percent;
    }
    
    if (free) { //fall
        state = PS_IDLE_AIR;
        state_timer = 0;
    }
    break;
    
    case PS_DASH_TURN:
    frameSpeed = 2;
    
    if (state_timer == dash_turn_time) {
        state = PS_DASH;
        state_timer = 0;
    }
    
    if (free) { //fall
        state = PS_IDLE_AIR;
        state_timer = 0;
    }
    break;
    
    case PS_WAVELAND:
    break;
    
    case PS_ATTACK_AIR:
    //on ground, transition to attack_ground state
    if (!free) {
        state = PS_ATTACK_GROUND;
        changeState = true;
        if (attack != AT_USPECIAL) {
            break;
        }
    }
    
    if (hitpause) {
        if (hitstop <= 0) {
            hitpause = false;
            hitstop = 0;
            hitstop_full = 0;
        }
    }
    
    if (!hitpause) {
        vsp += hitstun_grav;
        vsp = clamp(vsp, -1000000, max_fall);
        //air friction
        hsp -= sign(hsp) * air_friction;
    }
    
    switch attack {
        case AT_FSTRONG:
        performStrong(AT_FSTRONG);
        if (window == 3) {
            sound_stop(asset_get("sfx_ell_fspecial_charge"));
            if (window_timer == 1) && !hitpause {
                hsp -= spr_dir*8;
            }
        }
        break;
        
        case AT_DSTRONG:
        performStrong(AT_DSTRONG);
        if (window == 2) {
            vsp -= 0.8;
            vsp = clamp(vsp, -2, max_fall - 6);
        }
        break;
        
        case AT_USTRONG:
        performStrong(AT_USTRONG_2);
        if (window == 3) {
            if (window_timer == 1) && !hitpause {
                vsp = -8;
            }
        }
        break;
        
        case AT_FSPECIAL:
        performSpecial(AT_FSPECIAL);
        break;
        
        case AT_DSPECIAL_2:
        performSpecial(AT_DSPECIAL_2);
        break;
        
        case AT_USPECIAL:
        performSpecial(AT_USPECIAL);
        break;
        
        case AT_NSPECIAL:
        performSpecial(AT_NSPECIAL);
        break;
        
        case AT_EXTRA_3:
        performSpecial(AT_EXTRA_3);
        break;
    }
    break;
    
    case PS_ATTACK_GROUND:
    //in air, transition to attack_ground state
    if (free) {
        state = PS_ATTACK_AIR;
        changeState = true;
        if (attack != AT_USPECIAL) {
            break;
        }
    }
    
    if (hitpause) {
        if (hitstop <= 0) {
            hitpause = false;
            hitstop = 0;
            hitstop_full = 0;
        }
    }
    
    switch attack {
        case AT_FSTRONG:
        performStrong(AT_FSTRONG);
        if (window == 3) {
            sound_stop(asset_get("sfx_ell_fspecial_charge"));
        }
        break;
        
        case AT_DSTRONG:
        performStrong(AT_DSTRONG);
        break;
        
        case AT_USTRONG:
        performStrong(AT_USTRONG);
        break;
        
        case AT_FSPECIAL:
        performSpecial(AT_FSPECIAL);
        break;
        
        case AT_DSPECIAL_2:
        performSpecial(AT_DSPECIAL_2);
        break;
        
        case AT_USPECIAL:
        performSpecial(AT_USPECIAL);
        break;
        
        case AT_NSPECIAL:
        performSpecial(AT_NSPECIAL);
        break;
        
        case AT_TAUNT_2:
        performSpecial(AT_TAUNT_2);
        break;
        
        case AT_EXTRA_3:
        performSpecial(AT_EXTRA_3);
        break;
    }
    break;
    
    case PS_LANDING_LAG:
    break;
    
    case PS_HITSTUN:
    chainTether = false;
    player_id.onRocket = false;
    if (!hitpause) {
    	
        if (free) {
            vsp += hitstun_grav;
        } else {
        	print_debug(string(prev_vsp))
        	if (prev_vsp > 0) && abs(prev_vsp) > 5 {
	            vsp = -prev_vsp/2;
	        } else {
	            state = PS_HITSTUN_LAND;
	            state_timer = 0;
	            prevHitboxGroup = undefined;
	        }
        }
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
            
            //DI stuff
            var xDI = 0;
            var yDI = 0;
            if !player_id.joy_pad_idle {
	            var xDI = dcos(player_id.joy_dir) * 4;
	            var yDI = -dsin(player_id.joy_dir) * 1;
            }
            //print_debug(string(xDI) + ", " + string(yDI));
            
            hsp = (hitXDir * hitKnockback * dcos(hitAngle)) + xDI;
            vsp = (-hitYDir * hitKnockback * dsin(hitAngle)) + yDI;
        }
        
        if (!free) && (vsp > 0) {
            vsp *= -1;
        }
    }
    
    chainHit = false;
    chainActive = false;
    drawTurret = false;
    turretAngle = 0;
    turretActive = false;
    drawLightning = false;
    strongCharging = false;
    
    
    hitstun--;
    //print_debug(string(hitstun))
    if (!hitpause) && (hitstun <= 0) {
        hitstun = 0;
        prevHitboxGroup = undefined;
        if (free) {
            state = PS_IDLE_AIR;
        } else {
            state = PS_IDLE;
        }
        state_timer = 20;
        window = 0;
    }
    hsp -= sign(hsp) * air_friction;
    break;
    
    case PS_HITSTUN_LAND:
    chainTether = false;
    frameSpeed = 1;
    
    player_id.onRocket = false;
    if (state_timer == land_time) {
        state = PS_IDLE;
        state_timer = 0;
    }
    
    chainHit = false;
    chainActive = false;
    drawTurret = false;
    turretAngle = 0;
    turretActive = false;
    drawLightning = false;
    strongCharging = false;
    
    hsp -= sign(hsp) * ground_friction;
    break;
    
    case PS_TUMBLE:
    break;
    
    case PS_PRATFALL:
    frameSpeed = 1;
    
    vsp += gravity_speed;
    vsp = clamp(vsp, -1000000, max_fall);
    
    //on ground, transition to land
    if (!free) && (state_timer > 1) {
        state = PS_PRATLAND;
        state_timer = 0;
        y -= 10;
    }
    
    hsp = clamp(hsp, -air_max_speed, air_max_speed);
    hsp -= sign(playerDistX) * air_accel * prat_fall_accel;
    
    if (abs(image_angle) > 2) {
        image_angle *= 0.8;
    } else {
        image_angle = 0;
    }
    break;
    
    case PS_PRATLAND:
    frameSpeed = 1;
    if (parry_stun > 0) {
        parry_stun--;
    }
    if (state_timer >= prat_land_time) && (parry_stun == 0) {
        state = PS_IDLE;
        state_timer = 0;
    }
    
    hsp -= sign(hsp) * ground_friction;
    vsp = 0;
    break;
    
    case PS_AIR_DODGE:
    break;
    
    case PS_PARRY_START:
    frameSpeed = 7;
    hsp = 0;
    vsp = 0;
    if (state_timer == 1) {
        state = PS_PARRY;
        state_timer = 0;
        shieldTimer = 0;
        if (shieldActive) {
            shieldActive = false;
            sound_play(sound_get("shield_deactivate"));
        } else {
            shieldActive = true;
            sound_play(sound_get("shield_activate"));
        }
    }
    break;
    
    case PS_PARRY:
    frameSpeed = 7;
    if (state_timer == 10) {
        sprite_index = sprite_get("idle_B");
        mask_index = sprite_get("zo_ground_hurtbox");
    }
    if (state_timer == 20) {
        state = PS_IDLE;
        state_timer = 0;
    }
    break;
    
    case PS_ROLL_BACKWARD:
    break;
    
    case PS_ROLL_FORWARD:
    break;
    
    case PS_TECH_GROUND:
    break;
    
    case PS_TECH_BACKWARD:
    break;
    
    case PS_TECH_FORWARD:
    break;
    
    case PS_WALL_TECH:
    break;
    
    case PS_SPAWN:
    frameSpeed = 7;
    spr_dir = player_id.spr_dir;
    x = player_id.x;
    y = player_id.y;
    hsp = 0;
    vsp = 0;
    if (player_id.state != PS_SPAWN) {
        if (free) {
            state = PS_IDLE_AIR;
        } else {
            state = PS_IDLE;
        }
        state_timer = 0;
    }
    break;
    
    case PS_RESPAWN:
    frameSpeed = 7;
    spr_dir = player_id.spr_dir;
    x = player_id.x;
    y = player_id.y;
    hsp = 0;
    vsp = 0;
    if (player_id.state != PS_RESPAWN) {
        if (free) {
            state = PS_IDLE_AIR;
        } else {
            state = PS_IDLE;
        }
        state_timer = 0;
    }
    break;
    
    case PS_DEAD:
    frameSpeed = 4;
    mask_index = sprite_get("zo_ground_hurtbox");
    sprite_index = sprite_get("zo_short");
    
    if (free) {
        vsp += gravity_speed;
        hsp = clamp(hsp, -air_max_speed, air_max_speed);
        hsp += sign(playerDistX) * air_friction;
    } else {
        hsp = 0;
    }
    
    if (state_timer == 1) {
        sound_play(sound_get("short_circuit"));
        shieldActive = false;
        
        image_angle = 0;
        
        chainHit = false;
        chainActive = false;
        
        drawTurret = false;
        turretTurning = -10;
        turretAngle = 0;
        turretActive = false;
        drawLightning = false;
        strongCharging = false;
        can_be_grounded = true;
        recovering = false;
    }
    
    if player_id.runeE { //Zo explodes immediately after Ru dies.
        var explodeFrame = 1;
    } else {
        var explodeFrame = 50;
    }
    
    
    if (state_timer == explodeFrame) {
        sound_play(asset_get("sfx_ell_fist_explode"));
        spawn_hit_fx(x, y - 20, 143);
        create_hitbox(AT_EXTRA_1, 1, x, y - 20);
        instance_destroy();
        exit;
    }
    break;
    
    case PS_WRAPPED:
    break;
    
    case PS_FROZEN:
    break;
}

if (state == PS_FIRST_JUMP) && (image_index >= 4) {
    image_index = 4;
} else if (state == PS_ATTACK_GROUND) || (state == PS_ATTACK_AIR) {
    
} else if (state_timer mod frameSpeed == 0) && (state != PS_WALK_TURN) {
    image_index += 1;
}

if (shieldActive) {
    shieldTimer++;
    shieldEndTimer = 0;
    mask_index = sprite_get("shield_B_mask");
} else {
    shieldTimer = 0;
    shieldEndTimer++;
}

//print_debug(string(strong_charge));

if (shieldTimer > shieldMaxActive) && (shieldActive) {
    changeState = true;
    shieldActive = false;
    sound_play(sound_get("shield_deactivate"));
}

//state init
if (state_timer == 0) || (changeState) {
    switch state {
        case PS_IDLE:
        depth = -3;
        sprite_index = sprite_get("idle_B");
        mask_index = sprite_get("zo_ground_hurtbox");
        break;
        
        case PS_IDLE_AIR:
        sprite_index = sprite_get("idle_B");
        mask_index = sprite_get("zo_air_hurtbox");
        break;
        
        case PS_CROUCH:
        sprite_index = sprite_get("_B");
        break;
        
        case PS_JUMPSQUAT:
        sprite_index = sprite_get("jumpstart_B");
        mask_index = sprite_get("zo_ground_hurtbox");
        break;
        
        case PS_FIRST_JUMP:
        sprite_index = sprite_get("jump_B");
        mask_index = sprite_get("zo_air_hurtbox");
        sound_play(jump_sound);
        break;
        
        case PS_DOUBLE_JUMP:
        sprite_index = sprite_get("jump_B");
        mask_index = sprite_get("zo_air_hurtbox");
        sound_play(djump_sound);
        break;
        
        case PS_WALL_JUMP:
        sprite_index = sprite_get("_B");
        mask_index = sprite_get("zo_air_hurtbox");
        break;
        
        case PS_LAND:
        sprite_index = sprite_get("land_B");
        mask_index = sprite_get("zo_ground_hurtbox");
        image_angle = 0;
        sound_play(land_sound);
        break;
        
        case PS_WALK:
        sprite_index = sprite_get("walk_B");
        mask_index = sprite_get("zo_ground_hurtbox");
        break;
        
        case PS_WALK_TURN:
        sprite_index = sprite_get("walkturn_B");
        mask_index = sprite_get("zo_ground_hurtbox");
        break;
        
        case PS_DASH_START:
        sprite_index = sprite_get("dashstart_B");
        mask_index = sprite_get("zo_ground_hurtbox");
        sound_play(asset_get("sfx_dash_start"));
        break;
        
        case PS_DASH:
        sprite_index = sprite_get("walk_B");
        mask_index = sprite_get("zo_ground_hurtbox");
        break;
        
        case PS_DASH_STOP:
        sprite_index = sprite_get("dashstop_B");
        mask_index = sprite_get("zo_ground_hurtbox");
        break;
        
        case PS_DASH_TURN:
        sprite_index = sprite_get("walkturn_B");
        mask_index = sprite_get("zo_ground_hurtbox");
        break;
        
        case PS_WAVELAND:
        sprite_index = sprite_get("_B");
        break;
        
        case PS_ATTACK_AIR:
        depth = -5;
        switch attack {
            case AT_FSTRONG:
            strong_sprite = sprite_get("fstrong_B");
            strong_mask = sprite_get("fstrong_B_charge");
            sprite_index = strong_sprite;
            mask_index = sprite_get("fstrong_B_mask");
            break;
            
            case AT_DSTRONG:
            strong_sprite = sprite_get("dstrong_B");
            strong_mask = sprite_get("dstrong_B_charge");
            sprite_index = strong_sprite;
            mask_index = sprite_get("dstrong_B_mask");
            break;
            
            case AT_USTRONG:
            strong_sprite = sprite_get("ustrong_air_B");
            strong_mask = sprite_get("ustrong_air_B_charge");
            sprite_index = strong_sprite;
            mask_index = sprite_get("ustrong_air_B_mask");
            break;
            
            case AT_FSPECIAL:
            sprite_index = sprite_get("fspecial_B");
            mask_index = sprite_get("fspecial_B_mask");
            break;
            
            case AT_DSPECIAL_2:
            sprite_index = sprite_get("dspecial_B");
            mask_index = sprite_get("dspecial_B_mask");
            break;
            
            case AT_USPECIAL:
            sprite_index = sprite_get("uspecial_air_B");
            mask_index = sprite_get("uspecial_air_B_mask");
            break;
            
            case AT_NSPECIAL:
            sprite_index = sprite_get("nspecial_B");
            mask_index = sprite_get("nspecial_B_mask");
            break;
            
            case AT_EXTRA_3:
            with origID {
                other.sprite_index = sprite_get("kirby_zo");
                other.mask_index = sprite_get("nspecial_B_mask");
            }
            break;
        }
        break;
        
        case PS_ATTACK_GROUND:
        depth = -5;
        switch attack {
            case AT_FSTRONG:
            strong_sprite = sprite_get("fstrong_B");
            strong_mask = sprite_get("fstrong_B_charge");
            sprite_index = strong_sprite;
            mask_index = sprite_get("fstrong_B_mask");
            break;
            
            case AT_DSTRONG:
            strong_sprite = sprite_get("dstrong_B");
            strong_mask = sprite_get("dstrong_B_charge");
            sprite_index = strong_sprite;
            mask_index = sprite_get("dstrong_B_mask");
            break;
            
            case AT_USTRONG:
            strong_sprite = sprite_get("ustrong_B");
            strong_mask = sprite_get("ustrong_B_charge");
            sprite_index = strong_sprite;
            mask_index = sprite_get("ustrong_B_mask");
            break;
            
            case AT_FSPECIAL:
            sprite_index = sprite_get("fspecial_B");
            mask_index = sprite_get("fspecial_B_mask");
            break;
            
            case AT_DSPECIAL_2:
            sprite_index = sprite_get("dspecial_B");
            mask_index = sprite_get("dspecial_B_mask");
            break;
            
            case AT_USPECIAL:
            sprite_index = sprite_get("uspecial_B");
            mask_index = sprite_get("uspecial_B_mask");
            break;
            
            case AT_NSPECIAL:
            sprite_index = sprite_get("nspecial_B");
            mask_index = sprite_get("nspecial_B_mask");
            break;
            
            case AT_TAUNT_2:
            sprite_index = sprite_get("taunt_B");
            mask_index = sprite_get("zo_ground_hurtbox");
            break;
            
            case AT_EXTRA_3:
            with origID {
                other.sprite_index = sprite_get("kirby_zo");
                other.mask_index = sprite_get("nspecial_B_mask");
            }
            break;
        }
        break;
        
        case PS_LANDING_LAG:
        sprite_index = sprite_get("_B");
        break;
        
        case PS_HITSTUN:
        sprite_index = sprite_get("hurt_B");
        mask_index = sprite_get("zo_ground_hurtbox");
        break;
        
        case PS_HITSTUN_LAND:
        sprite_index = sprite_get("hurt_B");
        mask_index = sprite_get("zo_ground_hurtbox");
        break;
        
        case PS_TUMBLE:
        sprite_index = sprite_get("_B");
        break;
        
        case PS_PRATFALL:
        sprite_index = sprite_get("pratfall_B");
        mask_index = sprite_get("pratfall_B_mask");
        break;
        
        case PS_PRATLAND:
        sprite_index = sprite_get("pratland_B");
        mask_index = sprite_get("zo_ground_hurtbox");
        image_angle = 0;
        break;
        
        case PS_AIR_DODGE:
        sprite_index = sprite_get("_B");
        break;
        
        case PS_PARRY_START:
        sprite_index = sprite_get("idle_B");
        mask_index = sprite_get("zo_ground_hurtbox");
        break;
        
        case PS_PARRY:
        sprite_index = sprite_get("parry_B");
        mask_index = sprite_get("parry_B");
        break;
        
        case PS_ROLL_BACKWARD:
        sprite_index = sprite_get("_B");
        break;
        
        case PS_ROLL_FORWARD:
        sprite_index = sprite_get("_B");
        break;
        
        case PS_TECH_GROUND:
        sprite_index = sprite_get("_B");
        break;
        
        case PS_TECH_BACKWARD:
        sprite_index = sprite_get("_B");
        break;
        
        case PS_TECH_FORWARD:
        sprite_index = sprite_get("_B");
        break;
        
        case PS_WALL_TECH:
        sprite_index = sprite_get("_B");
        break;
        
        case PS_SPAWN:
        depth = -3;
        sprite_index = sprite_get("idle_B");
        mask_index = asset_get("empty_sprite");
        break;
        
        case PS_RESPAWN:
        depth = -3;
        sprite_index = sprite_get("idle_B");
        mask_index = asset_get("empty_sprite");
        break;
        
        case PS_DEAD:
        sprite_index = sprite_get("_B");
        break;
        
        case PS_WRAPPED:
        sprite_index = sprite_get("_B");
        break;
        
        case PS_FROZEN:
        sprite_index = sprite_get("_B");
        break;
    }
}

if (state == PS_ATTACK_GROUND) || (state == PS_ATTACK_AIR) {
    //attack update
    if (attack == AT_FSPECIAL) {
        if (vsp > 0) {
            vsp *= 0.92;
        } else {
            vsp *= 0.96;
        }
        if (window == 1) {
        	chainTether = false;
            if (window_timer == 1) {
                chainSprDir = spr_dir;
            } else if (window_timer > 1) {
                spr_dir = chainSprDir;
            }
            with player_id {
                reset_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS);
            }
            chainHit = false;
            if (window_timer < 10) {
                hsp *= 0.92;
            } else {
                hsp = 0;
            }
        }
        if (window == 2) {
            spr_dir = chainSprDir;
            if (chainTether) {
            	window = 3;
            	window_timer = 0;
            	sound_play(asset_get("sfx_swipe_medium1"));
            } else if (chainHit) && (!hitpause) {
                chainEndX -= spr_dir*10;
                with chainPlayerID {
                    x -= other.spr_dir*10;
                    y = other.chainY + 29;
                }
                if (abs(chainOriginX - chainEndX) < 25) {
                    window = 4;
                    window_timer = 0;
                    with player_id {
                        set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
                    }
                } else {
                    window_timer = 1;
                }
            } else if (window_timer mod 5 == 0) && (!hitpause) {
                sound_play(asset_get("sfx_ell_utilt_loop"));
            }
        }
        
        if (window == 3) {
            spr_dir = chainSprDir;
            if (chainTether) {
            	x += 18*spr_dir;
            	vsp = 0;
            } else {
            	chainEndX -= spr_dir*20;
            }
            
            if (abs(chainOriginX - chainEndX) < 10) {
            	chainTether = false;
            }
        }
        
        if (window == 4) {
        	chainTether = false;
            spr_dir = chainSprDir;
            chainEndX -= spr_dir*10;
            with chainPlayerID {
                if (other.window_timer == 1) {
                    x = other.x + (60*other.spr_dir)
                    y = other.y - 2;
                }
                if (other.window_timer > 3) {
                    y -= 5;
                }
                
                if (other.window_timer >= 2) {
                    x -= other.spr_dir*20;
                }
                
                
            }
            vsp = 0;
            with player_id {
                var _angle = 0;
                var _bkb = 0;
                if (up_down && !down_down) {
                    _angle = 110;
                    _bkb = 11;
                } else if (down_down && !up_down) {
                    _angle = 140;
                    _bkb = 7;
                } else {
                    _angle = 130;
                    _bkb = 10;
                }
                set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, _angle);
                set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, _bkb);
            }
        }
        
        if (window == 5) {
            if (window_timer <= 1) && (!hitpause) {
                with player_id {
                    if (other.chainPlayerID == id) && (state != PS_AIR_DODGE) {
                        state = PS_IDLE_AIR;
                        hitstop = 0;
                        
                        var _hsp = 0;
                        var _vsp = 0;
                        if (up_down && !down_down) {
                            _hsp = 4;
                            _vsp = 14;
                        } else if (down_down && !up_down) {
                            _hsp = 12;
                            _vsp = 4;
                        } else {
                            _hsp = 8;
                            _vsp = 10;
                        }
                        
                        hsp = -_hsp*other.spr_dir;
                        vsp = -_vsp;
                    }
                }
            }
            
        }
        chainY = y - 29 + vsp;
        chainOriginX = x + (40*spr_dir);
    }
    
    if (attack == AT_USPECIAL) {
        can_be_grounded = false;
        var ruSearch = false;
        if (window == 1) {
            if (window_timer == 1) {
                player_id.rocketTimer = 0;
            }
            ruSearch = true;
            hsp = 0;
            vsp *= 0.9;
            if (player_id.left_down && !player_id.right_down && !recovering) || (recovering && x > room_width/2) {
                image_angle += 3;
            } else if (!player_id.left_down && player_id.right_down && !recovering) || (recovering && x < room_width/2) {
                image_angle -= 3;
            }
            if (image_angle > 0) {
                spr_dir = -1;
            } else if (image_angle < 0) {
                spr_dir = 1;
            }
            /*
            var xMod = 70*dsin(image_angle);
            var yMod = -70*dcos(image_angle);
            print_debug(string(yMod))
            with player_id {
                set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, spr_dir*floor(xMod));
                set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, floor(yMod));
            }
            */
        }
        
        if (window == 2) {
            if (state_timer < 60) {
                ruSearch = true;
            }
            var speedMod = 0;
            if (player_id.onRocket) {
                speedMod = -10;
            } else {
                speedMod = -13;
            }
            vsp = speedMod*dcos(image_angle);
            hsp = speedMod*dsin(image_angle);
            
            if player_id.runeC { //USPECIAL travels further.
                var duration = 80;
            } else {
                var duration = 50;
            }
            
            if (!player_id.special_down && !recovering) || (state_timer > duration) {
                window = 3;
                window_timer = 0;
            }
        }
        
        if (window == 3) {
            ruSearch = false;
            recovering = false;
        }
        
        if !(player_id.onRocket) && (ruSearch) && (player_id.state != PS_HITSTUN) && (player_id.state != PS_HITSTUN_LAND) &&
            ((playerDistAbs <= rocketDist && window == 1 && window_timer <= 5)
            /*|| (playerDistAbs <= rocketDistLate && window == 2 && player_id.free)*/) {
            player_id.onRocket = true;
            with player_id {
                attack_end();
                if (!free) {
                    state = PS_JUMPSQUAT;
                    state_timer = 0;
                } else if (state != PS_AIR_DODGE) {
                    state = PS_DOUBLE_JUMP;
                    state_timer = 14;
                    sound_play(djump_sound);
                }
            }
        } else if (window == 3) {
            player_id.onRocket = false;
        }
    }
    
    if (attack == AT_DSPECIAL_2) {
        hsp *= 0.92;
        vsp *= 0.85;
        if (window == 1) {
            drawTurret = true;
            var spawnX = 0;
            var spawnY = 0;
            turretAngle = 0;
            drawLightning = false;
        }
        if (window == 2) {
            if (window_timer == 0) {
                spawn_hit_fx(player_id.x, player_id.y - 18, 256);
            }
            player_id.hsp = 0;
            player_id.vsp = 0;
            
            var spawnX = 0;
            var spawnY = 0;
            if (player_id.up_down) {
                spawnY = -130;
            }
            if (player_id.left_down && !player_id.right_down) {
                spawnX = -130;
            } else if (!player_id.left_down && player_id.right_down) {
                spawnX = 130;
            }
            
            if (spawnX == 0 && spawnY == 0) {
                if (abs(turretAngle) > abs(spawnAngle)) {
                    turretAngle -= spr_dir*7.5;
                }
            } else {
                var spawnAngle = darctan2(-spr_dir*spawnY, spr_dir*spawnX);
                //print_debug(string(spawnAngle) + ", " + string(turretAngle));
                if (abs(turretAngle) < abs(spawnAngle)) {
                    turretAngle += spr_dir*7.5;
                }
            }
        }
        turretAngle = clamp(turretAngle, -90, 90);
        if (window == 3) {
            if (window_timer == 0) {
                if !(player_id.up_down || player_id.left_down || player_id.right_down || player_id.down_down) {
                    player_id.x = x;
                    player_id.y = y;
                    spawn_hit_fx(x, y - 18, 256);
                } else {
                    player_id.x = x + spr_dir*130*dcos(turretAngle);
                    player_id.y = y - spr_dir*130*dsin(turretAngle);
                    spawn_hit_fx(x + spr_dir*130*dcos(turretAngle), y - spr_dir*130*dsin(turretAngle) - 18, 256);
                    drawLightning = true;
                }
            }
            
            if (window_timer == 3) && (!hitpause) {
                with player_id {
                    teleporting = false;
                }
                create_hitbox(AT_DSPECIAL_2, 1, player_id.x, player_id.y - 18);
            }
            
            if (window_timer < 16) {
                player_id.hsp = 0;
                player_id.vsp = 0;
            }
        }
        
        if (window == 4) {
            drawLightning = false;
            turretAngle *= 0.8;
        }
    }
    
    if (attack == AT_NSPECIAL) || (attack == AT_EXTRA_3) {
        depth = -2;
        if (window == 1) {
            turretAngle = 0;
            turretActive = false;
            if (window_timer <= 11) {
                if (player_id.right_down) && (!player_id.left_down) && (spr_dir == -1) && (turretTurning < 0) {
                    spr_dir = 1;
                    turretTurning = 0;
                }
                
                if (player_id.left_down) && (!player_id.right_down) && (spr_dir == 1) && (turretTurning < 0) {
                    spr_dir = -1;
                    turretTurning = 0;
                }
            }
            drawTurret = true;
        } else if (window == 2) {
            if (player_id.special_down) {
                turretActive = true;
            }
            if (player_id.special_pressed) {
                turretActive = false;
            }
            var playSound = false;
            
            if (attack == AT_NSPECIAL) && player_id.runeI { //NSPECIAL auto-targets opponents.
                var oppTarget = undefined;
                var oppTargetDist = 10000000;
                with oPlayer {
                    if (distance_to_object(other) < oppTargetDist) && (id != other.player_id) {
                        oppTarget = id;
                        oppTargetDist = distance_to_object(other);
                    }
                }
                
                var zoFacing = (x > oppTarget.x && spr_dir == -1) || (oppTarget.x > x && spr_dir == 1);
                var zoAngle = darctan2(y - oppTarget.y, abs(x - oppTarget.x));
                
                if zoFacing && abs(turretAngle) < zoAngle - 5 {
	        		turretAngle += spr_dir*4;
                    playSound = true;
	        	} else if zoFacing && abs(turretAngle) > zoAngle + 5 {
	        		turretAngle -= spr_dir*4;
                    playSound = true;
	        	}
                
            } else {
                if (player_id.up_down && !player_id.down_down) {
                    turretAngle += spr_dir*2;
                    playSound = true;
                } else if (!player_id.up_down && player_id.down_down) {
                    turretAngle -= spr_dir*2;
                    playSound = true;
                }
            }
            
            var angleMax = 90;
            var angleMin = -7;
            
            if (spr_dir == 1) {
                if (turretAngle > angleMax || turretAngle < angleMin) {
                    playSound = false;
                }
                turretAngle = clamp(turretAngle, angleMin, angleMax);
            } else if (spr_dir == -1) {
                if (turretAngle > -angleMin || turretAngle < -angleMax) {
                    playSound = false;
                }
                turretAngle = clamp(turretAngle, -angleMax, -angleMin);
            }
            with player_id {
                if (get_window_value(AT_EXTRA_3,9,AG_WINDOW_ANIM_FRAMES) == 88) {
                    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 12*dcos(other.turretAngle));
                    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -12*other.spr_dir*dsin(other.turretAngle));
                    
                    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, -6 + floor(40*dcos(other.turretAngle)));
                    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -23 - floor(other.spr_dir*40*dsin(other.turretAngle)));
                } else {
                    if runeA { //NSPECIAL laser travels faster.
                        var laserSpd = 20;
                    } else {
                        var laserSpd = 12;
                    }
                    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, laserSpd*dcos(other.turretAngle));
                    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -laserSpd*other.spr_dir*dsin(other.turretAngle));
                    
                    set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, -6 + floor(40*dcos(other.turretAngle)));
                    set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -23 - floor(other.spr_dir*40*dsin(other.turretAngle)));
                }
            }
            
            if (playSound) && (window_timer == 0) {
                sound_play(asset_get("sfx_propeller_dagger_loop"));
            }
            
            if (!turretActive) {
                window = 3;
                window_timer = 0;
                turretTurning = -10;
            }
        } else if (window == 4) {
            turretAngle *= 0.8;
        }
        
        if (turretTurning >= 0) {
            turretTurning++;
        }
    }
    
    if (attack == AT_TAUNT_2) {
        if (state_timer == 1) {
            loopTaunt = true;
        }
        if (state_timer > 30) && (player_id.taunt_pressed || player_id.shield_pressed || player_id.attack_pressed || player_id.special_pressed) {
            loopTaunt = false;
        }
        if (window_timer == 39) && (loopTaunt) {
            window_timer = -1;
        }
    }
    
    if (attack != AT_DSPECIAL_2) && (attack != AT_NSPECIAL) && (attack != AT_EXTRA_3) {
        drawTurret = false;
    }

} else {
    chainActive = false;
    drawTurret = false;
}

if (chainOriginX != undefined) && (chainEndX != undefined) {
    if abs(chainOriginX - chainEndX) < 20 {
        chainActive = false;
    }
}

state_timer += 1;

//offscreen stuff
var roomDir = undefined; //0 to 7, starts straight right, move clockwise
var yZone = 100;
var xZone = 100;
if (x >= room_width - xZone) && (y >= yZone) && (y < room_height - yZone) {
    roomDir = 0;
} else if (x >= room_width - xZone) && (y >= room_height - yZone) {
    roomDir = 1;
} else if (x < room_width - xZone) && (x >= xZone) && (y >= room_height - yZone) {
    roomDir = 2;
} else if (x < xZone) && (y >= room_height - yZone) {
    roomDir = 3;
} else if (x < xZone) && (y < room_height - yZone) && (y >= yZone) {
    roomDir = 4;
} else if (x < xZone) && (y < yZone) {
    roomDir = 5;
} else if (x >= xZone) && (x < room_width - xZone) && (y < yZone) {
    roomDir = 6;
} else if (x >= room_width - xZone) && (y < yZone) {
    roomDir = 7;
}

//kill if goes beyond blastzones
if (x < -100) || (x > room_width + 100) || (y < -50 && state == PS_HITSTUN) || (y > room_height + 150) {
    if (state == PS_HITSTUN) {
        sound_play(asset_get("sfx_death2"));
    } else {
        sound_play(asset_get("sfx_death1"));
    }
    player_id.drawZoDeathEffect = true;
    player_id.zoDeathTimer = 0;
    player_id.zoDeathX = x;
    player_id.zoDeathY = y;
    player_id.zoDeathDir = roomDir;
    if (player_id.runeN) { //Zo respawns immediately after death.
    	player_id.spawnZo = true;
    }
    instance_destroy();
}

#define performStrong
/// performStrong(strongAttack, ...)
var strongAttack = argument[0];

if (!free) && (hsp != 0) {
    hsp -= sign(hsp)*ground_friction;
    if (abs(hsp) < ground_friction) {
        hsp = 0;
    }
} else if (free) && (hsp != 0) {
    hsp -= sign(hsp)*air_friction;
    if (abs(hsp) < air_friction) {
        hsp = 0;
    }
}
//print_debug(string(free));


with player_id {
    var numWindows = get_attack_value(strongAttack, AG_NUM_WINDOWS);
    var chargeWindow = get_attack_value(strongAttack, AG_STRONG_CHARGE_WINDOW);
    var numHitboxes = get_num_hitboxes(strongAttack);
    var windowLength = get_window_value(strongAttack, other.window, AG_WINDOW_LENGTH);
    var charging = left_strong_down || right_strong_down || up_strong_down || down_strong_down || strong_down;
}

//timer advancing code, only execute if not in hitpause
if (!hitpause) {
    window_timer++;
    if (window == chargeWindow) && charging && (strong_charge < 60) {
        strongCharging = true;
        strong_charge++;
        if (strong_charge mod windowLength == 0)  {
            window_timer = 0;
        }
        
    } else {
        strongCharging = false;
        sprite_index = strong_sprite;
        if (window == chargeWindow - 1) && !charging && (window_timer == windowLength) {
            window++;
            window++;
            window_timer = 0;
        } else if (window == chargeWindow) && (strong_charge > windowLength) {
            strongCharging = false;
            window++;
            window_timer = 0;
        } else if (window_timer == windowLength) {
            strongCharging = false;
            window++;
            window_timer = 0;
        }
    }
}

with player_id {
    var windowLength = get_window_value(strongAttack, other.window, AG_WINDOW_LENGTH);
    var numFrames = get_window_value(strongAttack, other.window, AG_WINDOW_ANIM_FRAMES);
    var frameStart = get_window_value(strongAttack, other.window, AG_WINDOW_ANIM_FRAME_START);
    var hasSfx = get_window_value(strongAttack, other.window, AG_WINDOW_HAS_SFX);
    var sfx = get_window_value(strongAttack, other.window, AG_WINDOW_SFX);
    var sfxFrame = get_window_value(strongAttack, other.window, AG_WINDOW_SFX_FRAME);
}

if (hasSfx) && (window_timer == sfxFrame) && (!hitpause) {
    sound_play(sfx);
}


image_index = frameStart + floor(window_timer*numFrames/windowLength);

for (var i = 0; i < numHitboxes; i++) {
    with player_id {
        var hitboxWindow = get_hitbox_value(strongAttack, i+1, HG_WINDOW);
        var hitboxFrame = get_hitbox_value(strongAttack, i+1, HG_WINDOW_CREATION_FRAME);
        var hitboxX = get_hitbox_value(strongAttack, i+1, HG_HITBOX_X);
        var hitboxY = get_hitbox_value(strongAttack, i+1, HG_HITBOX_Y);
        var hitboxDamage = get_hitbox_value(strongAttack, i+1, HG_DAMAGE);
    }
    
    if (window == hitboxWindow) && (window_timer == hitboxFrame) && (!hitpause) {
        with player_id {
            set_hitbox_value(strongAttack, i+1, HG_PROJECTILE_HSPEED, other.hsp*spr_dir);
            set_hitbox_value(strongAttack, i+1, HG_PROJECTILE_VSPEED, other.vsp);
        }
        create_hitbox(strongAttack, i+1, x+(hitboxX*spr_dir), y+hitboxY);
    }
}

if (window > numWindows) {
    //deactivate shield
    if (shieldActive) {
        shieldActive = false;
        sound_play(sound_get("shield_deactivate"));
    }
    //ustrong turns Zo around
    if (attack == AT_USTRONG) || (attack == AT_USTRONG_2) {
        spr_dir *= -1;
    }
    
    if (!free) {
        state = PS_IDLE;
        sprite_index = sprite_get("idle_B");
        mask_index = sprite_get("zo_ground_hurtbox");
        image_index = 0;
        state_timer = 0;
    } else {
        state = PS_IDLE_AIR;
        sprite_index = sprite_get("idle_B");
        mask_index = sprite_get("zo_air_hurtbox");
        image_index = 0;
        state_timer = 20;
    }
}


#define performSpecial
/// performSpecial(specialAttack, ...)
var specialAttack = argument[0];

if (!free) && (hsp != 0) {
    hsp -= sign(hsp)*ground_friction;
    if (abs(hsp) < ground_friction) {
        hsp = 0;
    }
} else if (free) && (hsp != 0) {
    hsp -= sign(hsp)*air_friction;
    if (abs(hsp) < air_friction) {
        hsp = 0;
    }
}


with player_id {
    var numWindows = get_attack_value(specialAttack, AG_NUM_WINDOWS);
    var chargeWindow = get_attack_value(specialAttack, AG_STRONG_CHARGE_WINDOW);
    var numHitboxes = get_num_hitboxes(specialAttack);
    var windowLength = get_window_value(specialAttack, other.window, AG_WINDOW_LENGTH);
    var windowType = get_window_value(specialAttack, other.window, AG_WINDOW_TYPE);
}

//timer advancing code, only execute if not in hitpause
if (!hitpause) {
    window_timer++;
    if (window_timer == windowLength) {
        if (windowType != 9) {
            window++;
        }
        window_timer = 0;
    }
}

with player_id {
    var windowLength = get_window_value(specialAttack, other.window, AG_WINDOW_LENGTH);
    var numFrames = get_window_value(specialAttack, other.window, AG_WINDOW_ANIM_FRAMES);
    var frameStart = get_window_value(specialAttack, other.window, AG_WINDOW_ANIM_FRAME_START);
    var hasSfx = get_window_value(specialAttack, other.window, AG_WINDOW_HAS_SFX);
    var sfx = get_window_value(specialAttack, other.window, AG_WINDOW_SFX);
    var sfxFrame = get_window_value(specialAttack, other.window, AG_WINDOW_SFX_FRAME);
}

if (hasSfx) && (window_timer == sfxFrame) && (!hitpause) {
    sound_play(sfx);
}

image_index = frameStart + floor(window_timer*numFrames/windowLength);

for (var i = 0; i < numHitboxes; i++) {
    with player_id {
        var hitboxWindow = get_hitbox_value(specialAttack, i+1, HG_WINDOW);
        var hitboxFrame = get_hitbox_value(specialAttack, i+1, HG_WINDOW_CREATION_FRAME);
        var hitboxX = get_hitbox_value(specialAttack, i+1, HG_HITBOX_X);
        var hitboxY = get_hitbox_value(specialAttack, i+1, HG_HITBOX_Y);
    }
    if (window == hitboxWindow) && (window_timer == hitboxFrame) && (!hitpause) {
        with player_id {
            var prevHsp = get_hitbox_value(specialAttack, i+1, HG_PROJECTILE_HSPEED);
            var prevVsp = get_hitbox_value(specialAttack, i+1, HG_PROJECTILE_VSPEED);
            if (other.attack != AT_NSPECIAL) && (other.attack != AT_EXTRA_3) {
                set_hitbox_value(specialAttack, i+1, HG_PROJECTILE_HSPEED, prevHsp*(spr_dir*other.spr_dir) + other.hsp*spr_dir);
                set_hitbox_value(specialAttack, i+1, HG_PROJECTILE_VSPEED, prevVsp + other.vsp);
            } else {
                set_hitbox_value(specialAttack, i+1, HG_PROJECTILE_HSPEED, prevHsp*(spr_dir*other.spr_dir));
            }
        }
        create_hitbox(specialAttack, i+1, x+(hitboxX*spr_dir), y+hitboxY);
        with player_id {
            set_hitbox_value(specialAttack, i+1, HG_PROJECTILE_HSPEED, prevHsp);
            set_hitbox_value(specialAttack, i+1, HG_PROJECTILE_VSPEED, prevVsp);
        }
    }
}

if (window > numWindows) {
    if (origID != player_id) {
        player_id.kirbySpawnZo = false;
        player_id.zoID = undefined;
        state = PS_IDLE;
        state_timer = 0;
        instance_destroy();
        exit;
    }
    //deactivate shield
    if (shieldActive) {
        shieldActive = false;
        sound_play(sound_get("shield_deactivate"));
    }
    //fspecial turns Zo around
    if (attack == AT_FSPECIAL) && (chainHit) {
        spr_dir *= -1;
    }
    if (!free) {
        if (windowType == 7) {
            state = PS_PRATLAND;
            state_timer = 0;
            image_index = 0;
        } else {
            if (spr_dir == sign(x - player_id.x)) && (abs(x - player_id.x) > playerTurnRange) { //turn towards player
                state = PS_WALK_TURN;
                state_timer = 0;
                image_index = 0;
                if (x - player_id.x > 0) {
                    spr_dir = -1;
                } else {
                    spr_dir = 1;
                }
            } else {
                state = PS_IDLE;
                state_timer = 0;
                image_index = 0;
            }
        }
    } else {
        if (windowType == 7) {
            state = PS_PRATFALL;
            state_timer = 0;
        } else {
            state = PS_IDLE_AIR;
            state_timer = 20;
        }
        image_index = 0;
    }
}