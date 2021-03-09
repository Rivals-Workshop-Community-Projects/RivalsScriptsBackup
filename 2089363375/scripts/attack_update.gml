//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}     

//Making the cat attack
if (instance_exists(mycat)) {
    with (mycat) {
        if (player_id.attack != AT_NSPECIAL || (player_id.attack == AT_NSPECIAL && player_id.window < 5)) {
            if (state != "hurt" && state != "attack" && state != "wait" && state != "spawn" && state != "dead") {
                if (!done_attacking) {
                    state = "attack";
                    window_timer = 1;
                    current_attack = player_id.attack;
                    window = player_id.cat_window_min[current_attack];
                    has_hit = false;
                    started_attack = true;
                }
            }
            else if (state == "attack") {
                if (current_attack != player_id.attack) {
                    state = "attack";
                    window_timer = 1;
                    current_attack = player_id.attack;
                    window = player_id.cat_window_min[current_attack];
                    has_hit = false;
                    started_attack = true;
                }
            }
        }
    }
}

//Jab stuff
if (instance_exists(mycat)) {
    with (mycat) {
        if (player_id.attack == AT_JAB && window != player_id.window + 11 && state != "dead"
        && (player_id.window == 1 || player_id.window == 4 
        ||  player_id.window == 7 || player_id.window == 9)) {
            state = "attack";
            current_attack = player_id.attack;
            window = player_id.window + 11;
            window_timer = player_id.window_timer;
            has_hit = false;
        }
    }
}

if (attack == AT_JAB) {
    if (window == 8) {
        if (attack_pressed)
            attack_tap_timer = 11;
        else
            attack_tap_timer --;
            
        if (attack_tap_timer <= 0 && window_timer >= get_window_value(AT_JAB, window, AG_WINDOW_LENGTH))
        {
            window ++;
            window_timer = 0;
        }
    }
    else {
        attack_tap_timer = 0;
    }
}

//F Strong Angling

if (attack == AT_FSTRONG) {
    if (window == 2) {
        if (window_timer <= 1) {
            if (down_down)  {
                window = 5;
                window_timer = 0;
            }
            else if (up_down) {
                window = 8;
                window_timer = 0;
            }
        }
    }
    if (window == 4 || window == 7 || window == 10) {
        if (window_timer >= get_window_value(AT_FSTRONG, window, AG_WINDOW_LENGTH)) {
            set_state(PS_IDLE);
            window_timer = 0;
        }
    }
}

if (attack == AT_NSPECIAL){
    if (instance_exists(mycat)) {
        if (mycat.state == "dead" || mycat.follow_type == 1) {
            if (window < 3) {
                window = 5;
                window_timer = 0;
            }
            
            if (window == 5) {
                if (window_timer == 16)
                    mycat.go_back = true;
            }
        }
        else {
            if (window == 2) {
                if (mycat.state != "attack" || mycat.current_attack != attack) {
                    set_state(PS_IDLE);
                    nspecial_charge_timer = 0;
                }
                else {
                    if (!special_down){
                        window_timer = 0;
                        
                        sound_stop(asset_get("sfx_boss_final_charge"));
                        if (nspecial_charge_timer >= 70) {
                            sound_play(asset_get("sfx_ell_explosion_medium"));
                            window = 4;
                            mycat.window = 10;
                            mycat.window_timer = 0;
                        }
                        else if (nspecial_charge_timer >= 35) {
                            sound_play(asset_get("sfx_ell_strong_attack_explosion"));
                            window = 3;
                            mycat.window = 9;
                            mycat.window_timer = 0;
                        }
                        else {
                            sound_play(asset_get("sfx_ell_fist_explode"));
                            window = 3;
                            mycat.window = 8;
                            mycat.window_timer = 0;
                        }
                    
                        nspecial_charge_timer = 0;
                    }
                    else {
                        nspecial_charge_timer ++;
                        if (nspecial_charge_timer == 1 && runeG)
                            nspecial_charge_timer = 70;
                        if (nspecial_charge_timer == 70) {
                            sound_stop(asset_get("sfx_boss_final_charge"));
                            sound_play(sound_get("sfx_nspecial_ready"));
                        }
                    }
                }
            }
            if (window == 1)
                nspecial_charge_timer = 0;
        }
    }
    can_fast_fall = false;
}

if (attack == AT_FSPECIAL){
    if (mycat.state == "dead") {
        if (window == 2) {
            if (window_timer >= 6) {
                window_timer = 0
                window = 3
            }
        }
    }
    else {
        if (window == 1) {
            if(mycat.spr_dir == -1)
                fspecial_aim = 180;
            else
                fspecial_aim = 0;
                
        }
        if (window == 2) {
            if (mycat.state != "attack" || mycat.current_attack != attack) {
                window = 3;
                nspecial_charge_timer = 0;
                sound_stop(asset_get("sfx_ell_missile_loop"));
            }
            else {
                if (runeC) {
                    if (nspecial_charge_timer >= 47)
                        nspecial_charge_timer = 40;
                    else
                         nspecial_charge_timer ++;
                }
                else
                        nspecial_charge_timer ++;
                if (nspecial_charge_timer == 1){
                    sound_play(asset_get("sfx_ell_missile_loop"), true);
                }
                if (nspecial_charge_timer < 300) {
                    if (nspecial_charge_timer % 8 == 0) {
                        if (mycat.state == "attack" && mycat.current_attack == attack) {
                            var myfire = create_hitbox(AT_FSPECIAL, 1, mycat.x + 16 * mycat.spr_dir, mycat.y - 16);
                            
                            var firespd = 0
                            if (nspecial_charge_timer < 60)
                                firespd = 8
                            else
                                firespd = ease_linear(8, 1, nspecial_charge_timer - 60, 240)
                                
                            var signedDir = joy_dir;

                            if (joy_pad_idle) {
                                if (mycat.spr_dir == -1)
                                    signedDir = 180;
                                else
                                    signedDir = 0;
                            }

                            if (mycat.spr_dir == -1) {
                                signedDir = clamp(signedDir, 135, 225);
                            }
                            else {
                                if (signedDir > 180) {
                                    signedDir += 360 * -sign(signedDir)
                                }
                                signedDir = clamp(signedDir, -45, 45); 
                            }
                            
                            fspecial_aim = lerp(fspecial_aim, signedDir, 0.25) + (cos(get_gameplay_time() / 2) * 8);
                            
                            myfire.hsp = lengthdir_x(firespd, fspecial_aim);
                            myfire.vsp = lengthdir_y(firespd, fspecial_aim);
                        }
                    }
                }
                if (nspecial_charge_timer == 300) {
                    sound_stop(asset_get("sfx_ell_missile_loop"));
                    sound_play(asset_get("sfx_ell_small_missile_ground"));
                }
            
                
                if (nspecial_charge_timer > 32)  {
                    if (!special_down) {
                        window_timer = 0;
                        window = 3;
                        sound_play(asset_get("sfx_zetter_upb_hit"));
                        nspecial_charge_timer = 0;
                    }
                }
            }
        }
    }

    if (window == 3) {
        sound_stop(asset_get("sfx_ell_missile_loop"));
    }
    can_fast_fall = false;
}
else {
    sound_stop(asset_get("sfx_ell_missile_loop"));
}

if (attack == AT_USPECIAL){
    if (window == 3 && window_timer >= 11){
        can_wall_jump = true;
    }
    if (runeD) {
        if (window == 2 || window == 3) {
            if (window_timer % 9 == 0 && window_timer > 1) {
                create_hitbox(AT_USPECIAL, 1, x, y);
            }   
        }
    }
    can_fast_fall = false;
}

if (attack == AT_DSPECIAL) {
    if (window == 1) {
        if (dspecial_gague >= dspecial_gague_max && mycat.state != "dead") {
            window = 5;
            window_timer = 0;
            dspecial_gague = 0;
        }
    }

    //Absorbing projectiles
    if (window == 4) {
        destroy_hitboxes();

        if (window_timer < 18) {
            invincible = true;
        }
    }

    if (window >= 2 && window <= 3) {
        if (window == 2 || window == 3) {
            with (asset_get("pHitBox")) {
                if (player != other.player) {
                    if (point_distance(x, y, other.x, other.y - 24) < 60) {
                        if (type == 2) {
                            with (other) {
                                if (x < other.x)
                                    spr_dir = 1;
                                else
                                    spr_dir = -1;
                                orig_knock = 0;
                                should_make_shockwave = false;
                                window = 4;
                                window_timer = 0;
                                other.destroyed = true;
                            }
                        }
                    }
                }
            }
        }
    }

    if (window == 4 && window_timer == 1) {
        if (mycat.state != "dead") {
            if (dspecial_gague < dspecial_gague_max) {
                if (runeL)
                    dspecial_gague = dspecial_gague_max;
                else
                    dspecial_gague++;
            }
        }
    }

    can_fast_fall = false;
    can_move = false;
}
