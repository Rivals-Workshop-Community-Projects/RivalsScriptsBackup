//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack){
    
    case AT_JAB:
        if(window == 1 && window_timer == 6){
            sound_play(sound_get("sfx_slash_l"), false, noone, 0.9, 0.7);
        }else if(window == 4 && window_timer == 7){
            sound_play(sound_get("sfx_slash_m"), false, noone, 0.9, 1.1);
        }
        //turnaround
        if((window == 4 || window == 7) && window_timer == 1){
            if(spr_dir == (right_down - left_down) * -1){
                spr_dir *= -1;
                attack_end();
                set_attack(AT_FTILT);
            }
        }
        break;
    
    /*case AT_DATTACK:
        if(window == 1 && window_timer == 14){
            sound_play(asset_get("sfx_zetter_downb"), false, noone, 0.8, 1.0);
        }
        break;//*/
    
    case AT_DTILT:
        //turnaround
        if(window == 1 && window_timer == 1){
            if(spr_dir == (right_down - left_down) * -1){
                spr_dir *= -1;
            }
        }
        if(window == 1 && window_timer == 7){
            spawn_base_dust(x - (0 * spr_dir), y, "dash_start");
        }
        break;
    
    case AT_UTILT:
        //turnaround
        if(window == 1 && window_timer == 1){
            if(spr_dir == (right_down - left_down) * -1){
                spr_dir *= -1;
            }
        }
        if(window == 1 && window_timer == 7){
            sound_play(asset_get("sfx_swipe_medium1"));
            sound_play(sound_get("sfx_slash_l"), false, noone, 1, 0.8);
        }
        break;
        
    case AT_NAIR:
        if((window == 1 && window_timer == 6) || (window == 3 && window_timer == 3)){
            sound_play(sound_get("sfx_slash_m"), false, noone, 0.8, 1.15);
        }
        break;
    
    case AT_FAIR:
        if(window == 1){
            if(window_timer == 3) hsp += 9*spr_dir; //was 10
            if(window_timer == 9){
                hsp -= 9*spr_dir; 
                if(sign(hsp) != sign(spr_dir)) hsp = 0;
                var vfx = spawn_hit_fx(x - (35 * spr_dir), y - 24, vfx_reappear);
                vfx.hsp = hsp/4;
            }
        }
        break;
    
    case AT_DAIR:
        if(window == 1 && window_timer == 10){
            sound_play(sound_get("sfx_slash_m"), false, noone, 1.0, 0.85);
        }
        break;
    
    case AT_FSTRONG:
        if((window == 1 && window_timer == 8) && strong_charge % 10 == 0){
            spawn_base_dust(x - (20 * spr_dir), y, "dash");
        }else if(window == 2 && window_timer == 4){
            sound_play(sound_get("sfx_slash_m"), false, noone, 0.7, 1.0);
            spawn_base_dust(x + (15*spr_dir), y, "dash_start");
        //on-hit
        }else if(window == 3 && has_hit_player && hitstop <= 1){
            window = 5;
            window_timer = 0;
            if(place_meeting(x + (25 * spr_dir), y + 5, asset_get("par_block"))) x += 25*spr_dir;
            set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 7);
        //vfx
        }else if(window == 3 && window_timer == 8 && !has_hit_player){
            var vfx = spawn_hit_fx(x, y - 24, vfx_reappear);
            vfx.hsp = hsp/6;
        }else if(window == 5 && window_timer == 14){
            spawn_base_dust(x - (10*spr_dir), y, "dash_start");
        }else if((window == 6 || window == 7) && get_gameplay_time() % 6 == 0 && abs(hsp) > 3 && !hitpause){
            spawn_base_dust(x, y, "dash");
        }
        break;
    
    case AT_USTRONG:
        if((window == 1 && window_timer == 9) && strong_charge % 10 == 0){
            spawn_base_dust(x + 10, y, "dash", -1);
            spawn_base_dust(x - 10, y, "dash", 1);
        }else if(window == 2 && window_timer == 4){
            create_hitbox(AT_USTRONG, 1, floor(x), floor(y));
            spawn_base_dust(x + 10, y, "dash", -1);
            spawn_base_dust(x - 10, y, "dash", 1);
        }else if(window == 3 && window_timer == 9){
            if(!ustrong_loop){
                ustrong_loop = true;
                window_timer = 0;
                attack_end();
                sound_play(asset_get("sfx_clairen_swing_weak"));
            }else{
                sound_play(asset_get("sfx_absa_uair"));
                spawn_base_dust(x, y, "dash_start", -1);
                spawn_base_dust(x, y, "dash_start", 1);
            }
        }
        break;
    
    case AT_DSTRONG:
        if((window == 1 && window_timer == 3) && strong_charge % 15 == 0){
            spawn_base_dust(x + 10, y, "dash", -1);
            spawn_base_dust(x - 10, y, "dash", 1);
        }else if(window == 2 && window_timer == 3){
            sound_play(sound_get("sfx_slash_m"), false, noone, 0.95, 1.0);
            spawn_base_dust(x - (10 * spr_dir), y, "dash_start", spr_dir);
        }else if(window == 4 && window_timer == 5){
            sound_play(sound_get("sfx_slash_m"), false, noone, 1.0, 1.1);
            spawn_base_dust(x + (10 * spr_dir), y, "dash_start", -spr_dir);
        }
        break;

    case AT_NSPECIAL:
        can_move = false;
        can_jump = false;
        vsp = clamp(vsp, -4, 4);
        hsp = clamp(hsp, -2, 2);
        if(!free) vsp = 0;
        if(window == 7 && window_timer == 6){
            sound_play(sound_get("sfx_slash_m"), false, noone, 0.9, 0.9);
        }
        
        if((window == 1 && window_timer == 11) || (window == 4 && window_timer == 6)){
            spawn_base_dust(x + 10, y, "dash", -1);
            spawn_base_dust(x - 10, y, "dash", 1);
            if(free && nspec_fresh) vsp = -2;
        }else if(window == 7 && window_timer == 8){
            spawn_base_dust(x, y, "dash_start", -1);
            spawn_base_dust(x, y, "dash_start", 1);
            if(free && nspec_fresh) vsp = -2;
            nspec_fresh = false;
        }
        break;

    case AT_FSPECIAL:
        can_wall_jump = true;
        can_fast_fall = false;
        if(window == 1){
            vsp = clamp(vsp, -3, 3);
            hsp = clamp(hsp, -2, 2);
            if((window_timer + 1) % 7 == 0){
                spawn_base_dust(x - (15*spr_dir), y, "dash_start");
            }
        }
        if(window == 3 && window_timer == 15){
            vsp = 15;
            hsp = 4 * spr_dir;
            sound_play(sound_get("sfx_slash_m"), false, noone, 0.9, 1.1);
        }
        if(window == 4){
            if(window_timer == 8){
                window_timer = 0;
            }
            if(!free){
                destroy_hitboxes();
                window++;
                window_timer = 0;
                hsp = 0;
                sound_play(asset_get("sfx_absa_uair"), false, noone, 1.0, 1.1);
                sound_play(asset_get("sfx_zetter_downb"));
                create_hitbox(AT_FSPECIAL, 3, floor(x), floor(y));
                create_hitbox(AT_FSPECIAL, 4, floor(x), floor(y));
                shake_camera( 6, 6 );
            }
        }
        if(window == 4 && state_timer >= 75){
            can_shield = true;
        }
        break;

    case AT_USPECIAL:
        can_fast_fall = false;
        can_wall_jump = true;
        if(window == 1){
            hsp = clamp(hsp, -3.5, 3.5);
            vsp = clamp(vsp, -3, 1);
            if(window_timer == 13){
                sound_play(sound_get("sfx_slash_m"), false, noone, 1.1, 0.7);
            }
        }else if(window == 4 && window_timer >= 10){
            can_fast_fall = true;
        }
        break;
    
    case AT_DSPECIAL:
        can_move = false;
        hsp = clamp(hsp, -4, 4);
        vsp = clamp(vsp, -10, 2);
        if(window == 1 && window_timer == 4){
            sound_play(asset_get("sfx_clairen_swing_weak"));
            dspec_sword_handler[0] = {from:0, type:1, x:x, y:y-80, spr_dir:spr_dir, anim_frame:0, anim_timer:2, lifetime:1, lifemax:12};
            pandoria.pandy_control = true;
            pandoria.state = 11;
            pandoria.hsp = 0;
            pandoria.state_timer = 0;
            pandoria.window_timer = 0;
        }
        if(window == 3){
            if(pandoria.pandy_control){
                window_timer = 3;
            }
        }
        break;
    
    case AT_TAUNT:
        if(window == 3 && window_timer == 15 && state_timer < 60){
            window = 3;
            window_timer = 0;
        }
        if(window == 3 && window_timer == 1){
            sound_play(asset_get("sfx_swipe_weak1"), false, noone, 0.7, 0.9);
        }
        break;
    
    case AT_TAUNT_2:
        if(window == 1 && window_timer == 14 && dtaunt_loop){
            window_timer = 0;
            dtaunt_loop = false;
        }else if(window == 2 && window_timer = 4) dtaunt_loop = true;
        else if(window == 3 && window_timer == 14 && dtaunt_loop){
            window_timer = 0;
            dtaunt_loop = false;
        }else if(window == 4 && window_timer = 4 && taunt_down){
            window = 1;
            window_timer = 0;
            dtaunt_loop = true;
        }
        
        if(state_timer >= 68 && !taunt_down){
            window = 5;
        }
        break;
}

if((can_dspec || dspec_buffer) && move_cooldown[AT_DSPECIAL] == 0){
    if(hitpause){
        if(special_pressed && down_down && !dspec_buffer){
            hitstop += 5;
            hit_player_obj.hitstop += 20;
            sound_play(sound_get("xc2_art_cancel"));
            spawn_hit_fx(x, y - (char_height/2), vfx_cancelring);
            dspec_buffer = true;
        }
    }else{
        if((special_pressed && down_down) || dspec_buffer){
            if(dspec_buffer){
                dspec_buffer = false;
            }else{
                sound_play(sound_get("xc2_art_cancel"));
                spawn_hit_fx(x, y - (char_height/2), vfx_cancelring);
            }
            destroy_hitboxes();
            attack_end();
            set_attack(AT_DSPECIAL);
            can_dspec = false;
        }
    }
}

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
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

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