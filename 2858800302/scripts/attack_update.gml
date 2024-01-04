//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_BAIR){
    if (window == 1){
        if (window_timer == 1){
            spr_dir *= -1;
        }
    }
}

if (attack == AT_UAIR){
    if (window > 1){
        hud_offset = 40;
    }
}

if (attack == AT_DTILT){
    if (window == 1 && window_timer == 5 && !hitpause && !hitstop){
        spawn_base_dust( x + (58 * spr_dir), y, "dash_start", spr_dir*-1);
    }
    if (window == 2 && window_timer == 3 && !has_hit){
        sound_play(asset_get("sfx_blow_heavy1"));
    }
}

if (attack == AT_UTILT){
    if (window > 1){
        hud_offset = 50;
    }
}

var dattack_vsp = 9;

if (attack == AT_DATTACK){
    if (!hitpause && !hitstop){
        if (window == 1){
            if (window_timer == 1){
                sound_play(sound_get("annoy"));
            }
            if (window_timer == 2){
                hsp = dattack_vsp*spr_dir;
            }
            if (window_timer == 11){
                sound_stop(sound_get("annoy"));
                spawn_base_dust( x + (24 * spr_dir), y, "land", spr_dir);
                sound_play(asset_get("sfx_blow_medium2"));
            }
        }
    }
}

if (attack == AT_TAUNT){
    if (!hitpause && !hitstop){
        if (window == 1){
            taunt_looped = false;
            if (window_timer == 1){
                spawn_base_dust( x + (34 * spr_dir), y, "djump", spr_dir);
                sound_play(asset_get("sfx_jumpground"));
            }
            if (window_timer == 7){
                spawn_base_dust( x + (34 * spr_dir), y, "land", spr_dir);
            }
        }
        if (window == 2){
            if (window_timer mod 12 == 6){
                sound_play(asset_get("sfx_waveland_zet"));
                sound_stop(asset_get("sfx_waveland_may"));
            }
            if (window_timer mod 12 == 0){
                sound_play(asset_get("sfx_waveland_may"));
                sound_stop(asset_get("sfx_waveland_zet"));
            }
            if (window_timer == 24){
                if (taunt_down){
                    taunt_looped = true;
                    window_timer = 0;
                }
            }
            if (!taunt_down && taunt_looped){
                window = 3;
                window_timer = 0;
            }
        }
    }
}

var ustrong_startup = get_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH);

if (attack == AT_USTRONG){
    if (window == 1){
        if (boosted){
            set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
            set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);
        }
        else{
            reset_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION);
            reset_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION);
        }
    }
    
    if (window == 2){
        if (window_timer == ustrong_startup){
            sound_play(asset_get("sfx_leafy_hit2"));
        }
    }
    
    if (window == 2 && window_timer == 1){
        if (boosted){
            set_hitbox_value(attack, 1, HG_DAMAGE, get_hitbox_value( attack, 1, HG_DAMAGE ) + 3);
            //set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, get_hitbox_value( attack, 1, HG_BASE_KNOCKBACK ) + 0.5);
            set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, get_hitbox_value( attack, 1, HG_KNOCKBACK_SCALING ) + 0.1);
            
            set_hitbox_value(attack, 2, HG_DAMAGE, get_hitbox_value( attack, 1, HG_DAMAGE ) + 2);
            //set_hitbox_value(attack, 2, HG_BASE_KNOCKBACK, get_hitbox_value( attack, 1, HG_BASE_KNOCKBACK ) + 0.5);
            set_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING, get_hitbox_value( attack, 1, HG_KNOCKBACK_SCALING ) + 0.1);
        }
    }
    
    if (window == 4){
        boosted = false;
    }
}

if (attack == AT_FSTRONG){
    if (window == 1){
        if (boosted){
            set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
            set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);
        }
        else{
            reset_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION);
            reset_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION);
        }
    }
    
    if (window == 2){
        if (window_timer == 4 && !hitpause && !hitstop){
            spawn_base_dust( x + (24 * spr_dir), y, "dash", spr_dir);
            sound_play(asset_get("sfx_swipe_heavy1"));
            hsp += 5*spr_dir;
        }
    }
    
    if (window == 2 && window_timer == 1 && !hitpause && !hitstop){
        if (boosted){
            set_hitbox_value(attack, 1, HG_DAMAGE, get_hitbox_value( attack, 1, HG_DAMAGE ) + 2);
            //set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, get_hitbox_value( attack, 1, HG_BASE_KNOCKBACK ) + 0.3);
            set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, get_hitbox_value( attack, 1, HG_KNOCKBACK_SCALING ) + 0.05);
            set_hitbox_value(attack, 1, HG_EXTRA_HITPAUSE, get_hitbox_value( attack, 1, HG_EXTRA_HITPAUSE ) + 5);
        }
    }
    
    if (window == 4){
        boosted = false;
    }
}

if (attack == AT_DSTRONG){
    if (window == 1){
        if (boosted){
            set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
            set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);
        }
        else{
            reset_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION);
            reset_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION);
        }
    }
    
    if (window == 2){
        if (window_timer == 4){
            spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
            spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir*-1);
        }
    }
    
    if (window == 2 && window_timer == 1){
        if (boosted){
            set_hitbox_value(attack, 1, HG_DAMAGE, get_hitbox_value( attack, 1, HG_DAMAGE ) + 3);
            set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, get_hitbox_value( attack, 1, HG_BASE_KNOCKBACK ) + 0.5);
            set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, get_hitbox_value( attack, 1, HG_KNOCKBACK_SCALING ) + 0.1);
            
            set_hitbox_value(attack, 3, HG_DAMAGE, get_hitbox_value( attack, 1, HG_DAMAGE ) + 2);
            set_hitbox_value(attack, 3, HG_BASE_KNOCKBACK, get_hitbox_value( attack, 1, HG_BASE_KNOCKBACK ) + 0.5);
            set_hitbox_value(attack, 3, HG_KNOCKBACK_SCALING, get_hitbox_value( attack, 1, HG_KNOCKBACK_SCALING ) + 0.1);
        }
    }
    
    if (window == 5){
        boosted = false;
    }
}

if (attack == AT_JAB){
    
    if (window == 3 && window_timer == 15){
        
        if (was_parried){
            
            was_parried = false;
            
        }
        
    }
}

var watering_vfx = 6;
var watering_x_offset = 64;
var watering_y_offset = -4;

if (attack == AT_DSPECIAL){
    if (window == 2){
        //walk mode
        if (left_down || right_down){
            window = 4;
            window_timer = 0;
        }
        //loop
        if (special_down){
            window_timer = 0;
        }
        //stop watering
        if (!special_down && (placed_at_least_one || !valid_planting_spot)){
            window = 3;
            window_timer = 0;
        }
    }
    if (window == 4){
        //walk
        if (!hitpause && !hitstop){
            if (left_down){
                spr_dir = -1;
                hsp = (walk_speed/1.05)*spr_dir;
            }
            if (right_down){
                spr_dir = 1;
                hsp = (walk_speed/1.05)*spr_dir;
            }
            if (state_timer mod 8 == 0){
                spawn_base_dust( x + (0 * spr_dir), y, "walk", spr_dir);
            }
        }
        //stop watering
        if (!special_down && (placed_at_least_one || !valid_planting_spot)){
            window = 3;
            window_timer = 0;
        }
        //stop walking
        if (!(left_down || right_down)){
            window = 2;
            window_timer = 0;
        }
        //loop
        if (window_timer == 23){
            window_timer = 0;
        }
    }
    //watering code
    if (window == 1){
        watering_time = 0;
        placed_at_least_one = false;
        valid_planting_spot = true;
    }
    //watering code part two
    if (window == 2 || window == 4){
        

        
        //!!!add a check here for if you can place grass here!!!
        //see above ^
        
        var stage_x = get_stage_data( SD_X_POS );
        var offstage_extra = 45; //the closest you can get to the ledge while still being able to water the ground
        
        
        //in air
        if (free){
            valid_planting_spot = false;
            can_water = false;
        }
        else{
            //grounded but offstage
            if ((x < stage_x + offstage_extra || x > room_width - stage_x - offstage_extra) && !ignore_stage_data){
                valid_planting_spot = false;
                can_water = false;
            }
            else{
                //onstage but touching grass
                if (on_grass){
                    valid_planting_spot = false;
                    can_water = true;
                }
                else{
                    valid_planting_spot = true;
                    can_water = true;
                }
            }
        }

        
        
        
        //funny windbox (bernado let me edit spamton fspecial windbox code thanks @ bernado)
        with(oPlayer) {
            if self != other {
                if ((x > other.x && other.spr_dir == 1) or (x < other.x && other.spr_dir == -1)) && abs(x - other.x) < 80 && abs(y - other.y) < 5 && !free && other.can_water {
                    if abs(hsp) < other.max_windbox_speed {
                        hsp += x > other.x ? other.windbox_speed : -other.windbox_speed;
                    }
                }
            }
        }
        
        

        
        //watering timer and vfx/sfx
        if (can_water){
            if (state_timer mod 16 == 0){
                spawn_hit_fx( x + watering_x_offset*spr_dir, y + watering_y_offset, watering_vfx );
                sound_stop(asset_get("sfx_watergun_splash"));
                sound_stop(asset_get("sfx_leafy_hit1"));
                sound_play(asset_get("sfx_watergun_splash"));
            }
            if (valid_planting_spot){
               watering_time++; 
            }
        }
        
        //place plant
        //make sure to add check for being on top of existing grass!!!!
        if (watering_time mod time_to_water == 0 && watering_time > 0 && valid_planting_spot){
            sound_stop(asset_get("sfx_watergun_splash"));
            sound_stop(asset_get("sfx_leafy_hit1"));
            sound_play(asset_get("sfx_leafy_hit1"));
            spawn_hit_fx( x + 15*spr_dir, y + 0, petal_small );
            instance_create(x + (spr_dir*15),y - 0,"obj_article1");
            placed_at_least_one = true;
        }
        
    }
}

//gain boost
if ((attack == AT_DSTRONG || attack == AT_USTRONG || attack == AT_FSTRONG || (attack == AT_FSPECIAL && !should_attack)) && window == 1 && !boosted){
    with(asset_get("obj_article1")){
        if (player_id == other.id){
            if (x > other.x - other.grass_range_boost && x < other.x + other.grass_range_boost && y < other.y + 2 && y > other.y - 2 && !other.boosted && other.window == 1 && state == 0){
                sound_play(sound_get("stats_up_fast"));
                destroy_sfx = asset_get("sfx_leafy_hit1");
                destroy_vfx = 113;
                other.boosted = true;
                destroy_self = true;
                break; 
                //end loop early so it doesn't check through every grass article
            }
            else{
                //nothing
            }
        }
    }
}

if (attack == AT_DSPECIAL){
    if (window == 1 && window_timer == 1){
        if (free){
            attack = AT_DSPECIAL_AIR;
            window = 1;
            window_timer = 0;
        }
    }
}

//fspecial stuff
if (attack == AT_FSPECIAL){




    if (window == 1){
        if (fspecial_charge == 0){
            fspec_hsp = 0;
            should_attack = false;
            auto_cancel = false;
        }
    }
    
    //charge window
    if (window == 2){
        if (special_down){
            
            can_jump = true;
            
            if (!shield_pressed){ //charging
                window_timer = 0;
                if (!boosted){ //regular charge
                    fspecial_charge++;
                    
                    if (fspecial_charge mod 8 == 0){ //charging dust vfx
                        spawn_base_dust( x + (-24 * spr_dir), y, "dash", spr_dir);
                    }
                    
                }
                else{ //boosted charge
                    fspecial_charge += fspec_boosted_charge_speed;
                    
                    if (fspecial_charge mod 2 == 0){
                        if (fspecial_charge mod 8 == 0){ //charging dust vfx
                            spawn_base_dust( x + (-24 * spr_dir), y, "dash", spr_dir);
                        }
                    }
                    else{
                        if (fspecial_charge mod 7 == 0){ //charging dust vfx
                            spawn_base_dust( x + (-24 * spr_dir), y, "dash", spr_dir);
                        }
                    }

                }
            }
            if (shield_pressed || auto_cancel){ //cancel charging
                auto_cancel = false;
                window = 8;
                window_timer = 0;
            }

        }
        
        if (!special_down || should_attack){ //attack
            sound_play(asset_get("sfx_bird_sidespecial"));
            sound_play(asset_get("sfx_bird_upspecial"));
            window = 3;
            window_timer = 0;
        }
        
        if (fspecial_charge < time_between_levels){
            if (fspec_hsp != level_1_hsp){
               sound_play(sound_get("charge1"));
               spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
            }
            fspec_hsp = level_1_hsp; 
        }
        else if (fspecial_charge >= time_between_levels && fspecial_charge < time_between_levels*2){
            if (fspec_hsp != level_2_hsp){
                sound_stop(sound_get("charge1"));
                sound_play(sound_get("charge2"));
                spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
            }
            fspec_hsp = level_2_hsp;
        }
        else if (fspecial_charge >= time_between_levels*2 && fspecial_charge < time_between_levels*3){
            if (fspec_hsp != level_3_hsp){
                sound_stop(sound_get("charge2"));
                sound_play(sound_get("charge3"));
                spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
            }
            fspec_hsp = level_3_hsp; 
        }
        else if (fspecial_charge >= time_between_levels*3 && fspecial_charge < time_between_levels*4){
            if (fspec_hsp != level_4_hsp){
                sound_stop(sound_get("charge3"));
                sound_play(sound_get("charge4"));
                spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
            }
            fspec_hsp = level_4_hsp; 
        }
        else if (fspecial_charge > time_between_levels*4){
            if (fspec_hsp != level_5_hsp){
                sound_stop(sound_get("charge4"));
                sound_play(sound_get("charge5"));
                sound_play(asset_get("sfx_ori_bash_projectile"));
                spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
                
            }
            fspec_hsp = level_5_hsp; 
            auto_cancel = true;
        }

    }
    
    if (window == 3){
        should_attack = false;
        fspecial_charge = 0;
    }
    
    //speed boost
    if (window == 4){
        if (window_timer == 1){
            if (!hitpause && !hitstop){
                spawn_base_dust( x + (10 * spr_dir), y, "dash_start", spr_dir);
                spawn_base_dust( x + (14 * spr_dir), y - 10, "dash_start", spr_dir);
                spawn_base_dust( x + (20 * spr_dir), y - 20, "dash_start", spr_dir);
                spawn_base_dust( x + (14 * spr_dir), y - 30, "dash_start", spr_dir);
                spawn_base_dust( x + (10 * spr_dir), y - 40, "dash_start", spr_dir);
                hsp = fspec_hsp*spr_dir;
                vsp = fspec_vsp;
            }
        }
    }
    
    if (window > 3 && window < 5){
        can_move = false;
        can_fast_fall = false;
    }
    else{
        can_move = true;
        can_wall_jump = true;
        //remove boost
        if (window > 3){
            boosted = false;
        }
    }
    
    //speed change during endlag on whiff
    if (window == 6){
        if (window_timer == 1 && !hitstop && !hitpause){
            spawn_base_dust( x + (0 * spr_dir), y, "djump", spr_dir);
            sound_play(asset_get("sfx_crunch_water"));
            hsp /= 2.5;
            vsp = -5;
        }
        if (window_timer < 3){
            can_fast_fall = false;
        }
        else{
            can_fast_fall = true;
        }
    }
    
    //cancel sfx
    if (window == 8){
        if (window_timer == 1){
            sound_play(asset_get("sfx_shop_close"));
            if (auto_cancel){
                should_attack = true;
            }
        }
    }
    

    
}


var nspec_window_timer_thingy = get_window_value( AT_NSPECIAL, 1, AG_WINDOW_LENGTH );

if (attack == AT_NSPECIAL){
    if (!hitpause && !hitstop){
        if (window == 2){
            if (window_timer == 1){
                move_cooldown[AT_NSPECIAL] = nspec_cooldown;
                /*
                if (vsp > -2 && !down_down && free){
                    vsp = -5;
                }
                */
            }
        }
        if (window == 3){
            boosted = false;
        }
    }
    if (boosted && window == 1 && window_timer == nspec_window_timer_thingy - 1){
        set_hitbox_value(attack, 1, HG_DAMAGE, get_hitbox_value( attack, 1, HG_DAMAGE ) + 4);
        set_hitbox_value(attack, 1, HG_EXTRA_HITPAUSE, get_hitbox_value( attack, 1, HG_EXTRA_HITPAUSE ) + 5);
        set_hitbox_value(attack, 1, HG_VISUAL_EFFECT, petal_tipper);
    }
}


//gain boost (nspecial)
if (attack == AT_NSPECIAL && (window == 1 && window_timer < nspec_window_timer_thingy - 1) && !boosted){
    with(asset_get("obj_article1")){
        if (player_id == other.id){
            if (x > other.x - other.grass_range_boost && x < other.x + other.grass_range_boost && y < other.y + 2 && y > other.y - 2 && !other.boosted && other.window == 1 && state == 0){
                sound_play(sound_get("stats_up_fast"));
                destroy_sfx = asset_get("sfx_leafy_hit1");
                destroy_vfx = 113;
                other.boosted = true;
                destroy_self = true;
                break; 
                //end loop early so it doesn't check through every grass article
            }
            else{
                //nothing
            }
        }
    }
}





var nspec_window_timer_thingy_uspec = get_window_value( AT_USPECIAL, 2, AG_WINDOW_LENGTH );
var nspec_window_timer_thingy_uspec_again = get_window_value( AT_USPECIAL, 3, AG_WINDOW_LENGTH );
var uspec_window_timer_lag = get_window_value( AT_USPECIAL, 6, AG_WINDOW_LENGTH );


//gain boost (uspecial)
if (attack == AT_USPECIAL && ((window == 6 && window_timer < uspec_boost_lag) || window < 6 && uspec_land_cancel) && !boosted){
    with(asset_get("obj_article1")){
        if (player_id == other.id){
            if (x > other.x - other.grass_range_boost && x < other.x + other.grass_range_boost && y < other.y + 2 && y > other.y - 2 && !other.boosted && state == 0){
                sound_play(sound_get("stats_up_fast"));
                destroy_sfx = asset_get("sfx_leafy_hit1");
                destroy_vfx = 113;
                other.boosted = true;
                destroy_self = true;
                break; 
                //end loop early so it doesn't check through every grass article
            }
            else{
                //nothing
            }
        }
    }
}


//uspecial
if (attack == AT_USPECIAL){
    
    
    
    var forwards_or_backwards = 1;
            
    if (hsp >= 0){
        forwards_or_backwards = 1;
    }
    else if (hsp < 0){
        forwards_or_backwards = -1;
    }
        
    
    
    if (window > 2){
        can_wall_jump = true;
    }
    
    //get joystick angle
    if (window < 3){
                
        if (joy_pad_idle){
            tp_dir = 90;
        }
        else{
            tp_dir = joy_dir;
        }
        
    }
    
    //teleport vfx
    if (window == 2){
        if (window_timer == nspec_window_timer_thingy_uspec){
            if (!hitpause){
                sound_play(asset_get("sfx_leafy_hit3"));
                spawn_hit_fx( x + 0*spr_dir, y - 30, petal_small );
            }
        }
    }
    
    if (window == 3){
        if (window_timer == nspec_window_timer_thingy_uspec_again){
            if (!hitpause){
                sound_stop(asset_get("sfx_leafy_hit3"));
                sound_play(asset_get("sfx_leafy_hit2"));
                spawn_hit_fx( x + 10*spr_dir, y - 30, petal_small );
            }
        }
    }
    
    //check if never left ground during teleport
    if (window < 4){
        if (window == 3 && window_timer == 2){
            didnt_leave_ground = !free;
        }
        else if (window != 3){
            didnt_leave_ground = !free;
        }
    }
    
    
    //teleport
    if (window == 3){
        
        //travel sfx
        if (window_timer mod 2 == 0){
            spawn_hit_fx( x + 0*spr_dir, y - 20, 136 );
        }
        
        draw_indicator = false;
        can_move = false;
        
        //if (!joy_pad_idle){
            vsp = dsin(tp_dir)*-tp_speed;
            hsp = dcos(tp_dir)*tp_speed;
        //}
        
        //kb angle calculations
        if (forwards_or_backwards == 1){
            
            if (spr_dir == 1){
                set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, uspec_angle);
            }
            else{
                set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 180 - uspec_angle);
            }
            
        }
        else{
            
            if (spr_dir == -1){
                set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, uspec_angle);
            }
            else{
                set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 180 - uspec_angle);
            }
            
        }
        
        
        //cause landing cancel
        if (window_timer > 1){
            if (!free){
                uspec_land_cancel = true;
            }
        }
    }
    
    if (window == 4){
        
        //slow down
        if (window_timer == 1 && !hitpause && !hitstop){
            hsp /= 4.1;
            
            //if (vsp < 0){
                vsp /= 4.1;
            //}

        }

        //cause landing cancel
        if (!free && !hitpause && !hitstop){
            destroy_hitboxes();
            uspec_land_cancel = true;
        }
    }
    
    //landing cancel start
    if (uspec_land_cancel){
    
        if (abs(hsp) > tp_speed/3 && !hitpause && !hitstop){
            hsp = (tp_speed/3) * forwards_or_backwards;
        }
        
        vsp = 0;
        
        uspec_land_cancel = false;
        window = 6;
        window_timer = 0;
    }
    
    
    if (window == 6){
        if (window_timer == 1 && !hitpause){
            
            //give slight speed boost if move never left the ground during startup
            if (didnt_leave_ground){
                hsp *= 1.32;
            }
            
            //decrease cancel lag if boosted
            if (boosted){
                set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, uspec_boost_lag);
            }
            else{
                set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, uspec_cancel_lag);
            }
            
        }
        
        if (window_timer == uspec_window_timer_lag - 1){
            boosted = false;
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