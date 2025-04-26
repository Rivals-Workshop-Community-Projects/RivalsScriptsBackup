//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
if(attack == AT_DAIR){
    if (window == 1){
        land_sound = false;
        fall_time = 0;
    }
    if (window == 2){
        fall_time ++;
        if (fall_time >= 25){
            can_jump = true;
            can_shield = true;
            move_cooldown[AT_DAIR] = 60;
        }
        if (floating){
            floating = -1;
        }
    }
    if (window == 3){
        if (!free && land_sound == false){
            sound_play(asset_get("sfx_metal_hit_strong"));
            land_sound = true;
        }
    }
}
if (voice_on == true){
    switch(attack){
        case AT_TAUNT:
        if (window == 1 && window_timer == 4){
            sound_play(sound_get("sfx_taunt" + string (1 + round(random_func(9, 1, false)))) );
        }
        break;
        case AT_JAB:
        if (window == 7 && window_timer == 1){
            sound_play(sound_get("sfx_attack" + ( string (1 + round ( random_func_2(1, 4, false) ) ) ) ) );
        }
        break;
        case AT_FTILT:
        if (window == 1 && window_timer == 4 && voice_chance >= 5){
            sound_play(sound_get("sfx_attack1"));
        }
        break;
        case AT_UTILT:
        if (window == 1 && window_timer == 4 && voice_chance >= 5){
            sound_play(sound_get("sfx_attack5"));
        }
        break;
        case AT_FSPECIAL:
        if (window == 3 && window_timer == 2){
            sound_play(sound_get("sfx_fspec"));
        }
        break;
        case AT_USPECIAL:
            if (window == 2 && window_timer == 6){
                sound_play(sound_get("sfx_uspec"));
            }
        break;
        case AT_UAIR:
        if (window == 1 && window_timer == 8 && voice_chance >= 5){
            sound_play(sound_get("sfx_attack3"));
        }
        break;
        case AT_BAIR:
        if (window == 1 && window_timer == 8 && voice_chance >= 5){
            sound_play(sound_get("sfx_attack4"));
        }
        break;
    }
}
if (attack == AT_BAIR){
    if (window == 1){
        if (!dir_flipped){
            spr_dir *= -1;
            dir_flipped = true;
        }
        if (floating){
            floating = -1;
        }
    }
}

if (attack == AT_FAIR){
    if (window == 2){
       if (floating){
            //floating = -1;
        } 
    }
}
if (attack == AT_UAIR){
    if (window == 1){
        if (window_timer == 8){
            sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.6, 1);
        }
    }
    if (window == 2){
       if (floating){
            floating = -1;
        } 
    }
}
if (attack == AT_JAB){
    if (window == 6){
        if (!attack_down || was_parried){
        window = 7;
        window_timer = 0;
        }
        if (window_timer == 1 /*|| window_timer == 6*/){
            create_hitbox( AT_JAB, 3, x+52*spr_dir, y - 35 );
        }
    }
}

if (attack == AT_FSTRONG){
    if (window == 2){
        if (window_timer == 7){
            sound_play(asset_get("sfx_blow_heavy2"), false, noone, 1, 0.7);
        }
    }
}
if (attack == AT_DSTRONG){
    if (window == 2 && window_timer == 3){
            sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.6, 0.9);
    }
}
if (attack == AT_NSPECIAL){
    if (window < 3){
    if (instance_exists(cannonball) || cannonball_cooldown > 0){
    set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial2"));
    } else set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
    }
    if (window == 1){
            chargesound = noone;
        if (cannonball_charge < 5){
        cannonball_charge = 5;
        }
    }
    if (window == 2){
        can_shield = true;
        if (window_timer == 1 && chargesound == noone){
            chargesound = sound_play(asset_get("sfx_absa_concentrate"), false, noone, 1, 0.5);
        }
        cannonball_charge += 0.75;
        if (cannonball_charge < 40 && state_timer % 12 <= 1){
            
        spawn_base_dust(x - 6*spr_dir, y, "dash");
        } else if (state_timer % 12 <= 1){ spawn_base_dust(x - 6*spr_dir, y, "dash_start");}
        if (!special_down || cannonball_charge >= 60 || instance_exists(cannonball) || cannonball_cooldown > 0){
            if (!instance_exists(cannonball) && free && cannonball_cooldown = 0){
                hsp -= (cannonball_charge*0.1)*spr_dir;
            }
            window = 3;
            window_timer = 0;
        }
        if (window == 3){
            sound_stop(chargesound);
            if !instance_exists(cannonball) && cannonball_cooldown = 0{
                if (voice_on){
            sound_play(sound_get("sfx_nspec"));
                    
                }
            cannonball = instance_create(x + 32*spr_dir, y - 24, "obj_article2" );
            cannonball.stored_charge = cannonball_charge;
            cannonball.hsp = (cannonball_charge*0.15 + 2)*spr_dir;
            cannonball.active_time = cannonball_charge + 20;
            cannonball_charge = 0;
            }
        }
    }
}

if (attack == AT_FSPECIAL){
    can_fspecial = false;
    if (vsp > 4){
        vsp = 4;
    }
    car_start_time ++;
    if (window == 1 && was_parried){
        window = 3;
        window_timer = 0;
    }
    if (window == 1 && window_timer == 2){
        sound_play(car_start, false, noone, 0.8, 1);
        loop_playing = false;
        spawn_base_dust(x - 10*spr_dir, y, "dash_start");
    }
    if (window == 2){
        var stage_left = get_stage_data( SD_X_POS ) - 19;
        var stage_right = (room_width - get_stage_data( SD_X_POS )) + 19;
        var stage_y = get_stage_data( SD_Y_POS );
        if (x == stage_left || x == stage_right){
            if (y > stage_y && y < stage_y + 32){
                y = stage_y - 10;
            }
        }
        if (window_timer == 4){
        spawn_base_dust(x - 10*spr_dir, y, "dash");
        }
        boosted = false;
        floating = -1;
        /*if (special_pressed){
            window = 3;
            window_timer = 0;
            destroy_hitboxes();
        }*/
        if (jump_pressed && !free || hsp == 0 && !free && !hitpause){
            vsp = -8;
            sound_play(sound_get("sfx_car_jump"));
            spawn_base_dust(x, y, "jump");
        }
        if (car_start_time >= 75 && !loop_playing){
        sound_play(car_loop, true, noone, 0.7, 1);
        loop_playing = true;
        }
        if (free){
            air_time ++;
            if (air_time >= 10){
            can_jump = true;
            if (jump_pressed){
                hsp = 0;
        	sound_stop(car_start);
        	sound_stop(car_loop);
            }
            }
        } else air_time = 0;
        if (spr_dir == 1 && left_pressed || spr_dir == -1 && right_pressed || special_pressed || attack_pressed){
            window = 3;
            window_timer = 0;
            car_start_time = 0;
            loop_playing = false;
        }
    }
    if (window == 3){
        if (window_timer > 5 && window_timer < 10){
            if (collision_circle(x, y, 30, cannon, false, false) && !cannon.knocked){
                cannon.hsp += 10*spr_dir;
                sound_play(asset_get("sfx_shovel_hit_med1"));
                spawn_hit_fx(cannon.x, cannon.y, 0);
                cannon.knocked = true;
                
            }
        }
        if (window_timer == 3){
            sound_stop(car_start);
            sound_stop(car_loop);
        }
        if (!boosted && !hitpause){
            hsp = 8.5*spr_dir;
            boosted = true;
        }
    }
    can_fast_fall = false;
}
if (attack == AT_USPECIAL_2){
    if(!free){
        //set_state(PS_LANDING_LAG);
    }
}
if (attack == AT_USPECIAL){
    floating = -1;
    if (window == 1 && window_timer == 11){
        sound_play(asset_get("sfx_ell_dspecial_explosion_2"));
        if (!instance_exists(clowncar)){
            clowncar = instance_create(x, y - 32, "obj_article3" );
        }
        if (right_down){
            spr_dir = 1;
            clowncar.spr_dir = 1;
            var fx_angle = -35;
            hsp = 4;
            clowncar.hsp = -2;
        }
        if (left_down){
            spr_dir = -1;
            clowncar.spr_dir = -1;
            var fx_angle = 35;
            hsp = -4;
            clowncar.hsp = 2;
        }
        spawn_base_dust(x, y, "b_bounce_fg", spr_dir, fx_angle, -10, 0);
    }
    if (window == 2){
        has_mech = false;
    }
}

if (attack == AT_TAUNT){
    if (window == 2 && !taunt_down){
        window = 3;
        window_timer = 0;
    }
}

if (attack == AT_USTRONG){
    if (window == 1){
        if(window_timer == 1){
            sound_play(asset_get("sfx_jumpground"));
            spawn_base_dust(x + 6*spr_dir, y, "dash", -spr_dir, 0, -10, 0);
        }
    }
    if (window == 4){
        if (window_timer == 4){
            spawn_base_dust(x, y, "jump");
        }
    }
}

if (attack == AT_DSPECIAL){
    if (window == 2){
        if (!instance_exists(cannon) && cannon_cooldown <= 0){
            cannon = instance_create(x, y - 32, "obj_article1" );
        }
    }
}

//written by supersonic, modified by bar-kun
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0, angle = 0, win = -10, win_time = 0)
{
    // spawn_base_dust(x, y, name)
    // spawn_base_dust(x, y, name, ?dir, ?angle, ?window, ?window_timer)

    // This function spawns base cast dusts. Names can be found below.
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dust_color = 0;
    var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;
var win = argument_count > 5 ? argument[5] : -10;
var win_time = argument_count > 6 ? argument[6] : 0;

    if (!hitpause && (win > 0 && win == window && win_time == window_timer || win == -10) ) //spawns it whenever we want for 1 frame
    {
        switch (name) {
            default: 
            case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
            case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
            case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
            case "doublejump": 
            case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
            case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
            case "land": dlen = 24; dfx = 0; dfg = 2620; break;
            case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
            case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
            //
            //bar-kun additions (note: idk how fg_sprite work)
            //
            case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
            case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
            case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
            case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
            case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
            case "doublejump_small": 
            case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
        }
        var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), dlen);
        newdust.x = floor(x);
        newdust.y = floor(y);
        newdust.dust_fx = dfx; //set the fx id
        if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite

        newdust.dust_color = dust_color; //set the dust color

        if (dir != 0) newdust.spr_dir = dir; //set the spr_dir, if dir is 0 it will take the player's spr_dir
        else newdust.spr_dir = spr_dir;

        newdust.draw_angle = angle; //sets the angle of the dust sprite
        return newdust;
    }
}