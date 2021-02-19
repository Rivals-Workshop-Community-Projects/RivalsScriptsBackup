//B - Reversals

switch(attack){
    case AT_NSPECIAL:
    case AT_FSPECIAL:
    case AT_DSPECIAL:
    case AT_USPECIAL:
        trigger_b_reverse();
        break;
}



//Jab help combo

if (attack == AT_JAB && window == 4 && has_hit_player && meleetarget != noone){
    meleetarget.x = ease_linear(meleetarget.x, x + 40 * spr_dir, 1, 2);
    meleetarget.y = ease_linear(meleetarget.y, y, 1, 4);
}

if (attack == AT_JAB && has_hit){
    set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 9);
}else{
    set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 18);
}



//Up Tilt and Down Air jump cancel

if (attack == AT_UTILT || attack == AT_DAIR || (attack == AT_NSPECIAL && (window != 4 || window_timer > 8) && window != 3)) {
    if (window == 1 && window_timer == 1) {
        utilt_jump = false;
    }
    if (utilt_jump && !hitpause){
        can_jump = true;
        can_attack = true;
        can_shield = true;
        can_special = true;
    }
}

if (attack == AT_DAIR && window_timer < 4){
    can_jump = false;
    can_attack = false;
    can_shield = false;
    can_special = false;
}

if (attack == AT_UTILT){
    can_attack = false;
    can_shield = false;
}



//Dash Attack reset window values set in hit_player.gml and slow down at end of move

if (attack == AT_DATTACK) {
    if (window == 1 && window_timer == 1) {
        reset_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH);
        reset_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH);
    }
    if (window > 2 && !free){
        hsp = hsp * 0.75;
    }
}



//Down Air and Up Special hover

if ((attack == AT_DAIR && window < 6 && !utilt_jump) || (attack == AT_USPECIAL && window == 1)){
    can_fast_fall = false;
    
    falllimit = max_fall / 3;
    if (attack == AT_USPECIAL){
        falllimit = max_fall / 6;
    }
    
    movelimit = air_max_speed / 2;
    
    if (vsp > falllimit){
        vsp = falllimit;
    }
    if (hsp > movelimit){
        hsp = movelimit;
    }
    if (hsp < -movelimit){
        hsp = -movelimit;
    }
}

if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 1){
        uspecialhop = true;
        outlinetimer = 0;
        repeated = false;
    }
    
    if (down_pressed && uspecialhop){
        uspecialhop = false;
        sound_play(asset_get("mfx_hover"));
        outlinetimer = 6;
    }
    
    outline_color = [0, 0, 0];
    
    if (outlinetimer > 0){
        outline_color = [60, 60, 60];
    }
    
    init_shader();
    
    outline_color = [0, 0, 0];
    
    outlinetimer--;
    
    if (window == 2 && window_timer == 1 && uspecialhop){
        vsp = -10;
    }
    
    if (window == 2 && down_pressed && vsp < 0){
        vsp = 0;
        can_fast_fall = true;
    }
    
    if (runeN && !repeated && window == 2 && window_timer == 13){
        repeated = true;
        window_timer = 0;
    }
}



//Strong Attack hover

if ((attack == AT_USTRONG || attack == AT_FSTRONG || attack == AT_DSTRONG)){
    if (window == 1 && window_timer == 1){
        hoversound = true;
        airstrong = false;
        parried = false;
        fly_time = 0;
    }
    
    if (free && !(attack == AT_DSTRONG && window > 2)){
        airstrong = true;
    }
    
    if (has_hit || runeM){
        nerfedpratfall = false;
    }else{
        nerfedpratfall = true;
    }
        
    
    if (window == 1 && window_timer == strongstartup - 1 && (strong_charge > 0)){
        var fly_upper = 8;
        var fly_mult = 0.25;
        if (!joy_pad_idle){
            var fly_accel = ease_quadIn(1, fly_upper, 60 - strong_charge, 60) * fly_mult * 0.9;
            if runeM{
                fly_accel = 1.2;
            }
            hsp += lengthdir_x(fly_accel, joy_dir);
            vsp += lengthdir_y(fly_accel, joy_dir);
            if hoversound{
                sound_play(djump_sound);
                hoversound = false;
            }
            fly_time++;
            if (fly_time > 4){
                airstrong = true;
            }
        } else {
            hsp *= .6;
            vsp *= .6;
            hoversound = true;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = ease_quadIn(1, fly_upper, 60 - strong_charge, 60) * air_max_speed * fly_mult;
        if runeM{
            max_speed = 9;
        }
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        fall_through = true;
    }
    
    if ((window == 2 || window == 3 || window == 4) && (attack != AT_DSTRONG)){
        vsp = 0;
        hsp = 0;
    }
    
    if (y > room_height - 100 && window == 5 && attack == AT_DSTRONG && !(godmode && has_hit)){
        window = 6;
        window_timer = 0;
        vsp = 0;
    }
    
    if (attack == AT_DSTRONG && window == 6 && window_timer < 14){
        vsp = 0;
        if (window_timer == 1 && !hitpause){
            create_hitbox(AT_DSTRONG, 4, x, y)
        }
    }
    
    if (((window == 5 && attack != AT_DSTRONG) || (window == 6 && window_timer == 14 && !has_hit)) && airstrong && !hitpause && !parried){
        left_down = false;
        right_down = false;
        if (godmode || runeG){
            vsp = djump_speed * -1;
            sound_play(jump_sound);
        }else{
            strongcloudtrigger = true;
        }
    }
    
    can_fast_fall = false;
    can_move = false;
}

/*STRONG WINDOWS (sometimes)

- 1: Charge and hover (9 frames)
- 2: Startup
- 3: Attack
- 4: Endlag
- 5: Trigger to do pratfall, if applicable

*/



//Down Strong drag people

if (attack == AT_DSTRONG && has_hit_player && !hitpause && meleetarget != noone){
    if (window == 4 && window_timer > 6){
        meleetarget.x = ease_linear(meleetarget.x, x, 1, 10);
        meleetarget.y = ease_linear(meleetarget.y, y - 10, 1, 10);
        meleetarget.hsp = hsp;
    }
    if (window == 5){
        meleetarget.x = ease_linear(meleetarget.x, x, 1, 10);
        meleetarget.y = y - 10;
    }
}



//Special move physics handling

switch(attack){
    case AT_DSPECIAL:
        can_move = false;
        //Set whether airborne ver. or not
        if (window == 1 && window_timer == 1){
            if free{
                dspecialair = true;
                vsp = 0;
            }
            else{
                dspecialair = false;
                vsp = 0;
            }
            dontdolasthit = false;
        }
        
        //Reset loop tracker and outline timer
        if (window == 1 && window_timer == 10){
            timesthrough = 0;
            outlinetimer = 0;
        }
        
        //Ground ver. accel
        if (window == 2 && !dspecialair && timesthrough > 1){
            if (vsp == 0){
                vsp = -1;
                outlinetimer = 6;
                sound_play(asset_get("mfx_hover"));
            }
            vsp -= .13 * (2.5 - window * .4);
            
            outline_color = [0, 0, 0];
            
            if (outlinetimer > 0){
                outline_color = [60, 60, 60];
            }
            
            init_shader();
    
            outline_color = [0, 0, 0];
            
            outlinetimer--;
        }
        
        //Hitbox
        if (window == 2 && window_timer == 1){
            var hitbox = create_hitbox(AT_DSPECIAL, 1, x, y-34);
            hitbox.fromcloud = false;
        }
        
        if (window == 2 && window_timer == 4 && !tournament_safe){
            var hitbox = create_hitbox(AT_DSPECIAL, 2, x, y-34);
            hitbox.fromcloud = false;
        }
        
        //Loop
        if (window == 2 && window_timer == 8 && timesthrough < 5){
            window_timer = 0;
            timesthrough++;
        }
        
        if (window == 2 && window_timer == 9){
            var hitbox = create_hitbox(AT_DSPECIAL, 3, x, y-34);
            hitbox.fromcloud = false;
            dontdolasthit = true;
        }
        
        //Can do stuff
        if (window == 2 && timesthrough > 0){
            can_wall_jump = true;
            if runeH{
                can_attack = true;
                can_strong = true;
                can_ustrong = true;
                can_shield = true;
                can_jump = true;
                if (((shield_pressed) || (jump_pressed && (djumps < max_djumps || !free)) || attack_pressed) && !dontdolasthit){
                    var hitbox = create_hitbox(AT_DSPECIAL, 3, x, y-34);
                    hitbox.fromcloud = false;
                }
            }
        }
        can_fast_fall = false;
        air_max_speed = 3;
        air_friction = .3;
        break;
    case AT_FSPECIAL:
        switch(window){
            case 1: //Reset "charge" variable
                fspecheldframes = 0;
                break;
            case 2: //If holding button, delay shot + limit velocity
                if (special_down && fspecheldframes < 30 && window_timer == 9){
                    window_timer--;
                    fspecheldframes++;
                    if (vsp > 3){
                        vsp = 3;
                    }
                    if (hsp > 3){
                        hsp = 3;
                    }
                    if (hsp < -3){
                        hsp = -3;
                    }
                }
                can_fast_fall = false;
                break;
            case 3: //Spawn bullet blast VFX
                if (window_timer == 1){
                    spawn_hit_fx((x + 70 * spr_dir), (y - 50), bulletblast);
                }
                can_fast_fall = false;
                break;
            case 4: //Canceling
                if (window_timer > 14){
                    can_jump = true;
                    can_attack = true;
                    can_shield = true;
                    can_strong = true;
                    can_ustrong = true;
                    can_wall_jump = true;
                    can_special = true;
                }
            break;
        }
        break;
    case AT_NSPECIAL:
        can_fast_fall = false;
        if (window == 1){
            if (window_timer == 1){
                if (vsp > 2){
                    vsp = 2;
                }
                if (vsp < -2){
                    vsp = -2;
                }
                if (hsp > 2){
                    hsp = 2;
                }
                if (hsp < -2){
                    hsp = -2;
                }
                hascloudinited = false;
                shoulddonspecthing = false;
                with(asset_get("obj_article1")){
                    if (player_id == other.id && state != 3){
                        other.shoulddonspecthing = true;
                    }
                }
            }
        }
        if (window == 2){
            if (window_timer == 1){
                if (special_down){
                    vsp = -14;
                    nspecspeedchange = 0.7;
                }
                else{
                    vsp = -7;
                    nspecspeedchange = 2;
                }
            }
            if (abs(hsp) < air_max_speed * 1.5){
                if (left_down){
                    hsp -= nspecspeedchange;
                }
                if (right_down){
                    hsp += nspecspeedchange;
                }
            }
            if (window_timer == 1){
                //sound_play(asset_get("sfx_swipe_medium1"));
            }
            if (window_timer == 15){
                sound_play(sound_get("brass_melee"));
                if shoulddonspecthing{
                    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 11);
                    if (y > finalcloudheight){
                        set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, ease_linear(11, 22, y - finalcloudheight, finalcloudheight));
                    }
                    set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
                }
                else{
                    reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
                    reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING);
                }
            }
        }
        if (!hascloudinited && has_hit_player && shoulddonspecthing && nspectarget != noone){
            hascloudinited = true;
            with (asset_get("obj_article1")){
                if (player_id == other.id){
                    bufferedstate = 8;
                    nspectarget = other.nspectarget;
                }
            }
        }
        break;
}



//Set special move cooldown

switch(attack){
    case AT_DSPECIAL:
    case AT_USPECIAL:
    case AT_FSPECIAL:
    case AT_NSPECIAL:
        if (window > 1 && !godmode && !dont_cooldown){
            rain_cooldown = cooldown_max;
        }
        break;
}



//Held taunt

if (attack == AT_TAUNT && window == 3 && window_timer == 10 && taunt_down && !taunt_pressed){
    window_timer--;
}

if !tournament_safe{
    if (attack == AT_TAUNT && state_timer == 418 && !codec){
        needscodec = true;
    }
    
    
    if (attack == AT_TAUNT && state_timer == 420 && !codec){
        sound_play(sound_get("textappear"));
        textboxframe = 0;   //Anim frame for box
        codec = true;       //Codec on/off
        codectimer = 0;     //Anim timer for box
        codecfile = externalcodec;
        codecindex = 0;     //First page
        resetCodecStuff();
    }
}

if (attack == AT_TAUNT && window == 1 && window_timer == 1 && !practice && codec){
    sound_play(sound_get("textleave"));
    textboxframe = 9;   //Frame after pausing frame
    codectimer = 0;     //Reset timer for even frame timing
    vsp = -10;
}



var dontdostuff = false;

if (attack == AT_TAUNT && window == 1 && window_timer == 1 && beta && attack_down){
    hidehud = !hidehud;
    godmode = false;
    sound_play(sound_get("textpage"));
    dontdostuff = true;
}

if tournament_safe dontdostuff = true;



//Activate text box

if (!dontdostuff && !hidehud && attack == AT_TAUNT && window == 1 && window_timer == 1 && practice && !((left_down || right_down) && !codec)){
    if !codec{
        if (!left_down || right_down){
            if godmode{
                godmodeanimtimer = godmodemaxtimer;
                godmode = false;
            }
            sound_play(sound_get("textappear"));
            textboxframe = 0;   //Anim frame for box
            codec = true;       //Codec on/off
            codectimer = 0;     //Anim timer for box
            codecfile = 0;      //Tutorial
            codecindex = 0;     //First page
            resetCodecStuff();
            if (up_down){
                if beta{
                    codecfile = 21;
                }else{
                    codecfile = 19;
                }
            }
            if down_down {
                codecfile = externalcodec;
            }
        }
    }else{
        if (codecindex < maxcodecindex && !(down_down || up_down || right_down || left_down)){
            sound_play(sound_get("textpage"));
            codecindex++;
            resetCodecStuff();
        }
        else if (codecindex > 0 && up_down && !(down_down || right_down || left_down)){
            sound_play(sound_get("textpage"));
            codecindex--;
            resetCodecStuff();
        }
        else if (codecindex < maxcodecindex - 9 && (right_down | left_down)){
            sound_play(sound_get("textpage"));
            codecindex += 10;
            resetCodecStuff();
        }
        else{
            sound_play(sound_get("textleave"));
            textboxframe = 9;   //Frame after pausing frame
            codectimer = 0;     //Reset timer for even frame timing
        }
    }
}

if (!dontdostuff && !hidehud && attack == AT_TAUNT && window == 1 && window_timer == 1 && !codec && practice && (left_down || right_down)){
    sound_play(sound_get("textpage"));
    godmodeanimtimer = godmodemaxtimer;
    if godmode{
        godmode = false;
    }
    else{
        godmode = true;
    }
}



//Runes

if (window == 1 && window_timer == 1){
    if runeD{
        set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 270);
    }
    else{
        reset_hitbox_value(AT_DAIR, 4, HG_ANGLE);
    }
    
    if runeE{
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 6);
    }
    else{
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, -6);
    }
}

if (runeO && has_hit_player && meleetarget.soaked && !(attack == AT_JAB && window < 5) && !hitpause){
    can_jump = true;
    can_attack = true;
    can_shield = true;
    can_special = true;
    can_strong = true;
    can_ustrong = true;
    can_wall_jump = true;
}



#define resetCodecStuff

currentcodecline = 1;   //Line of codec being written
codectimer2 = 0;    //Anim timer for text scroll
codecprint[1] = "";
codecprint[2] = "";
codecprint[3] = "";
codecprint[4] = "";