//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


//taunt
var taunt_move_length = get_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH);

if (attack == AT_TAUNT){
    if (window == 2 || window == 3){
        if (window_timer == 1){
            hsp = 2*spr_dir;
            spawn_base_dust( x + (0), y, "walk", spr_dir);
        }
        if (window_timer == round(taunt_move_length/2)){
            hsp = -2*spr_dir;
            spawn_base_dust( x + (0), y, "walk", spr_dir);
        }
        
        //funny
        var windbox_speed = 1;
        var max_windbox_speed = 3;
        
        with (oPlayer) {
            if (self != other) {
                if ((x > other.x && other.spr_dir == 1) or (x < other.x && other.spr_dir == -1)) && abs(x - other.x) < 60 && abs(y - other.y) < 60 {
                    if (abs(hsp) < max_windbox_speed) {
                        hsp += x > other.x ? windbox_speed : -windbox_speed;
                    }
                }
            }
        }
    }
}

//forward air
var fair_startup = get_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH);

if (attack == AT_FAIR){
    if (window == 1){
        if (window_timer == 1){
            if (!hitpause && !hitstop){
                //sound_play(sound_get("poing1"));
            }
        }
    }
    if (window == 1){
        if (window_timer == fair_startup){
            if (!hitpause && !hitstop){
                sound_play(asset_get("sfx_shovel_swing_heavy1"), false, noone, 0.5, 1.2);
            }
        }
    }
    if (window == 2){
        if (window_timer == 1){
            sound_stop(sound_get("poing2"));
        }
    }
}

//neutral air
var nair_startup = get_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH);
var nair_active_time = get_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH);

if (attack == AT_NAIR){
    if (window == 1){
        if (window_timer == 1){
            //reset stuff
            reset_attack_value(AT_NAIR, AG_CATEGORY);
            reset_attack_value(AT_NAIR, AG_HAS_LANDING_LAG);
            reset_attack_value(AT_NAIR, AG_LANDING_LAG);
            reset_attack_value(AT_NAIR, AG_OFF_LEDGE);
            
            nair_hsp_boosted = false;
        }
        if (window_timer == nair_startup){
            if (!hitpause && !hitstop){
                //sfx
                sound_play(sound_get("sweat1"));
                sound_play(asset_get("sfx_swipe_weak1"), false, noone, 0.3, 0.7);
            }
        }
    }
    if (window == 2){
        if (window_timer > 1 && window_timer < nair_active_time - 2 && (window_timer + 1) mod 3 == 0){
            if (!hitpause && !hitstop){
                //sfx again
                sound_stop(sound_get("sweat1"));
                sound_stop(asset_get("sfx_swipe_weak1"));
                sound_play(sound_get("sweat1"));
                sound_play(asset_get("sfx_swipe_weak1"), false, noone, 0.3, 0.7);
            }
        }
        if (attack_down){
            if (free){
                //going grounded
                set_attack_value(AT_NAIR, AG_CATEGORY, 2);
                set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 0);
                set_attack_value(AT_NAIR, AG_LANDING_LAG, 0);
                set_attack_value(AT_NAIR, AG_OFF_LEDGE, 1);
            }
        }
        else{
            if (free){
                set_attack_value(AT_NAIR, AG_CATEGORY, 1);
                reset_attack_value(AT_NAIR, AG_HAS_LANDING_LAG);
                reset_attack_value(AT_NAIR, AG_LANDING_LAG);
                reset_attack_value(AT_NAIR, AG_OFF_LEDGE);
            }
        }
        if (!free && get_attack_value(AT_NAIR, AG_CATEGORY) == 2){
            if (!hitpause && !hitstop && !nair_hsp_boosted){
                hsp += 5*spr_dir;
                nair_hsp_boosted = true;
                sound_play(asset_get("sfx_land"));
                sound_play(sound_get("glisten"));
                
                spawn_base_dust( x + (0), y, "dash_start", spr_dir);
            }
        }
    }
    if (window == 3){
        if (free){
            set_attack_value(AT_NAIR, AG_CATEGORY, 1);
            reset_attack_value(AT_NAIR, AG_HAS_LANDING_LAG);
            reset_attack_value(AT_NAIR, AG_LANDING_LAG);
        }
        if (nair_hsp_boosted && has_hit){
            can_jump = true;
        }
    }
}

//back air
var bair_startup = get_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH);

if (attack == AT_BAIR){
    if (window == 1){
        if (window_timer == 1){
            if (!hitpause && !hitstop){
                //sound_play(sound_get("sweat3"));
                bair_mogura_mode = random_func_2(1, 5, true);
            }
        }
        if (window_timer == bair_startup){
            if (!hitpause && !hitstop){
                sound_play(sound_get("clock"));
                sound_play(sound_get("sweat1"));
                //sound_play(sound_get("jab_scissors"), false, noone, 0.2, 0.7);
            }
        }
    }
    if (window == 2){
        if (window_timer == 1){
            if (!hitpause && !hitstop){
                hsp = 7*spr_dir;
            }
        }
    }
}

//up air
var uair_startup = get_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH);

if (attack == AT_UAIR){
    if (window == 1){
        if (window_timer == 1){
            if (!hitpause && !hitstop){
                sound_play(asset_get("sfx_ell_eject"), false, noone, 0.6, 1.4);
            }
        }
        if (window_timer == uair_startup){
            if (!hitpause && !hitstop){
                sound_play(sound_get("sweat1"));
                sound_play(asset_get("sfx_ell_steam_release"), false, noone, 0.3, 1.7);
                sound_play(asset_get("sfx_ell_dspecial_stick"), false, noone, 0.55, 1.2);
            }
        }
    }
    if (window == 2 || window == 3){
        hud_offset = 70;
    }
}

//down air
var dair_startup = get_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH);
var dair_initial_late_hit_length = get_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH);
var dair_loop_length = get_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH);

var hover_vsp = 0.5;

if (hover_uses > 1){
    hover_vsp = 3.5;
}

if (attack == AT_DAIR){
    if (window == 1){
        if (window_timer == dair_startup){
            sound_play(asset_get("sfx_ell_eject"), false, noone, 0.6, 1.4);
            sound_play(asset_get("sfx_ell_big_missile_fire"), false, noone, 0.6, 1.4);
            sound_play(asset_get("sfx_boss_fireball_land"), false, noone, 0.8, 1.2);
            
            hover_timer = 0;
        }
    }
    if (window == 3){
        if (window_timer == dair_initial_late_hit_length){
            if (attack_down || down_stick_down){
                window = 5;
                window_timer = 0;
                destroy_hitboxes();
                //create new hitbox
                create_hitbox(AT_DAIR, 2, floor(x), floor(y));
                sound_play(asset_get("sfx_boss_fireball_land"), false, noone, 0.8, 0.7);
                //increment hover uses
                hover_uses++;
            }
            else{
                destroy_hitboxes();
            }
        }
    }
    if (window == 5){
        //increment hover timer
        hover_timer++;
        
        if (window_timer == dair_loop_length){
            if (attack_down || down_stick_down){
                window_timer = 0;
                //create new hitbox
                create_hitbox(AT_DAIR, 2, floor(x), floor(y));
                sound_stop(asset_get("sfx_boss_fireball_land"));
                sound_play(asset_get("sfx_boss_fireball_land"), false, noone, 0.8, 0.7);
            }
        }
        //go to endlag when done
        if ((!attack_down && !down_stick_down) || hover_timer > max_hover_time){
            destroy_hitboxes();
            
            window = 4;
            window_timer = 0;
            
            if (hover_timer > max_hover_time){
                sound_play(sound_get("sweat1"));
            }
        }
        else{
            //gravity stuff
            if (vsp > hover_vsp){
                set_window_value(AT_DAIR, 5, AG_WINDOW_CUSTOM_GRAVITY, 0);
            }
            else{
                set_window_value(AT_DAIR, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);
            }
            

            //hover
            if (vsp > hover_vsp){
                vsp /= 1.2;
            }
        }
    }
    if (window == 4){
        //destroy hitboxes during the start of endlag
        if (window_timer == 1){
            destroy_hitboxes();
        }
    }
}

//up tilt
var utilt_startup = get_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH);

if (attack == AT_UTILT){
    if (window == 1){
        if (window_timer == 1){
            if (!hitpause && !hitstop){
                //
            }
        }
        if (window_timer == utilt_startup){
            if (!hitpause && !hitstop){
                spawn_base_dust( x + (0), y, "land", spr_dir);
                sound_play(sound_get("pop"));
            }
        }
    }
    if (window > 1){
        hud_offset = 50;
    }
}

//dtilt
var dtilt_startup = get_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH);

if (attack == AT_DTILT){
    if (window == 1){
        if (window_timer == utilt_startup){
            if (!hitpause && !hitstop){
                spawn_base_dust( x + (60)*spr_dir, y, "dash_start", spr_dir*-1);
                sound_play(asset_get("sfx_crunch"));
            }
        }
    }
}

//ftilt
var ftilt_startup = get_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH);
var ftilt_startup_again = get_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH);

if (attack == AT_FTILT){
    if (window == 1){
        if (window_timer == ftilt_startup){
            if (!hitpause && !hitstop){
                if (ftilt_should_multihit){
                    spawn_base_dust( x + (40)*spr_dir, y, "dash_start", spr_dir*-1);
                    sound_play(sound_get("sweat1"));
                }
                else{
                    window = 3;
                    window_timer = ftilt_startup_again;
                }
            }
        }
    }
    if (window == 3){
        if (window_timer == 1){
            //
        }
        if (window_timer == ftilt_startup_again){
            if (!hitpause && !hitstop){
                spawn_base_dust( x - (20)*spr_dir, y, "dash", spr_dir);
                spawn_base_dust( x - (10)*spr_dir, y, "dash", spr_dir);
                spawn_base_dust( x + (50)*spr_dir, y, "dash_start", spr_dir*-1);
                sound_play(sound_get("sweat1"));
                sound_play(asset_get("sfx_boss_fireball_land"), false, noone, 1, 1.2);
            }
        }
    }
}

//dattack
var dattack_startup = get_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH);
var dattack_hsp = 8;

if (attack == AT_DATTACK){
    if (window == 1){
        if (window_timer == 1){
            hsp /= 1.8;
        }
        if (window_timer == dattack_startup){
            if (!hitpause && !hitstop){
                spawn_base_dust( x - (10)*spr_dir, y, "dash_start", spr_dir);
                sound_play(sound_get("ricochet"), false, noone, 0.3, 1.1);
                
                hsp = dattack_hsp*spr_dir;
                vsp = -3;
            }
        }
    }
}

//jab
var jab1_startup = get_window_value(AT_JAB, 1, AG_WINDOW_LENGTH);
var jab2_startup = get_window_value(AT_JAB, 4, AG_WINDOW_LENGTH);
var jab3_startup = get_window_value(AT_JAB, 7, AG_WINDOW_LENGTH);

if (attack == AT_JAB){
    if (window == 1){
        if (window_timer == jab1_startup){
            if (!hitpause && !hitstop){
                spawn_base_dust( x + (60)*spr_dir, y, "dash_start", spr_dir*-1);
                sound_play(asset_get("sfx_ori_glide_featherout"), false, noone, 0.7, 1.1);
            }
        }
    }
    if (window == 4){
        if (window_timer == jab2_startup){
            if (!hitpause && !hitstop){
                spawn_base_dust( x + (60)*spr_dir, y, "dash_start", spr_dir*-1);
                sound_play(asset_get("sfx_ori_glide_featherout"), false, noone, 0.7, 0.9);
            }
        }
    }
    if (window == 7){
        if (window_timer == jab3_startup){
            if (!hitpause && !hitstop){
                sound_play(asset_get("sfx_blow_heavy1"));
                sound_play(sound_get("sweat2"), false, noone, 0.4, 1);
                spawn_base_dust( x + (60)*spr_dir, y, "land", spr_dir);
                spawn_base_dust( x + (80)*spr_dir, y, "dash_start", spr_dir*-1);
            }
        }
    }
}

//up strong
var ustrong_startup = get_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH);
var ustrong_finisher_startup = get_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH);

if (attack == AT_USTRONG){
    if (window == 1){
        if (window_timer == 1){
            ustrong_sfx_played = false;
        }
    }
    if (window == 2){
        if (window_timer == ustrong_startup){
            if (!hitpause && !hitstop){
                spawn_base_dust( x + (0)*spr_dir, y, "land", spr_dir);
                sound_play(sound_get("machinegun"), false, noone, 0.5, 0.8);
            }
        }
    }
    if (window == 3){
        if (window_timer == ustrong_finisher_startup){
            if (!hitpause && !hitstop){
                sound_stop(sound_get("machinegun"));
                sound_play(sound_get("glisten"), false, noone, 1, 1);
                sound_play(sound_get("ricochet"), false, noone, 0.3, 1);
                sound_play(asset_get("sfx_blow_medium2"), false, noone, 0.8, 0.85);
                spawn_base_dust( x + (30)*spr_dir, y, "dash_start", spr_dir*-1);
                spawn_base_dust( x - (30)*spr_dir, y, "dash_start", spr_dir);
            }
        }
    }
    if (window > 2){
        hud_offset = 140;
    }
}

//up strong charge hitboxes
if (attack == AT_USTRONG && enable_strong_charge_hitboxes){
    if (window == 1){
        if (strong_charge >= 1 && (strong_charge mod hitbox_rate == 0 || strong_charge == 1)){
            if (!hitpause && !hitstop){
                create_hitbox(AT_EXTRA_1, 1, x, y);
                spawn_base_dust( x - (20)*spr_dir, y, "dash", spr_dir);
                sound_stop(sound_get("windup"));
                sound_play(sound_get("windup"));
            }
        }
    }
    if (window == 2){
        if (window_timer == 1){
            sound_stop(sound_get("windup"));
            destroy_hitboxes();
        }
    }
}

//forward strong
var fstrong_startup = get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH);

if (attack == AT_FSTRONG){
    if (window == 1){
        if (window_timer == 1){
            if (!hitpause && !hitstop){
                sound_play(sound_get("angry_fume"), false, noone, 1, 1);
                //sound_play(asset_get("sfx_swipe_weak1"), false, noone, 0.3, 0.8);
            }
        }
    }
    if (window == 2){
        if (window_timer == fstrong_startup){
            if (!hitpause && !hitstop){
                //spawn_base_dust( x - (10)*spr_dir, y, "dash", spr_dir);
                spawn_base_dust( x + (80)*spr_dir, y, "dash_start", spr_dir*-1);
                sound_play(sound_get("boing"), false, noone, 0.8, 1);
            }
        }
    }
}

//forward strong charge hitboxes
if (attack == AT_FSTRONG && enable_strong_charge_hitboxes){
    if (window == 1){
        if (strong_charge >= 1 && (strong_charge mod hitbox_rate == 0 || strong_charge == 1)){
            if (!hitpause && !hitstop){
                create_hitbox(AT_EXTRA_1, 2, x, y);
                spawn_base_dust( x - (20)*spr_dir, y, "dash", spr_dir);
                sound_stop(sound_get("windup"));
                sound_play(sound_get("windup"));
            }
        }
    }
    if (window == 2){
        if (window_timer == 1){
            sound_stop(sound_get("windup"));
            destroy_hitboxes();
        }
    }
}

//down strong
var dstrong_startup = get_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH);
var dstrong_second_hit_startup = get_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH);

if (attack == AT_DSTRONG){
    if (window == 2){
        if (window_timer == dstrong_startup){
            if (!hitpause && !hitstop){
                spawn_base_dust( x + (40)*spr_dir, y, "dash_start", spr_dir*-1);
                sound_play(asset_get("sfx_waterhit_heavy"), false, noone, 0.9, 1);
            }
        }
    }
    if (window == 3){
        if (window_timer == dstrong_second_hit_startup){
            if (!hitpause && !hitstop){
                sound_stop(asset_get("sfx_waterhit_heavy"));
                sound_stop(asset_get("sfx_swipe_heavy2"));
                spawn_base_dust( x - (40)*spr_dir, y, "dash_start", spr_dir);
                sound_play(asset_get("sfx_waterhit_weak"), false, noone, 0.8, 1.1);
                sound_play(asset_get("sfx_ell_steam_release"), false, noone, 0.2, 1.8);
                sound_play(sound_get("sweat3"), false, noone, 0.7, 1);
            }
        }
    }
}

//down strong charge hitboxes
if (attack == AT_DSTRONG && enable_strong_charge_hitboxes){
    if (window == 1){
        if (strong_charge >= 1 && (strong_charge mod hitbox_rate == 0 || strong_charge == 1)){
            if (!hitpause && !hitstop){
                create_hitbox(AT_EXTRA_1, 3, x, y);
                spawn_base_dust( x - (20)*spr_dir, y, "dash", spr_dir);
                sound_stop(sound_get("windup"));
                sound_play(sound_get("windup"));
            }
        }
    }
    if (window == 2){
        if (window_timer == 1){
            sound_stop(sound_get("windup"));
            destroy_hitboxes();
        }
    }
}

//forward special
if (attack == AT_FSPECIAL){
    if (window == 1){
        if (window_timer == 1){
            if (!hitpause && !hitstop){
                sound_play(asset_get("sfx_spin"));
                sound_play(sound_get("grab"), false, noone, 0.5, 1);
            }
        }
        if (vsp > 2){
            if (!down_down){
                vsp = 2;
            }
        }
    }
    if (window == 2){
        if (window_timer == 1){
            if (!hitpause && !hitstop){
                sound_stop(asset_get("sfx_spin"));
                sound_play(sound_get("sweat3"), false, noone, 0.9, 1);
                sound_play(sound_get("glisten"), false, noone, 0.9, 1);
                
                hsp = -4*spr_dir;
                if (vsp > 0){
                    if (!down_down){
                        vsp = -3;
                    }
                }
                
                move_cooldown[AT_FSPECIAL] = fspecial_cooldown;
            }
        }
    }
}

//neutral special
if (attack == AT_NSPECIAL){
    if (window == 1){
        nspec_dir = 0 + 180*(spr_dir == -1);
        
        if (window_timer == 1 && free){
            hsp /= 3;
            vsp /= 3;
        }
    }
    if (window == 2){
        if (!joy_pad_idle){
            nspec_dir = joy_dir;
        }
        
        //limit angles
        var nspec_angle_range = 35;
        var nspec_angle_halfway = 180;
        
        if (spr_dir == -1){
            nspec_dir = clamp(nspec_dir, 180 - nspec_angle_range, 180 + nspec_angle_range);
        }
        else{
            if (nspec_dir <= 180){
                nspec_dir = min(nspec_dir, nspec_angle_range)   //will keep angle below or equal to range min
            }
            if (nspec_dir > 180){
                nspec_dir = max(nspec_dir, 360 - nspec_angle_range)   //will keep greater or equal to range max
            }
        }
        
        /*
        //aim backwards
        if (nspec_dir > 90 && nspec_dir < 270){
            spr_dir = -1;
        }
        else{
            spr_dir = 1;
        }
        */
        
        /*
        if (free){
            hsp = 0;
            vsp = 0;
        }
        */
        
        can_move = false;
        can_fast_fall = false;
        
        if (window_timer == 1){
            if (!hitpause && !hitstop){
                sound_play(sound_get("grab"), false, noone, 0.5, 1);
            }
        }
    }
    if (window == 4){
        if (window_timer == 1){
            if (!hitpause && !hitstop){
                //create projectile
                var proj = create_hitbox(AT_NSPECIAL, 1, floor(x) + 12*spr_dir, floor(y) - 28);
                var nspec_speed = 12;
                var recoil_speed = 6;
                
                with (proj){
                    vsp = dsin(other.nspec_dir)*-nspec_speed;
                    hsp = dcos(other.nspec_dir)*nspec_speed;
                    
                    if (other.spr_dir == -1){
                        sprite_index = sprite_get("nspecial_proj_flipped");
                    }
                }
                
                //recoil bounce
                vsp = dsin(nspec_dir)*recoil_speed*1*(free);
                hsp = dcos(nspec_dir)*recoil_speed*-1;
                
                //sfx/vfx stuff
                sound_play(sound_get("hit"), false, noone, 0.9, 1);
                sound_play(sound_get("ricochet"), false, noone, 0.5, 1.2);
                
                //set cooldown
                move_cooldown[AT_NSPECIAL] = proj.length + 2;
            }
        }
    }
}

//uspecial
var move_speed = 11;
var uspec_post_charge_startup = get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH);
                
if (attack == AT_USPECIAL){
    switch (window){
        case 1: //startup
        if (window_timer <= 1){
            //set base angle
            if (joy_pad_idle){
                uspec_dir = 90;
            }
            else{
                uspec_dir = joy_dir;
            }
            
            if (!hitpause && !hitstop){
                //sfx
                sound_play(sound_get("smack"));
                sound_play(sound_get("sweat3"));
            }
        }
        else{
            //set base angle
            if (!joy_pad_idle){
                uspec_dir = joy_dir;
            }
            
            //set speed to 0
            vsp = 0;
            hsp = 0;
        }
        
        can_move = false;
        can_fast_fall = false;
        break;
        case 2: //startup (post-charge)
            if (window_timer == uspec_post_charge_startup){
                //set spr_dir based on angle
                if (uspec_dir > 90 && uspec_dir < 270){
                    spr_dir = -1;
                }
                if (uspec_dir < 90 || uspec_dir > 270){
                    spr_dir = 1;
                }
                
                //vfx and sfx
                sound_play(sound_get("explosion_short"));
                sound_play(sound_get("sweat1"));
                sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.8, 1.2);
                sound_play(sound_get("firework"), false, noone, 0.1, 1);
                
                spawn_hit_fx(x, y - 20, slapstick_dust);
                
                take_damage( player, -1, 1 );
            }
            else{
                vsp = 0;
                hsp = 0;
            }
            
            can_move = false;
        break;
        case 3: //flying (1)
            can_move = false;
        break;
        case 4: //flying (2)
            can_move = false;
        break;
        case 5: //air endlag
            vsp /= 1.1;
            hsp /= 1.1;
        break;
        case 6: //ground endlag
            if (window_timer == 1){
                hsp /= 1.2;
            }
            
            //ledge cancelling
            if (free){
                set_state(PS_IDLE_AIR);
            }
        break;
    }

    var random_x_range = 30;
    var random_y_range = 30;
    
    var random_x = random_func_2( 1, random_x_range, true ) - random_x_range/2;
    var random_y = random_func_2( 2, random_y_range, true ) - random_y_range/2;

    //setting speed stuff
    if (window == 3 || window == 4){
        if (window == 3){
            //go
            if (!hitpause && !hitstop){
                vsp = dsin(uspec_dir)*move_speed*-1;
                hsp = dcos(uspec_dir)*move_speed;
            }
        }
        else{
            if (!hitpause && !hitstop){
                vsp = dsin(uspec_dir)*move_speed*-1*0.9;
                hsp = dcos(uspec_dir)*move_speed*0.9;
            }
        }
        
        if (!hitpause && !hitstop && window_timer mod 3 == 0){
            spawn_hit_fx( x + (random_x)*spr_dir - 6*spr_dir, y - 32 + (random_y), vfx_trail[random_func(4, 4, true)] );
        }
    }
    
    if (window == 2){
            if (window_timer == uspec_post_charge_startup){
            if (!hitpause && !hitstop){
                vsp = dsin(uspec_dir)*move_speed*-1*(free);
                hsp = dcos(uspec_dir)*move_speed;
            }
        }
    }
    
    //land cancelling
    if (window == 3 || window == 4 || window == 5){
        if (!free && (uspec_dir > 180)){
            window = 6;
            window_timer = 0;
            sound_play(asset_get("sfx_blow_medium2"), false, noone, 0.8, 1.1);
            spawn_base_dust( x + (0)*spr_dir, y, "land", spr_dir);
            destroy_hitboxes();
        }
    }
    
    //walljump cancelling
    if (window > 2){
        can_wall_jump = true;
    }
}

//dspecial
var dspecial_startup = get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH);
var dspecial_fall_loop_length = get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH);
var dspec_fall_vsp = 16;

if (attack == AT_DSPECIAL){
    if (window == 1){
        hsp = clamp(hsp, -4, 4);
        
        if (window_timer == 1){
            if (!hitpause && !hitstop){
                vsp = -12;
                dspecial_fall_timer = 0;
                spawn_base_dust( x + (0)*spr_dir, y, "jump", spr_dir);
                sound_play(sound_get("sweat1"), false, noone, 0.8, 1);
                sound_play(sound_get("ricochet"), false, noone, 0.4, 1.2);
                sound_play(asset_get("sfx_swipe_medium2"), false, noone, 1, 1.1);
                sound_play(sound_get("angry_fume"), false, noone, 1, 0.8);
            }
        }
        
        if (!hitpause && !hitstop && window_timer < dspecial_startup/3){
            vsp += 1.5;
        }
        
        if (window_timer == dspecial_startup){
            if (!hitpause && !hitstop){
                sound_play(sound_get("sweat2"), false, noone, 0.8, 1);
                sound_play(asset_get("sfx_swipe_medium1"), false, noone, 1, 1.2);
                sound_play(asset_get("sfx_swipe_weak"), false, noone, 1, 0.8);
            }
        }
    }
    
    if (window == 2){
        hsp = clamp(hsp, -3, 3);
        
        can_fast_fall = false;
        
        if (vsp < 18){
            if (!hitpause && !hitstop){
                vsp += 1.5;
            }
        }
        
        if (window_timer == dspecial_fall_loop_length){
            window_timer = 0;
            
            create_hitbox(AT_DSPECIAL, 1, floor(x), floor(y));
            destroy_hitboxes();
        }
        
        if (!free){
            window = 3;
            window_timer = 0;
            
            shake_camera( 1, 3 );
            
            with (asset_get("obj_article3")){
                if (player_id == other){
                    if (state == 1){
                        vsp = -7.5;
                        
                        spawn_hit_fx(x, y, 301);
                        
                        sound_stop(asset_get("sfx_spin"));
                        sound_stop(asset_get("sfx_blow_weak1"));
                        sound_play(asset_get("sfx_spin"));
                        sound_play(asset_get("sfx_blow_weak1"));
                    }
                }
            }
            
            sound_play(asset_get("sfx_blow_medium2"), false, noone, 1, 1.2);
            destroy_hitboxes();
            create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y));
        }
        
        can_move = false;
        
        var random_x_range = 30;
        var random_y_range = 30;
        
        var random_x = random_func_2( 1, random_x_range, true ) - random_x_range/2;
        var random_y = random_func_2( 2, random_y_range, true ) - random_y_range/2;
        
        if (!hitpause && !hitstop && window_timer mod 3 == 0){
            spawn_hit_fx( x + (random_x)*spr_dir - 6*spr_dir, y - 32 + (random_y), vfx_trail[random_func(4, 4, true)] );
        }
        
        can_wall_jump = true;
        
        //cancelling early after enough time
        if (y > 100 && !hitpause && !hitstop){
            dspecial_fall_timer++;
            
            if (dspecial_fall_timer == dspecial_fall_timer_max){
                white_flash_timer = 10;
                sound_play(sound_get("sweat1"), false, noone, 0.8, 1);
            }
        }
        
        if (dspecial_fall_timer >= dspecial_fall_timer_max){
            can_jump = true;
            can_shield = true;
            
            if (special_pressed && (up_pressed || up_down)){
                set_attack(AT_USPECIAL);
            }
        }
    }
    
    if (window == 4){
        if (special_down){
            if (window_timer == 3){
                window_timer = 2;
            }
        }   
    }
}



//--------------------------------------------

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;
