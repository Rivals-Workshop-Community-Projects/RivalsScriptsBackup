//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (has_hit == true && hitstop == false && grabbed_player == noone){
    hitted_timer++
    if (hitted_timer == 1){
        vsp = -6;
    }
} else{
    hitted_timer = 0;
}

//

if (free == false){
    if (ground_timer == 0){
        spawn_base_dust(x, y, "land");
    }
    if (attack != AT_USTRONG || strong_charge == 0 && attacking_now == 1 || attacking_now != 2){
    if (attack != AT_DSTRONG || attacking_now < 3){
    if (attack != AT_DAIR || attacking_now > 3){
        if (ground_timer >= 4 && hitstop == 0 && vsp >= 0 && can_move == true){
            vsp = -jump_speed - jump_charged;
            y -= 1;
            djumps = 0;
            jump_charged = 0;
            summersault = 0;
            spawn_base_dust(x, y, "jump");
            sound_play(sound_get("boing"), false, noone, 4, 1 + random_func(1, 1, false));
        }
    }
    }
    }
}

//utrick

if (attack == AT_UTILT){
    if (instance_exists(grabbed_player) == true){
        vsp = 0;
        hsp = 0;
        if (attacking_now == 2 && window_timer < 5){
            grabbed_player.x = x + 5 * spr_dir;
            grabbed_player.y = y - 150;
        } else{
            grabbed_player.x = x + 5 * spr_dir;
            grabbed_player.y = y - 128;
        }
        if (attacking_now == 3){
            grabbed_player.x = x + 4 * spr_dir;
            grabbed_player.y = y + 10;
            if (window_timer == 1){
                create_hitbox(AT_UTILT, 3, x + 4 * spr_dir, y + 10)
            }
        }
        grabbed_player.hitpause = true;
        grabbed_player.hitstop = 2;
        grabbed_player.hsp = 0;
        grabbed_player.vsp = 0;
    }
}


//fair

if (attack == AT_FAIR){
    if (attacking_now == 1 && window_timer == 3){
        sound_play(sound_get("tammorra1"));
    }
}


//uair

if (attack == AT_UAIR){
    if (attacking_now == 4){
        if (attack_pressed == true || special_pressed == true || jump_pressed == true || tap_jump_pressed == true 
        || shield_pressed == true || taunt_pressed == true || up_strong_pressed == true || down_strong_pressed == true
        || left_strong_pressed == true || right_strong_pressed == true){
            window = 5;
            attack_end();
        }
    }
}

//dair

if (attack == AT_DAIR && attack_pressed && attacking_now == 2 && window_timer > 2 && hitpause == 0 && has_hit == true){
    window = 3;
    window_timer = 0;
    destroy_hitboxes();
}

//bair

if (attack == AT_BAIR){
    if (instance_exists(grabbed_player) == true){
        vsp = 0;
        hsp = 0;
        if (floor(image_index) == 1){
            grabbed_player.x = x + -101 * spr_dir;
            grabbed_player.y = y + -18;
        }
        if (floor(image_index) == 2){
            grabbed_player.x = x + -76 * spr_dir;
            grabbed_player.y = y + -17;
        }
        if (attacking_now == 3){
            if (window_timer == 1){
                create_hitbox(AT_BAIR, get_num_hitboxes(AT_BAIR) + 1, x + 40 * spr_dir, y - 8)
            }
            grabbed_player.x = x + 42 * spr_dir;
            grabbed_player.y = y + 19;
        }
        grabbed_player.hitpause = true;
        grabbed_player.hitstop = 2;
        grabbed_player.hsp = 0;
        grabbed_player.vsp = 0;
        go_through = true;
    }
}

//Fspecial

if (attack == AT_FSPECIAL){
    if (attacking_now == 2){
        hsp = 0;
        can_shield = true;
        if (special_down && window_timer == 6 && fspecial_charge < fspecial_charge_max){
            window_timer = 0;
            fspecial_charge += 1;
            spawn_base_dust(x, y + 4, "dash", spr_dir);
        }
        if (fspecial_sound_tracker == 0){
            sound_play(sound_get("scramble_loop"), true);
            fspecial_sound_tracker = 1;
        }
    }
    if (attacking_now == 3){
        if (window_timer == 1){
            if (generic_timer == 0){
                hsp = (2.5 * (3 + fspecial_charge)) * spr_dir;
                vsp = -4;
            }
            spawn_base_dust(x, y + 4, "dattack", spr_dir);
        }
    }
    if (attacking_now == 4){
        move_cooldown[AT_FSPECIAL] = 30;
        if (window_timer > 7){
            if (special_pressed == true || jump_pressed == true || free == false){
                window_timer = 0;
                window = 5;
                fspecial_charge = 0;
                attack_end();
                destroy_hitboxes();
            }
        }
    }
    if (attacking_now == 5 && window_timer == 4){
        destroy_hitboxes();
        vsp = -8;
        sound_play(asset_get("sfx_plant_eat"));
        fspecial_charge = 0;
    }
    if (attacking_now == 7){
        hooped = 12;
        if (window_timer == 8){
            if (right_down - left_down != 0){
                spr_dir = right_down - left_down;
            }
            sound_play(sound_get("whizz"), false, noone, 1, 1.1);
            hsp = (2.5 * (3 + fspecial_charge_max)) * spr_dir;
            vsp = -4;
            if (hsp != 0){
                spr_dir = sign(hsp);
            }
            hooped = 12;
            window = 4;
            window_timer = 0;
        }
    }
}

if (attack == AT_FSPECIAL_2 && instance_exists(grabbed_player)){
    move_cooldown[AT_FSPECIAL] = 45;
    grabbed_player.x = x + 54 * spr_dir;
    grabbed_player.y = y + 8 - grabbed_player.char_height / 2;
    grabbed_player.hitpause = true;
    grabbed_player.hitstop = 2;
    grabbed_player.hsp = 0;
    grabbed_player.vsp = 0;
    can_fast_fall = false;
    can_move = false;
    go_through = true;
    if (image_index < 2){
        grabbed_player.depth = depth - 5;
    } else{
        grabbed_player.depth = depth + 1;
        grabbed_player.grabbed_invisible = true;
    }
    spr_angle = 0;
}

//uspec

if (attack == AT_USPECIAL){
    if (attacking_now == 2 && window_timer == 1){
        instance_create(x, y, "obj_article1");
        move_cooldown[AT_USPECIAL] = 1200;
    }
}


if (attack == AT_DSPECIAL){
    if (attacking_now == 2 && window_timer == 1){
        move_cooldown[AT_DSPECIAL] = 10;
    }
}

//new nspec

if (attack == AT_NSPECIAL){
    if (free == false){
        set_state(PS_LAND);
    }
    if (attacking_now == 2){
        can_fast_fall = false;
        if (special_down){
            window_timer = 0;
        }
    } else{
        attack_end();
    }
    if (instance_exists(footstooled_player)){
        footstooled_player.can_tech = false;
        go_through = true;
        if (hitpause == 0){
            generic_fx = spawn_base_dust(x, y + 12, "doublejump");
            generic_fx.depth = -10
            sound_play(sound_get("boing"), false, noone, 2, 1 + random_func(1, 1, false));
            sound_play(sound_get("drumroll_end"));
            hsp = lengthdir_x(jump_speed, 90 - 20 * (right_down - left_down));
            vsp = lengthdir_y(jump_speed, 90 - 20 * (right_down - left_down));
            footstooled_player.vsp = -3;
            footstooled_player.hsp = 0;
            footstooled_player.old_vsp = -3;
            footstooled_player.old_hsp = 0;
            footstooled_player.hitstun_full = 40;
            footstooled_player.hitstun = 40;
            footstooled_player.state = PS_HITSTUN;
            footstooled_player.state_timer = 0;
            footstooled_player.free = true;
            footstooled_player.can_tech = false;
            djumps = 0;
            has_walljump = 1;
            has_airdodge = 1;
            move_cooldown[AT_USPECIAL] = 0;
            move_cooldown[AT_NSPECIAL] = 30;
            attack_end();
            footstooled_player = noone;
        }
    }
}

//ustrong

if (attack == AT_USTRONG){
    if (attacking_now == 1){
        generic_timer += 0.3;
        if (generic_timer >= 4){
            generic_timer = 0;
        }
        if (strong_charge >= 59 && state_timer < 130){
            strong_charge = 59;
        }
        if (window_timer == 1){
            if (ustrong_mus_counter > 0){
                //there is defo a better way to code this lol :P
                var random_index = random_func(1, 50, true)
                if (random_index > 35){
                    //normal
                    ustrong_music_index = sound_get("jitb_mus_weasel");
                } else if (random_index > 25){
                    //motif
                    ustrong_music_index = sound_get("jitb_mus_motif");
                } else if (random_index > 10){
                    //classical melodies
                    var random_index2 = random_func(2, 3, true)
                    switch(random_index2){
                        case 0:
                            ustrong_music_index = sound_get("jitb_mus_gladiator");
                        break
                        case 1:
                            ustrong_music_index = sound_get("jitb_mus_napoli");
                        break
                        case 2:
                            ustrong_music_index = sound_get("jitb_mus_canio");
                        break
                    }
                } else if (random_index > 1){
                    //ebic references
                    var random_index2 = random_func(2, 3, true)
                    switch(random_index2){
                        case 0:
                            ustrong_music_index = sound_get("jitb_mus_chaos");
                        break
                        case 1:
                            ustrong_music_index = sound_get("jitb_mus_sprite");
                        break
                        case 2:
                            ustrong_music_index = sound_get("jitb_mus_POMNI_FROM_THE_AMAZING_DIGITAL_CIRCUS");
                        break
                    }
                    //extremely rare
                } else if (random_index == 1){
                    ustrong_music_index = sound_get("jitb_mus_her");
                } else{
                    ustrong_music_index = sound_get("jitb_mus_easteregg");
                }
            }
        }
    }
}

//fstrong

if (attack == AT_FSTRONG){
    if (attacking_now == 1 && window_timer == 2){
        generic_fx = spawn_hit_fx(x - 34 * spr_dir, y - 62, 20);
        sound_play(asset_get("sfx_absa_cloud_crackle"), false, noone, 0.75, 1.25);
    }
    if (instance_exists(generic_fx)){
        generic_fx.x = x - 34 * spr_dir;
        generic_fx.y = y - 62;
    }
}

//dstrong

if (attack == AT_DSTRONG){
    if (attacking_now < 6 && attacking_now > 2){
        if (has_hit == true || free == false){
            window = 6;
            window_timer = 0;
            sound_play(sound_get("bwoom"));
            destroy_hitboxes();
        }
        can_fast_fall = false;
    } else{
        destroy_hitboxes();
    }
    if (attacking_now == 5){
        if (window_timer == 28){
            spawn_hit_fx(x, y - 20, 302);
            sound_play(sound_get("signify_you_can_cancel_out_now"), false, noone, 0.5, 3);
        }
        if (shield_pressed && window_timer > 30){
            destroy_hitboxes();
            attack_end();
            set_state(PS_AIR_DODGE);
        }
        if (jump_pressed && window_timer > 30){
            destroy_hitboxes();
            attack_end();
            djumps = 0;
            set_state(PS_DOUBLE_JUMP);
        }
    }
    if (attacking_now == 7 && window_timer < 2){
        if (has_hit == true){
            spawn_base_dust(x, y + 24, "doublejump");
        }
        hsp = 6 * (right_down - left_down);
        if (right_down - left_down != 0){
            spr_dir = right_down - left_down;
        }
    }
}

//bstrong

if (attack == AT_FSTRONG_2){
    if (has_hit && hitpause == false && window < 6){
        window = 6;
        window_timer = 0;
        vsp = -10;
        hsp = -2 * spr_dir;
        spr_dir = spr_dir * -1;
    }
}

//strong stuff

if (attack == AT_FSTRONG || attack == AT_FSTRONG_2 || attack == AT_USTRONG || attack == AT_DSTRONG){
    if (state_timer == 1){
        if (right_down - left_down != 0 && attack != AT_FSTRONG && attack != AT_FSTRONG_2){
            spr_dir = right_down - left_down;
        }
    }
    if (attacking_now == 1 && strong_charge > 0 || attacking_now == 2 && window_timer = 1 && strong_charge > 0 ){
        hsp = 0;
        vsp = 0;
        can_fast_fall = false;
        can_move = false;
    }
}

if (attack == AT_TAUNT){
    if (window_timer == 1){
        sound_play(sfx_laugh, false, noone, 1);
    }
}

//secret taunt

if (attack == AT_TAUNT_2){
    spr_dir = 1;
    if (attacking_now == 15 && window_timer > 8 && !taunt_down){
        window = 16;
    }
    if (attacking_now == 15 && window_timer == 15 && taunt_down){
        window = 1;
        window_timer = 0;
    }
}

//written by supersonic, modified by bar-kun
#define spawn_base_dust
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
