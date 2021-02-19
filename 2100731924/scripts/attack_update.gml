//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack = AT_NAIR){
	play_sound = asset_get("sfx_swipe_weak1");
}

if(!hitpause){
    switch(attack){
        case AT_DSPECIAL: // place batit
            if(window == 1 && window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) && (!batitPlaced || runeM)){
                if(runeM){
                    if(array_length(batitArticle) < 2){
                        batitArticle[array_length(batitArticle)] = instance_create(x+12*spr_dir, y, "obj_article1");
                    }
                } else{
                    batitArticle = instance_create(x+12*spr_dir, y, "obj_article1");
                }
            }
            break;
        case AT_FSPECIAL: // pick up batit
            if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && pickUpBatit){
                move_cooldown[AT_NSPECIAL] = 0;
                pickUpBatit = false;
                batitToPickUp.state = 2;
                window = 4;
                window_timer = 0;
            } else if((window == 3 || window == 4 || window == 6) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                if(free){
                    if(was_parried)
                        set_state(PS_PRATFALL);
                    else
                        set_state(PS_IDLE_AIR);
                } else{
                    if(was_parried)
                        set_state(PS_PRATLAND);
                    else
                        set_state(PS_IDLE);
                }
            } else if (window == 5){
                if(instance_exists(grabbedid)){
                    grabbedid.x = x + 45*spr_dir + hsp;
                    grabbedid.y = y + vsp;
                    grabbedid.spr_dir = -spr_dir;
                    grabbedid.wrap_time = 6000;
                    grabbedid.state = PS_WRAPPED;
                    grabbedid.ungrab++;
                    if(special_down || is_special_pressed(DIR_ANY)){
                        window = 7;
                        window_timer = 0;
                    } else if(shield_pressed || grabbedid.ungrab >= 60 || (grabbedid.ungrab == 30 && free)){
                        grabbedid.state = PS_TUMBLE;
                        grabbedid = noone;
                        window = 6;
                        window_timer = 0;
                        hsp = -7*spr_dir;
                        if(free){
                            vsp = -1;
                        }
                    }
                } else if(instance_exists(grabbedArticleId)){
                    grabbedArticleId.x = x + 45*spr_dir + hsp;
                    grabbedArticleId.y = y + vsp;
                    grabbedArticleId.spr_dir = -spr_dir;
                    grabbedArticleId.hitstop = 2;
                    grabbedArticleId.ungrab++;
                    if(special_down || is_special_pressed(DIR_ANY)){
                        window = 7;
                        window_timer = 0;
                    } else if(shield_pressed || grabbedArticleId.ungrab >= 60 || (grabbedArticleId.ungrab == 30 && free)){
                        grabbedArticleId = noone;
                        window = 6;
                        window_timer = 0;
                        hsp = -7*spr_dir;
                        if(free){
                            vsp = -1;
                        }
                    }
                }else {
                    grabbedid = noone;
                    grabbedArticleId = noone;
                    window = 6;
                    window_timer = 0;
                    hsp = -7*spr_dir;
                    if(free){
                        vsp = -1;
                    }
                }
            } if (window == 7){
                if(instance_exists(grabbedid)){
                    grabbedid.spr_dir = -spr_dir;
                    grabbedid.wrap_time = 6000;
                    grabbedid.state = PS_WRAPPED;
                    if(window_timer > get_window_value(attack, window, AG_WINDOW_LENGTH)/2){
                        grabbedid.x = lerp(x + 45*spr_dir + hsp, x + 25*spr_dir + hsp, window_timer/get_window_value(attack, window, AG_WINDOW_LENGTH));
                        grabbedid.y = lerp(y + vsp, y - 20 + vsp, window_timer/get_window_value(attack, window, AG_WINDOW_LENGTH));
                    } else {
                        grabbedid.x = x + 45*spr_dir + hsp;
                        grabbedid.y = y + vsp;
                    }
                } else if(instance_exists(grabbedArticleId)){
                    grabbedArticleId.spr_dir = -spr_dir;
                    grabbedArticleId.hitstop = 2;
                    if(window_timer > get_window_value(attack, window, AG_WINDOW_LENGTH)/2){
                        grabbedArticleId.x = lerp(x + 45*spr_dir + hsp, x + 25*spr_dir + hsp, window_timer/get_window_value(attack, window, AG_WINDOW_LENGTH));
                        grabbedArticleId.y = lerp(y + vsp, y - 20 + vsp, window_timer/get_window_value(attack, window, AG_WINDOW_LENGTH));
                    } else {
                        grabbedArticleId.x = x + 45*spr_dir + hsp;
                        grabbedArticleId.y = y + vsp;
                    }
                }
            } else if (window == 8){
                if(window_timer == 1){
                    var throwBox = create_hitbox(attack, 2, round(x+8), round(y-62));
                    for(var i = 0; i < array_length(throwBox.can_hit); i++){
                        throwBox.can_hit[i] = 0;
                    }
                    if(instance_exists(grabbedid)){
                        throwBox.can_hit[grabbedid.player] = 1;
                    }
                }
            }
            break;
        case AT_FTILT: // batit ftilt projectile
            if(state_timer <= 6 && batitPlaced){
                if(!attack_down && ((!right_stick_down && spr_dir == 1) || (!left_stick_down && spr_dir == -1))){
                    doAttack = false;
                }
                if((state_timer == 6 || projectilesMandatory) && doAttack)
                    batitAttack(1, spr_dir);
            }
            break;
        case AT_FSTRONG_2: // batit fstrong
            if(state_timer <= 6 && batitPlaced){
                if(!strong_down && ((!right_strong_down && spr_dir == 1) || (!left_strong_down && spr_dir == -1))){
                    doStrong = false;
                }
                if((state_timer == 6 || strongsMandatory) && doStrong){
                    attack_end(AT_FSTRONG);
                    batitAttack(10, spr_dir);
                }
            }
            break;
        case AT_FSTRONG: // for when Joshua keeps this while Batit is out (runeA)
            if(runeA && state_timer <= 6 && batitPlaced){
                if(!strong_down && ((!right_strong_down && spr_dir == 1) || (!left_strong_down && spr_dir == -1))){
                    doStrong = false;
                }
                if((state_timer == 6 || strongsMandatory) && doStrong){
                    attack_end();
                    batitAttack(10, spr_dir);
                }
            }
            break;
        case AT_FAIR: // batit fair projectile and strong
            if(state_timer <= 6 && batitPlaced){
                if(!strong_down && ((!right_strong_down && spr_dir == 1) || (!left_strong_down && spr_dir == -1))){
                    doStrong = false;
                }
                if(!attack_down && ((!right_stick_down && spr_dir == 1) || (!left_stick_down && spr_dir == -1))){
                    doAttack = false;
                }
                if((state_timer == 6 || strongsMandatory) && doStrong){
                    attack_end(AT_FSTRONG);
                    batitAttack(10, spr_dir);
                } else if((state_timer == 6 || projectilesMandatory) && doAttack && ((!right_strong_down && spr_dir == 1) || (!left_strong_down && spr_dir == -1)))
                    batitAttack(1, spr_dir);
            }
            break;
        case AT_BAIR: // batit bair projectile and strong
            if(state_timer <= 6 && batitPlaced){
                if(!strong_down && ((!right_strong_down && spr_dir == -1) || (!left_strong_down && spr_dir == 1))){
                    doStrong = false;
                }
                if(!attack_down && ((!right_stick_down && spr_dir == -1) || (!left_stick_down && spr_dir == 1))){
                    doAttack = false;
                }
                if((state_timer == 6 || strongsMandatory) && doStrong){
                    attack_end(AT_FSTRONG);
                    batitAttack(10, -spr_dir);
                } else if((state_timer == 6 || projectilesMandatory) && doAttack && ((!right_strong_down && spr_dir == -1) || (!left_strong_down && spr_dir == 1)))
                    batitAttack(1, -spr_dir);
            }
            if(runeD){
                can_attack = true;
                move_cooldown[AT_NAIR] = max(2, move_cooldown[AT_NAIR]);
                move_cooldown[AT_DAIR] = max(2, move_cooldown[AT_DAIR]);
                move_cooldown[AT_UAIR] = max(2, move_cooldown[AT_UAIR]);
                move_cooldown[AT_FAIR] = max(2, move_cooldown[AT_FAIR]);
            }
            break;
        case AT_UTILT: // utilt/uair batit projectile
            if(state_timer <= 6 && batitPlaced){
                if(!attack_down && !up_stick_down){
                    doAttack = false;
                }
                if((state_timer == 6 || projectilesMandatory) && doAttack)
                    batitAttack(7, 1); // direction doesn't matter here
            }
            break;
        case AT_USTRONG_2: // batit ustrong
            if(state_timer <= 6 && batitPlaced){
                if(!strong_down && !up_strong_down){
                    doStrong = false;
                }
                if((state_timer == 6 || strongsMandatory) && doStrong){
                    attack_end(AT_USTRONG);
                    batitAttack(11, 1); // direction doesn't matter here
                }
            }
            break;
        case AT_USTRONG: // for when Joshua keeps this while Batit is out (runeB)
            if(runeB && state_timer <= 6 && batitPlaced){
                if(!strong_down && !up_strong_down){
                    doStrong = false;
                }
                if((state_timer == 6 || strongsMandatory) && doStrong){
                    attack_end();
                    batitAttack(11, 1); // direction doesn't matter here
                }
            }
            break;
        case AT_UAIR: // make Uair work in 2 parts, also batit projectile and strong
            if(state_timer <= 6 && batitPlaced){
                if(!strong_down && !up_strong_down){
                    doStrong = false;
                }
                if(!attack_down && !up_stick_down){
                    doAttack = false;
                }
                if((state_timer == 6 || strongsMandatory) && doStrong){
                    attack_end(AT_USTRONG);
                    batitAttack(11, 1); // direction doesn't matter here
                } else if((state_timer == 6 || projectilesMandatory) && doAttack && !up_strong_down)
                    batitAttack(7, 1); // direction doesn't matter here
            } else if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
                if(!finishUair){
                    window = get_attack_value(attack, AG_NUM_WINDOWS);
                    window_timer = 0;
                }
            } else if(window == 3){ // grab template kind of
                for(var k = 0; k < array_length(uairGrabbedid); k++){
                    if(uairGrabbedid[k,0] != noone){
                        if(instance_exists(uairGrabbedid[k,0]) && uairGrabbedid[k,0].hit_player_obj == id){
                            uairGrabbedid[k,0].ungrab = 0;
                            uairGrabbedid[k,0].x = x + hsp + uairGrabbedid[k,1];
                            uairGrabbedid[k,0].y = y + vsp + uairGrabbedid[k,2];
                            with pHitBox {
                                if(orig_player == other.player && attack == AT_UAIR && hbox_num > 1){
                                    var changeX = true;
                                    var changeY = false;
                                    while(!place_meeting(x, y, other.uairGrabbedid[k,0])){
                                        if(changeX){
                                            if(other.uairGrabbedid[k,0].x < x){
                                                other.uairGrabbedid[k,0].x++;
                                                other.uairGrabbedid[k,1]++;
                                            } else {
                                                other.uairGrabbedid[k,0].x--;
                                                other.uairGrabbedid[k,1]--;
                                            }
                                            changeY = true;
                                            changeX = false;
                                        } else if(changeY){
                                            if(other.uairGrabbedid[k,0].y < y){
                                                other.uairGrabbedid[k,0].y++;
                                                other.uairGrabbedid[k,2]++;
                                            } else {
                                                other.uairGrabbedid[k,0].y--;
                                                other.uairGrabbedid[k,2]--;
                                            }
                                            changeY = false;
                                            changeX = true;
                                        }
                                    }
                                }
                            }
                            if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
                                uairGrabbedid[k,0] = noone;
                                uairGrabbedid[k,1] = 0;
                                uairGrabbedid[k,2] = 0;
                            }
                        } else {
                            uairGrabbedid[k,0] = noone;
                        }
                    }
                }
            }
            break;
        case AT_DATTACK: // made Dattack work in 2 parts
            if(window == get_attack_value(attack, AG_NUM_WINDOWS) - 2){
                if(window_timer == get_hitbox_value(attack, get_num_hitboxes(attack)-1, HG_WINDOW_CREATION_FRAME)-1){
                    has_hit = false;
                }
            } else if(window == get_attack_value(attack, AG_NUM_WINDOWS) - 1){
                if(has_hit && !was_parried){
                    if(window_timer == 1) sound_play(asset_get("sfx_swipe_heavy1"));
                    else if(window_timer > 4){
                        set_window_value(attack, get_attack_value(attack, AG_NUM_WINDOWS), AG_WINDOW_TYPE, 9);
                        window = get_attack_value(attack, AG_NUM_WINDOWS);
                        window_timer = 0;
                        initialDattackY = y;
                        if(runeG){
                            vsp = -6;
                        } else{
                            vsp = -4.5;
                        }
                    }
                } else if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
                    spr_dir *= -1;
                    if(!was_parried) set_state(PS_IDLE);
                    else set_state(PS_PRATLAND);
                }
            } else if(window == get_attack_value(attack, AG_NUM_WINDOWS)){
                if(state_timer > dashAttackLength){
                    can_jump = true;
                    can_wall_jump = true;
                }
                if(y >= initialDattackY || !free){
                    set_window_value(attack, get_attack_value(attack, AG_NUM_WINDOWS), AG_WINDOW_TYPE, 0);
                }
            }
            break;
        case AT_DSPECIAL_AIR: // change AT_DSPECIAL_AIR to land when landing
            if(!runeL){
                move_cooldown[AT_DSPECIAL_AIR] = BOMB_COOLDOWN;
            }
            if(!free){
                if(runeL){
                    set_state(PS_LAND);
                } else {
                    landing_lag_time = 10;
                    set_state(PS_LANDING_LAG);
                }
            }
            break;
        case AT_FSPECIAL_2: // pulls in on hit
            if(window == 2 && has_hit && !was_parried){
                window = 4;
                window_timer = 0;
            } else if(window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
                if(free){
                    if(was_parried)
                        set_state(PS_PRATFALL);
                    else
                        set_state(PS_IDLE_AIR);
                } else{
                    if(was_parried)
                        set_state(PS_PRATLAND);
                    else
                        set_state(PS_IDLE);
                }
            } else if(window == 4){
                if(free){
                    can_jump = true;
                    can_shield = true;
                }
                can_attack = true;
                can_wall_jump = true;
                can_strong  = true;
                can_ustrong = true;
            }
            break;
        case AT_EXTRA_1:
            if (compatibleUrl == 1932454633){ //this stuff is for the reverse TCO support, mostly copied over
                if(window_timer == 1 && window == 4){
                    sound_stop(pencilDrawSound);
                } else if (window_timer == 18 && window == 7){
                    drawingTimer = 179;
                    move_cooldown[attack] = 179;
                }
            } else if(compatibleUrl == 1933111975){ //this stuff is for the reverse Trummel and Alto support
                if(!codecOut || endCodec){
                    if(state_timer == 1){
                        sound_play(textBoxAppearSound);
                        codecOut = true;
                        startCodec = true;
                        endCodec = false;
                        codecTimer = 0;
                        currentPage = 0;
                    }
                } else if(currentPage < lastPage){
                    if(state_timer == 1){
                        sound_play(textBoxPageSound);
                        codecTimer = 0;
                        currentPage++;
                        startCodec = false;
                    }
                } else {
                    if(state_timer == 1){
                        sound_play(textBoxLeaveSound);
                        endCodec = true;
                        codecTimer = 0;
                    }
                }
            }
            break;
        case AT_USPECIAL_2:
            if(runeM){
                for(var i = 0; i < array_length(batitArticle); i++){
                    if(batitPlaced && place_meeting(x, y, batitArticle[i]) && (special_pressed || is_special_pressed(3))){
                        attack_end();
                        set_hitbox_value(AT_USPECIAL, 13, HG_KNOCKBACK_SCALING, .5);
                        set_hitbox_value(AT_USPECIAL, 13, HG_HITPAUSE_SCALING, .4);
                        set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 0);
                        set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -10);
                        dontSwitchToUspecial = true;
                        set_attack(AT_USPECIAL);
                    }
                }
            } else{
                if(batitPlaced && place_meeting(x, y, batitArticle) && (special_pressed || is_special_pressed(3))){
                    attack_end();
                    set_hitbox_value(AT_USPECIAL, 13, HG_KNOCKBACK_SCALING, .5);
                    set_hitbox_value(AT_USPECIAL, 13, HG_HITPAUSE_SCALING, .4);
                    set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 0);
                    set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -10);
                    dontSwitchToUspecial = true;
                    set_attack(AT_USPECIAL);
                }
            }
        case AT_USPECIAL:
            can_wall_jump = true;
            hud_offset = 20;
            break;
        case AT_TAUNT_2:
        case AT_TAUNT:
            if(practiceMode){
                if(state_timer == 1){
                    if(currentTutorialPage){
                        if(right_down){
                            currentTutorialPage += 10;
                            if(currentTutorialPage > totalTutorialPages){
                                currentTutorialPage = totalTutorialPages;
                            }
                        } else if(left_down){
                            currentTutorialPage--;
                        } else if(currentTutorialPage == totalTutorialPages){
                            currentTutorialPage = 0;
                        } else {
                            currentTutorialPage++;
                        }
                    } else {
                        currentTutorialPage++;
                    }
                    clear_button_buffer(PC_TAUNT_PRESSED);
                }
                iasa_script();
            }
            break;
    }
}

#define batitAttack(newState, newDir)
with batitArticle {
    switch(state){
        case 3:
            if(bumpBox != noone){
                bumpBox.length = 0;
                bumpBox = noone;
            }
        case 0:
            attackDir = newDir;
            state = newState;
            state_timer = 0;
            break;
        case 1:
        case 7:
        case 9:
        case 10:
        case 11:
            if(other.runeN){
                attackDir = newDir;
                state = newState;
                state_timer = 0;
            }
            break;
    }
}