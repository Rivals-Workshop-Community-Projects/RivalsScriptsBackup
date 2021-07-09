if(joy_pad_idle == false){
    if(joy_dir <= 60 || joy_dir >= 300){
        dir_held = 1;
    }else if(joy_dir >= 120 && joy_dir <= 240){
        dir_held = -1;
    }else{
        dir_held = 0;
    }
}else{
    dir_held = 0;
}
if(multihit != noone){
    with(multihit){
        if(state == PS_DEAD || state == PS_RESPAWN){
            other.multihit = noone;
        }
    }
}

if(!has_fjump && free){
    move_cooldown[AT_DSPECIAL] = 2;
}else if(!has_fjump && !free){
    has_fjump = true;
    //has_fjump = true; //what
}
if(!has_suplex && free){
    move_cooldown[AT_FSPECIAL] = 2;
}else if(!has_suplex && !free){
    has_suplex = true;
    move_cooldown[AT_FSPECIAL] = 0;
}

if(state == PS_PARRY_START || state == PS_AIR_DODGE || state == PS_JUMPSQUAT || state == PS_DOUBLE_JUMP ||
    (attack == AT_NSPECIAL_2 && (window == 5 || window == 8))){
    sound_stop(sound_get("uppercharge2"));
}

//special menu timer
if(menu_timer >= 0){
    menu_open = true;
    if(!practice){
        can_move = false;
        can_attack = false;
        can_jump = false;
        can_strong = false;
        can_ustrong = false;
        can_special = false;
        can_shield = false;
        can_fast_fall = false;
        hsp = 0;
        vsp = 0;
        if(attack != AT_TAUNT){
            state = PS_SPAWN;
        }
    }
    if(menu_timer > 120 || menu_timer <= 20){
        menu_timer--;
    }
}else{
    menu_open = false;
}

if(close_timer >= 0){
    close_timer--;
}

//menu selection
if(menu_open){
    menu_close = true;
    if(up_down){
        menu_dir = 0;
    }else if(down_down){
        menu_dir = 2;
    }else if(dir_held == 1){
        menu_dir = 1;
    }else{
        menu_dir = -1;
    }
    if(menu_timer == 125){
        sound_play(asset_get("mfx_forward"));
    }
    if(active_col < 4){
        if(menu_dir != -1 && menu_dir != prev_dir){
            specialnums[active_col] = menu_dir;
            sound_play(asset_get("mfx_change_color"));
            for(var i = 0; i < 3; i++){
                if(i != menu_dir){
                    specs_chosen[active_col, i] = false;;
                }
            }
            active_col++;
        }
        prev_dir = menu_dir;
    }
    if(active_col >= 4 && menu_confirm){
        menu_timer = 20;
        menu_confirm = false;
    }
}

//resets menu variables when closed
if(menu_close && !menu_open){
    if(!practice){
        can_move = true;
        can_attack = true;
        can_jump = true;
        can_strong = true;
        can_ustrong = true;
        can_special = true;
        can_shield = true;
        can_fast_fall = true;
        if(state == PS_SPAWN && get_gameplay_time() >= 120){
            state = PS_IDLE;
        }
    }
    menu_close = false; 
    sound_play(asset_get("mfx_back"));
    close_timer = 4;
    menu_dir = -1;
    prev_dir = -1;
    active_col = 0;
    menu_confirm = true;
    for(var i = 0; i <= 3; i++){
        for(var j = 0; j <= 2; j++){
            specs_chosen[i, j] = true;
        }
    }
}

if (runesUpdated || runesBuiltIn){
    if(runeC){
        set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 50);
        set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 1.0);
        set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 18);
    }else{
        reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING);
        reset_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH);
    }
    if(runeD){
        max_fall = 19;
    }else{
        max_fall = 10;
    }
    if(runeE){
        set_hitbox_value(AT_DSPECIAL_1, 2, HG_DAMAGE, 2);
        set_hitbox_value(AT_DSPECIAL_1, 2, HG_KNOCKBACK_SCALING, 0);
    }else{
        reset_hitbox_value(AT_DSPECIAL_1, 2, HG_DAMAGE);
        reset_hitbox_value(AT_DSPECIAL_1, 2, HG_KNOCKBACK_SCALING);
    }
    if(runeF){
        set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 42);
        set_hitbox_value(AT_NAIR, 2, HG_TECHABLE, 1);
        set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 4);
    }else{
        reset_hitbox_value(AT_NAIR, 2, HG_ANGLE);
        reset_hitbox_value(AT_NAIR, 2, HG_TECHABLE);
        reset_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK);
    }
    if(runeG){
        max_djumps = 2;
    }else{
        max_djumps = 1;
    }
    if(runeL){
        set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 240);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 5);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -2);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.02);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
    }else{
        reset_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN);
    }
    runesUpdated = false;
}

if swallowed { //Kirby ability script starts here
    swallowed = 0;
    //Define any assets kirby might need to grab from YOUR CHARACTER
    var ability_spr = sprite_get("kirbyability");;
    var ability_hurt = sprite_get("kirbyability_hurt");
    var ability_icon = sprite_get("kirbyicon");
    var shotput_sfx = sound_get("shotbonk");
    var shotproj = sprite_get("aaashotput");
    if("enemykirby" in self) with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
        sfx_miibrawler_shotput_bonk = shotput_sfx;
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
        set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
        set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 27);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 4);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 26);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 5);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);
        
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 32);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);
        
        if (get_num_hitboxes(AT_EXTRA_3) < 1) { 
            set_num_hitboxes(AT_EXTRA_3, 1);
        }
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 90);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 33);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -23);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 25);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 25);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 10);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 45);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 7);
        set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.75);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 20);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 302);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, shotproj);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, shotproj);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 8.5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -9);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0.9);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, 0.05);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);
        set_hitbox_value(AT_EXTRA_3, 1, HG_IGNORES_PROJECTILES, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_EFFECT, 69);
        
        newicon = ability_icon;
    }
}

if ("enemykirby" in self && enemykirby != undefined) { //if kirby is in a match & swallowed
    //SIMULATED HITBOX_INIT AND HITBOX_UPDATE
    with pHitBox {
        if(player_id.url == 1868756032 && attack == AT_EXTRA_3 && type == 2){
            if(!in_hitpause){
                if(hitbox_timer == 1){
                    shotbounces = 2;    //Time until demise
                    whichHHH = player.spr_dir;  //So the Shotput knows which way to bounce. Please don't ask about the name.
                    already_bounced = false;
                    victim = noone;
                }else{
                    if(!free && !already_bounced){
                    	already_bounced = true; //added it here
                        sound_play(player_id.sfx_miibrawler_shotput_bonk);
                        shotbounces--;
                        if(shotbounces <= 0){
                            destroyed = true;
                        }else if(shotbounces > 0){
                            hitbox_timer = 2;
                            vsp = -7;
                            hsp += (-3 * whichHHH);
                            damage -= 4;
                            kb_value -= 3;
                            kb_scale -= 0.4;
                            sound_effect = asset_get("sfx_blow_medium1");
                            hitpause -= 8;
                            hitpause_growth -= 0.3;
                            already_bounced = true;
                            
                        }
                    }
                    if (free && already_bounced) {
                        already_bounced = false;
                    }
                }
            }
            with oPlayer {
                if(place_meeting(x, y, other) && player != other.player && hitpause){
                    other.victim = player;
                }
            }
            if(victim != noone && victim.hitpause){
                in_hitpause = true;
            }else{
                in_hitpause = false;
            }
        }
    }
    //SIMULATED UPDATE
    with oPlayer { //Run through all players
        if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3 && url == 1868756032) {
            can_fast_fall = false;
            can_move = false;
            if(window == 1 && window_timer == 1){
                can_b_reverse = true;
            }
            if(window == 1 && window_timer <= 5){
                if(can_b_reverse && ((spr_dir == 1 && left_down) || (spr_dir == -1 && right_down))){
                    can_b_reverse = false;
                    spr_dir *= -1;
                    hsp *= -1;
                }
            }
        }
    }
} 

//kill sound on galaxy
with(oPlayer) if(activated_kill_effect) {
    if(hit_player_obj == other && other.can_final_spark && get_player_stocks(player) == 1){
        with(other){
            sound_play(sound_get("final_spark"));
            can_final_spark = false;
            hitstop = 45;
            hit_player_obj.hitstop = 45;
        }
    }
}

//peace
if(shovel_knight_exists){
    instance_destroy(player);
}