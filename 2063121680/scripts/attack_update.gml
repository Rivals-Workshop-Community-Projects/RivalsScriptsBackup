// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_DSTRONG) {
    if (window == 1) {
        if (strong_charge <= 40) {
            maxSpins = floor(strong_charge/10);
        }
        numSpins = 0;
        reset_hitbox_value(AT_DSTRONG, 1, HG_WINDOW);
        reset_hitbox_value(AT_DSTRONG, 2, HG_WINDOW);
        reset_hitbox_value(AT_DSTRONG, 3, HG_WINDOW);
        reset_hitbox_value(AT_DSTRONG, 4, HG_WINDOW);
        reset_hitbox_value(AT_DSTRONG, 5, HG_WINDOW);
        reset_hitbox_value(AT_DSTRONG, 6, HG_WINDOW);
    } else if (window == 3) && (window_timer == get_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH)) && (numSpins < maxSpins) {
        numSpins += 1;
        window_timer = 0;
    }
    
    if (stasisID != undefined && stasisID.hitboxStasisPlayerID == id && stasisID.hitboxStasisAttack == AT_DSTRONG && stasisID.hitStasis == true) {
        var hboxNum = stasisID.hitboxStasisHboxNum;
        if (hboxNum == 1 || hboxNum == 2 || hboxNum == 3) {
            set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 0);
            set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 0);
            set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 0);
            reset_hitbox_value(AT_DSTRONG, 1, HG_WINDOW);
            reset_hitbox_value(AT_DSTRONG, 2, HG_WINDOW);
            reset_hitbox_value(AT_DSTRONG, 3, HG_WINDOW);
        } else if (hboxNum == 4 || hboxNum == 5 || hboxNum == 6) {
            set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 0);
            set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 0);
            set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 0);
            reset_hitbox_value(AT_DSTRONG, 4, HG_WINDOW);
            reset_hitbox_value(AT_DSTRONG, 5, HG_WINDOW);
            reset_hitbox_value(AT_DSTRONG, 6, HG_WINDOW);
        }
    }
}

if (attack == AT_NSPECIAL) {
    if (window == 1) {
        if (window_timer == 1) {
            arrowCrit = false;
        }
        if (joy_pad_idle) {
            if runeO { //NSPEC auto-aims opponents.
                var minDist = 10000000000000000;
                var playerInstance = undefined;
                with oPlayer {
                    if (id != other.id) {
                       var playerDist = point_distance(x, y, other.x, other.y);
                        if (playerDist < minDist) {
                            minDist = playerDist;
                            playerInstance = id;
                        } 
                    }
                    
                }
                if (playerInstance != undefined) {
                    var autoX = (x - playerInstance.x);
                    if (autoX > 0) {
                        spr_dir = -1;
                    } else if (autoX < 0) {
                        spr_dir = 1;
                    }
                    var autoY = y - playerInstance.y;
                    var angle = darctan2(autoX * spr_dir, autoY * spr_dir) + 90;
                    arrowAngle = angle;
                } 
            } else {
                arrowAngle = 0;
            }
            
        } else {
            if (spr_dir == 1) && (joy_dir > 90) && (joy_dir < 270) {
                spr_dir = -1;
            }
            if (spr_dir == -1) && (joy_dir < 90 || joy_dir > 270) {
                spr_dir = 1;
            }
            arrowAngle = joy_dir + 90 - (90*spr_dir);
        }
        
    }
    
    
    var maxWindowTimer = 30;
    if (window_timer <= maxWindowTimer) {
        var speedExtra = window_timer/15;
    } else {
        speedExtra = maxWindowTimer/15;
    }
    
    
    var joyX = dcos(arrowAngle);
    var joyY = dsin(arrowAngle);
    if runeB { //NSPEC arrow travels faster.
        var arrowHsp = ((14 * joyX) + speedExtra) * 1.5;
        var arrowVsp = ((-14 * joyY * spr_dir) - speedExtra) * 1.5;
    } else {
        var arrowHsp = (14 * joyX) + speedExtra;
        var arrowVsp = (-14 * joyY * spr_dir) - speedExtra;
    }
    
    var arrowDamage = speedExtra*2;
    var arrowKB = speedExtra;
    
    if (arrowDamage >= 4) {
        arrowCrit = true;
    }
    
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, arrowHsp);
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, arrowVsp);
    set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3 + arrowDamage);
    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4 + arrowKB);
    
    if (window == 1) && (!special_down) && (window_timer >= 8) {
        window = 2;
        window_timer = 0;
    }
    if (window == 2) {
        sound_stop(sound_get("bow_draw"));
    }
    
    //bullet time
    if (free) {
        move_cooldown[AT_NSPECIAL] = 1000000000000000;
        var gravMod = 7;
        if (window == 1) {
            if (window_timer == 1) {
                bulletHsp = hsp/gravMod;
                bulletVsp = vsp/gravMod;
                sound_play(sound_get("bullet_time"));
            } else if (window_timer >= 2) {
                can_move = false;
                hsp = bulletHsp;
                vsp = bulletVsp;
                if (bulletVsp < max_fall/gravMod) {
                    bulletVsp += gravity_speed/(gravMod*gravMod);
                }
                
            }
        } else if (window == 2) && (window_timer == 0) {
            hsp = bulletHsp*5;
            vsp = bulletVsp*5;
            sound_stop(sound_get("bullet_time"));
        }
    } else {
        bulletHsp = 0;
        bulletVsp = 0;
    }
}

if (attack == AT_TAUNT) {
    if (window == 2) && (taunt_pressed || attack_pressed || special_pressed || shield_pressed) && (window_timer >= 30) {
        window = 3;
        window_timer = 0;
        sound_stop(sound_get("excuse_me_start"));
    }
}

if (attack == AT_DAIR) {
    if (window == 1) {
        bulletBounce = false;
        hurtboxID.sprite_index = sprite_get("dair_hurt");
        if (stasisID != undefined) {
            stasisID.hitboxStasisAttack = undefined;
        }
        attack_end();
        bulletHsp = hsp/4;
    } else if (window == 2) {
        if window_timer == 1 {
            hsp = bulletHsp;
        }
        can_move = false;
        if left_down hsp -= 0.1
        else if right_down hsp += 0.1
        hsp = clamp(hsp, -2, 2)
        vsp = 0.8;
        if (window == 2) && (window_timer >= 6) {
            if (shield_pressed && has_airdodge) {
                state = PS_IDLE_AIR;
                state_timer = 0;
                hurtboxID.sprite_index = hurtbox_spr;
                if (!runeA) {
                    move_cooldown[AT_DAIR] = 10000000000;
                }
            } else if (attack_pressed || special_pressed || shield_pressed) {
                if runeK { //DAIR doesn't put you into pratfall.
                    state = PS_IDLE_AIR;
                    state_timer = 0;
                    hurtboxID.sprite_index = hurtbox_spr;
                    if (!runeA) {
                        move_cooldown[AT_DAIR] = 10000000000;
                    }
                } else {
                    state = PS_PRATFALL;
                    state_timer = 0;
                    hurtboxID.sprite_index = hurtbox_spr;
                }
            }
        }
        if !(stasisID != undefined && stasisID.hitboxStasisPlayerID == id && stasisID.hitboxStasisAttack == AT_DAIR) {
            create_hitbox(AT_DAIR, 1, x, y);
        }
        
    } else if (window == 3) {
        if (window_timer == 1) {
            sound_stop(sound_get("bullet_time"));
            vsp = -16;
            hsp = bulletHsp*5;
        } else if (window_timer == get_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH)) {
            state = PS_DOUBLE_JUMP;
            state_timer = 0;
            hurtboxID.sprite_index = hurtbox_spr;
        }
    }
    
    if (bulletBounce) {
        window = 3;
        window_timer = 0;
        bulletBounce = false;
    }
    
    if (!free) {
        state = PS_PRATLAND;
        state_timer = 0;
    }
}

if (attack == AT_DSPECIAL) {
    if (window == 1) && (window_timer == 1) {
        reset_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW);
        reset_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW);
    }
    
    if (window == 1) && (window_timer == 15) && (stasisActive) {
        stasisActive = false;
    }
    
    if (!stasisActive) {
        if (window_timer == 1) {
            stasisChainAngle1 = random_func(0, 360, false);
            stasisChainAngle2 = random_func(1, 360, false);
            stasisChainAngle3 = random_func(2, 360, false);
            stasisChainAngle4 = random_func(3, 360, false);
            stasisChainTransparencyVar = 0;
            sound_play(sound_get("rune_search_start"));
        }
        if (window_timer == 30) {
            sound_stop(sound_get("rune_search_start"));
            if (stasisHitPlayer == true) {
                stasisHitPlayer = false;
            } else {
                sound_play(sound_get("rune_search_end"));
            }
        }
    } else {
        set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 0);
        set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 0);
        if (window_timer == 4) {
            sound_play(stasisEndSound);
            if (stasisID.hitboxStasisAttack == AT_NSPECIAL && stasisID.hitboxStasisPlayerID == id) {
                var angle = darctan2(-stasisID.hitboxStasisVsp, spr_dir*stasisID.hitboxStasisHsp);
            } else {
                var angle = darctan2(dsin(stasisID.hitboxStasisAngle), spr_dir*dcos(stasisID.hitboxStasisAngle));
            }
            
            var damage = stasisID.stasisHitCounter * 2;
            set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, damage);
            
            set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, angle);
            
        }
        if (window_timer == 14) {
            if (stasisType != "box") {
                create_hitbox(AT_DSPECIAL, 3, stasisID.x, stasisID.y - 16);
            }
            stasisTimer = 0;
            stasisID.stasisHitCounter = 0;
        }
    }
}

if (attack == AT_FSTRONG) {
    if (window == 1) {
        set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_HSPEED, 14 + (strong_charge/8));
    }
}

if (attack == AT_DATTACK) {
    if (window == 1) {
        if (stasisID != undefined) {
            stasisID.hitboxStasisAttack = undefined;
        }
        attack_end();
        dattackHitPlayer = false;
    } else if (window == 2) && (jump_pressed) && (!free) {
        sound_play(asset_get("sfx_jumpground"));
        window = 3;
        window_timer = 0;
        vsp = -jump_speed;
        sound_stop(sound_get("shield_surf"));
    } else if (window == 2) && (jump_pressed) && (free) {
        state = PS_DOUBLE_JUMP;
        state_timer = 6;
        hurtboxID.sprite_index = hurtbox_spr;
        sound_stop(sound_get("shield_surf"));
    } else if (window == 2) && (free) && (window_timer >= 7) {
        window = 3;
        window_timer = 0;
        sound_stop(sound_get("shield_surf"));
    } else if (window == 2) && (free) {
        window_timer = 1;
    }
    
    if (window == 3) && (window_timer == 14) {
        state = PS_IDLE_AIR;
        state_timer = 0;
        hurtboxID.sprite_index = hurtbox_spr;
    }
    
    if (window == 2) && (hsp == 0) && (!dattackHitPlayer) { //hit wall
        window = 3;
        window_timer = 0;
        sound_stop(sound_get("shield_surf"));
    }
    
    if (free) {
        sound_stop(sound_get("shield_surf"));
    }
    
    if (window == 2) {
        hsp = 8 * spr_dir
        if (attack_pressed) && (free) {
            attack = AT_DAIR;
            //crouchbox_spr = sprite_get("dair_hurt");
            window = 1;
            window_timer = 0;
        }
    }
    
    if (dattackHitPlayer) {
        if (window == 2) {
            window = 3;
            window_timer = 0;
            sound_stop(sound_get("shield_surf"));
        }
        if (window == 3) {
            if (window_timer >= 1) {
                vsp = -9;
                hsp = 4 * spr_dir;
                dattackHitPlayer = false;
            }
        }
    }
    
    if (window == 2) || (window == 3 && free) {
        createDattackHitbox = true;
    } else {
        createDattackHitbox = false;
    }
    
    if (createDattackHitbox) {
        if !(stasisID != undefined && stasisID.hitboxStasisPlayerID == id && stasisID.hitboxStasisAttack == AT_DATTACK) {
            create_hitbox(AT_DATTACK, 1, x, y);
            if runeI { //DATTACK spikes aerial opponents.
                create_hitbox(AT_DATTACK, 2, x, y);
            }
        }
    }
    
    if (stasisID != undefined && stasisID.hitboxStasisPlayerID == id && stasisID.hitStasis == true) {
        dattackHitPlayer = true;
    }
}

if (attack == AT_DTILT) {
    if (window == 1) {
        drawDtiltExplosionVar = 0;
    }
    if (window == 3) {
        drawDtiltExplosion = true;
    }
    if (window == 3) || (window == 4) {
        drawDtiltExplosionVar += 1;
    } else {
        drawDtiltExplosion = false;
    }
}

if (attack == AT_USPECIAL) {
    if (window == 1 && window_timer == 1) {
        if (uspecRepeat) {
            set_num_hitboxes(AT_USPECIAL, 0);
        } else {
            reset_num_hitboxes(AT_USPECIAL);
        }
    }
    
    hurtboxID.sprite_index = sprite_get("uspecial_hurt");
    if (window == 1) && (window_timer == 1) && (!uspecRepeat) {
        if runeF { //USPEC travels further vertically.
            set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -15);
        } else {
            reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED);
        }
        reset_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED);
        reset_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE);
        reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE);
    }
    can_fast_fall = false;
    can_move = false;
    can_wall_jump = true;
    
    if (window == 3) || (window == 2 && uspecRepeat) {
        var maxVsp = 1;
        var maxHsp = 4;
        var hspMod = 0.2;
        
        if (vsp > maxVsp) {
            vsp = maxVsp;
        }
        
        if (left_down) && (!right_down) && (hsp > -maxHsp) {
            hsp -= hspMod;
        }
        if (right_down) && (!left_down) && (hsp < maxHsp) {
            hsp += hspMod;
        }
        
        if ((down_down) && (!up_down)) || (shield_pressed) {
            window = 4;
            window_timer = 0;
        }
    }
    
    if (window == 3) && (!free) {
        window = 5;
        window_timer = 0;
    }
    
    if (window == 3) && (special_pressed) {
        attack = AT_NSPECIAL;
        hurtboxID.sprite_index = sprite_get("nspecial_hurt");
        window = 1;
        window_timer = 0;
        state_timer = 0;
        uspecRepeat = true;
    }
    
    if (window == 3) && (attack_pressed) {
        attack = AT_DAIR;
        hurtboxID.sprite_index = sprite_get("dair_hurt");
        window = 1;
        window_timer = 0;
        state_timer = 0;
        uspecRepeat = true;
    }
}

if (attack == AT_USTRONG) {
    if (window == 1) {
        if (stasisID != undefined) {
            stasisID.hitboxStasisAttack = undefined;
        }
        if (window_timer == 1) {
            ustrongNoGround = false;
            ustrongXVar = x - 52;
            ustrongDrawTimer = 0;
            ustrongPillarDraw = false;
            ustrongLiveHeight = 0;
            var ustrongXFlip = 1;
            
            ustrongYVar = 400;
            var onGround = position_meeting(ustrongXVar, ustrongYVar - 1, asset_get("par_block"));
            var onGroundLeft = position_meeting(ustrongXVar, ustrongYVar - 1, asset_get("par_block"));
            var onGroundRight = position_meeting(ustrongXVar + 104, ustrongYVar - 1, asset_get("par_block"));
            while !(onGroundLeft && onGroundRight) {
                ustrongYVar += 20;
                onGround = position_meeting(ustrongXVar, ustrongYVar - 1, asset_get("par_block"));
                onGroundLeft = position_meeting(ustrongXVar, ustrongYVar - 1, asset_get("par_block"));
                onGroundRight = position_meeting(ustrongXVar + 104, ustrongYVar - 1, asset_get("par_block"));
                if (ustrongYVar >= 800) {
                    ustrongXVar += 20 * spr_dir * ustrongXFlip;
                    ustrongYVar = 400;
                    if (ustrongXVar > room_width + 80) || (ustrongXVar < -80) {
                        if (ustrongXFlip == 1) {
                            ustrongXFlip = -1;
                            ustrongXVar = x - 52;
                        } else {
                            window = 2;
                            window_timer = 0;
                            ustrongWarningDraw = false;
                            ustrongNoGround = true;
                            onGround = true;
                            onGroundLeft = true;
                            onGroundRight = true;
                        }
                    }
                }
            }
            
            if (!ustrongNoGround) {
                while (onGround) {
                    ustrongYVar -= 1;
                    onGround = position_meeting(ustrongXVar, ustrongYVar - 4, asset_get("par_block"));
                    onGroundLeft = position_meeting(ustrongXVar, ustrongYVar - 4, asset_get("par_block"));
                    onGroundRight = position_meeting(ustrongXVar + 104, ustrongYVar - 4, asset_get("par_block"));
                }
            }
        }
        ustrongWarningDraw = true;
        ustrongWarningHeight = window_timer + strong_charge;
        var onGroundLeft = position_meeting(ustrongXVar, ustrongYVar - 2, asset_get("par_block"));
        var onGroundRight = position_meeting(ustrongXVar + 104, ustrongYVar - 2, asset_get("par_block"));
        
        if runeC { //USTRONG can be aimed faster horizontally.
            var ustrongSpd = 5;
        } else {
            var ustrongSpd = 3;
        }
        
        if (onGroundLeft && left_down && !right_down) {
            ustrongXVar -= ustrongSpd;
        } else if (onGroundRight && right_down && !left_down) {
            ustrongXVar += ustrongSpd;
        }
        
    } else if (window == 2) {
        sound_stop(sound_get("rune_search_start"));
        ustrongWarningDraw = false;
        if (window_timer >= 2) && (!ustrongNoGround) {
            ustrongPillarDraw = true;
            move_cooldown[AT_USTRONG] = 50;
        }
    }
}

if (attack == AT_FSPECIAL) {
    var instanceBox = instance_position(reticleX, reticleY, obj_article_platform);
    var instanceBoxPlayer = instance_position(x, y+2, obj_article_platform);
    var startX = x + 30*spr_dir;
    var startY = y - 16;
    var maxDist = 300;
    if runeJ { //Magnesis moves the box faster.
        var spdMod = 0.6;
        var spdMax = 11;
    } else {
        var spdMod = 0.4;
        var spdMax = 9;
    }
    var xDif = reticleX - x;
    var yDif = reticleY - y;
    retAngle = darctan2(yDif, xDif);
    retDist = sqrt(xDif*xDif + yDif*yDif);
    
    if (window == 1) {
        if (window_timer == 1) {
            reticleX = startX;
            reticleY = startY;
            retXAcc = 0;
            retYAcc = 0;
            hitboxStasisPlayer = player;
        } else if (window_timer >= 10) {
            if (special_pressed) || (attack_pressed) || (shield_pressed) { //retract
                window = 5;
                window_timer = 0;
                move_cooldown[AT_FSPECIAL] = 30;
            }
            var searchAngle = 60;
            if runeD { //FSPEC detection beam travels faster.
                var searchSpeed = 60;
            } else {
                var searchSpeed = 40;
            }
            
            magnesisReticleDraw = true;
            magnesisSearch = true;
            if (!boxActive && !playtest) { //summon box, broken in playtest mode
                if (reticleX > 20 && reticleX < room_width-20) {
                    reticleX += spr_dir*(searchSpeed*dcos(searchAngle));
                }
                reticleY -= searchSpeed*dsin(searchAngle);
                //reticleX += 15*spr_dir;
                //reticleY -= 10;
                
                if (reticleY < -16) {
                    window = 2;
                    window_timer = 0;
                    magnesisSearch = false;
                    var box = instance_create(floor(reticleX), floor(reticleY - 32), "obj_article_platform");
                        box.player_id = id;
                        box.spr_dir = spr_dir;
                        box.hitboxStasisPlayer = player;
                }
            } else {
                if runeD { //FSPEC detection beam travels faster.
                    var xSpd = 18*spr_dir;
                    var ySpd = 9;
                } else {
                    var xSpd = 12*spr_dir
                    var ySpd = 6;
                }
                reticleX += xSpd;
                if !(up_down && !down_down) && !(down_down && !up_down) {
                    reticleY -= (yDif + 24)/10;
                }
                if (up_down && !down_down) {
                    reticleY -= ySpd;
                } else if (down_down && !up_down) {
                    reticleY += ySpd;
                }
                
                if (abs(reticleX - startX) >= 300) {
                    window = 5;
                    window_timer = 0;
                }
                
                if (instanceBox != noone) && (instanceBox.player_id == id) {
                    window = 3;
                    window_timer = 0;
                    magnesisSearch = false;
                    reticleX = instanceBox.x;
                    reticleY = instanceBox.y + 32;
                }
                set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 6);
                create_hitbox(AT_FSPECIAL, 2, floor(reticleX), floor(reticleY));
                
            }
        }
    } else if (window == 2) {
        var recoilAngle = 60;
        var recoilAcc = 25;
        var windowTime = get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH);
        var recoilTime = (windowTime - window_timer)/windowTime;

        reticleX -= spr_dir*(recoilAcc*dcos(recoilAngle)) * recoilTime;
        reticleY += recoilAcc*dsin(recoilAngle) * recoilTime;
        if (window_timer == windowTime) {
            window = 3;
            window_timer = 1;
        }
    } else if (window == 3) {
        if (special_pressed) || (attack_pressed) || (shield_pressed) {
            window = 4;
            window_timer = 0;
        }
        if (joy_pad_idle) {
            retXAcc *= 0.9;
            retYAcc *= 0.9;
        } else {
            var retJoyX = dcos(joy_dir) * spdMod;
            var retJoyY = -dsin(joy_dir) * spdMod;
            
            if (xDif < maxDist && retJoyX > 0) || (xDif > -maxDist && retJoyX < 0) {
                retXAcc += retJoyX;
            } else {
                retXAcc *= 0.9;
            }
            if (yDif < maxDist && retJoyY > 0) || (yDif > -maxDist && retJoyY < 0) {
                retYAcc += retJoyY;
            } else {
                retYAcc *= 0.9;
            }
        }
        /*
        if (right_down) && (!left_down) && (xDif < maxDist) {
            retXAcc += spdMod;
        } else if (!right_down) && (left_down) && (xDif > -maxDist) {
            retXAcc -= spdMod;
        } else {
            retXAcc *= 0.9;
        }
        
        if (up_down) && (!down_down) && (yDif > -maxDist) {
            retYAcc -= spdMod;
        } else if (!up_down) && (down_down) && (reticleY < startY) && (yDif < maxDist) {
            retYAcc += spdMod;
        } else {
            retYAcc *= 0.9;
        }
        */
        
        if (retXAcc > spdMax) {
            retXAcc = spdMax;
        } else if (retXAcc < -spdMax) {
            retXAcc = -spdMax;
        }
        if (retYAcc > spdMax) {
            retYAcc = spdMax;
        } else if (retYAcc < -spdMax) {
            retYAcc = -spdMax;
        }
        
        if !(stasisActive && stasisType == "box") {
            var instanceBox = instance_position(reticleX, reticleY, obj_article_platform);
            if (instanceBox != noone) && (instanceBox.player_id == id) {
                if (reticleX > room_width + 90) {
                    reticleX = room_width + 90;
                } else if (reticleX < -90) {
                    reticleX = -90;
                } else {
                    reticleX += retXAcc;
                }
                
                if (reticleY > room_height + 90) {
                    reticleY = room_height + 90;
                } else {
                    if !(instanceBoxPlayer != noone && instanceBoxPlayer.player_id == id && retYAcc < 0) {
                        reticleY += retYAcc;
                    }
                }
            }
            
        }
        
    } else if (window == 5) {
        reticleX -= xDif/5;
        reticleY -= (yDif + 16)/5;
        if (xDif <= 10 && spr_dir == 1) || (xDif >= -10 && spr_dir == -1) {
            window_timer = get_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH);
            magnesisReticleDraw = false;
        } else {
            magnesisReticleDraw = true;
        }
        set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 7);
        create_hitbox(AT_FSPECIAL, 2, floor(reticleX), floor(reticleY));
    } else {
        magnesisReticleDraw = false;
    }
}

if (attack == AT_BAIR) {
    if (window == 1) && (window_timer == get_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH)) {
        spr_dir *= -1;
    }
}