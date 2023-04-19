//B - Reversals
if (attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack){
    
    case AT_JAB:
        if(window == 1 && window_timer == 5){
            sound_play(sound_get("sfx_magicpoke"), false, noone, 0.95, 1.0);
        }
        if(window == 4){
            if(get_gameplay_time() % 3 == 0){
                var particle_x = x + ((random_func(0, 75, true)) * spr_dir);
                var particle_y = y - (18 + random_func(1, 30, true));
                spawn_hit_fx( particle_x, particle_y, vfx_twinkle );
            }
            if(window_timer == 3 && jab_loop % 5 == 0){
                sound_play(sound_get("sfx_rapidjab"));
            }
            if(window_timer % 4 == 0){
                jab_loop++;
                if(jab_loop > 3 && (!attack_down && !attack_pressed)){
                    window_timer = 0;
                    window++;
                    sound_stop(sound_get("sfx_rapidjab"));
                    sound_play(sound_get("sfx_magicpoke"), false, noone, 1.0, 1.02);
                }
            }
        }
        break;
    
    case AT_DATTACK:
        if(window == 1 && window_timer == 7){
            soft_armor = 16;
        }else if(window == 2 && window_timer == 2){
            soft_armor = 8;
        }else if(window == 4 && window_timer == 4){
            soft_armor = 0;
        }
        break;
    
    case AT_FTILT:
        if(window == 1 && window_timer == 12) sound_play(sound_get("sfx_staffspin"), false, noone, 1, 1);
        break;
        
    case AT_DTILT:
        if(window == 1 && window_timer == 11) sound_play(sound_get("sfx_staffspin"), false, noone, 0.85, 0.95);
        break;
    
    case AT_UTILT:
        if(window == 1 && window_timer == 8) sound_play(sound_get("sfx_staffspin"), false, noone, 1.1, 0.95);
        break;
    
    case AT_FAIR:
        if(window == 1 && window_timer == 7) spawn_hit_fx( x + (60 * spr_dir), y - 10, vfx_twinkle );
        break;
    
    case AT_DAIR:
        if(window == 1 && window_timer == 8) spawn_hit_fx( x, y + 20, vfx_twinkle );
        if(window == 2 && window_timer == 2) spawn_hit_fx( x - (24 * spr_dir), y + 15, vfx_twinkle );
        break;
    
    case AT_UAIR:
        if(window > 1 && window < 4){
            hud_offset = 45;
        }
        break;
    
    case AT_BAIR:
        if(window == 1 && window_timer == 7){
            soft_armor = 16;
        }else if(window == 2 && window_timer == 2){
            soft_armor = 8;
        }else if(window == 3 && window_timer == 4){
            soft_armor = 0;
        }
        break;
    
    case AT_NSPECIAL:
        if(window == 1 && window_timer == get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH)){
            vsp = -6.5;
            has_float = false;
            nspec_grav_cur = 0;
            in_float = true;
            nspec_float_cur = 0;
            sound_play(sound_get("sfx_rapidjab"), false, noone, 0.6, 0.99);
            window = 3;
            spawn_base_dust(x, y, "jump", -1);
        }
        break;
    
    case AT_FSPECIAL:
        can_move = false;
        can_fast_fall = false;
        vsp = clamp(vsp, -15, 8);
        if(fspec_yes == 1 && window == 2){
            if(window_timer == 2){
                spawn_hit_fx(floor(fspec_x), floor(fspec_y), vfx_fspec_hits);
            }else if(window_timer == 6){
                fspec_yes = 2;
                fspec_timer = 0;
            }
        }
        move_cooldown[AT_FSPECIAL] = 10; //dont add cooldown unless you wanna work out the bug where the blink still appears
        break;
    
    case AT_USPECIAL:
        can_fast_fall = false;
        
        if(window == 1){
            if(window_timer >= 12) draw_indicator = false;
            hsp = clamp(hsp, -2, 2);
            vsp = clamp(vsp, -3, 1);
            can_move = false;
            
            //set warp direction and speed
            if(window_timer == get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH)){
                if(joy_pad_idle){
                    warp_dir = 90;
                }else{
                    warp_dir = joy_dir;
                    if(warp_dir > 90 && warp_dir < 270 && spr_dir == 1){
                        spr_dir = -1;
                    }else if(warp_dir < 90 || warp_dir > 270 && spr_dir == -1){
                        spr_dir = 1;
                    }
                }
                hsp = lengthdir_x(warp_speed, warp_dir);
                vsp = lengthdir_y(warp_speed, warp_dir);
            }
        }
        if(window == 2){
            can_move = false;
            draw_indicator = false;
            //couldnt get ledge snap to work quickly, so no ledge snap
            /*if (place_meeting(x + hsp, y, asset_get("par_block")) && free) {
                for (var i = 1; i < 40; i++){
                    if (!place_meeting(x + hsp, y- i ,asset_get("par_block"))) {
                        reset_window_value(AT_FSPECIAL_1, 5, AG_WINDOW_TYPE);
                        reset_window_value(AT_FSPECIAL_1, 13, AG_WINDOW_TYPE);
                        reset_hitbox_value(AT_FSPECIAL_1, 7, HG_ANGLE);
                        reset_hitbox_value(AT_FSPECIAL_1, 7, HG_BASE_KNOCKBACK);
                        y -= i;
                        break;
                    }
                }      
            }*/
            //ride along the stage
            if(place_meeting(x + sign(hsp), y - 30, asset_get("par_block")) && abs(hsp) <= warp_speed * 0.707){
                //wall
                hsp = 0;
                vsp = warp_speed * sign(vsp) * 1.3;
            }else if(vsp > 0 && place_meeting(x + vsp, y, asset_get("par_block")) && abs(vsp) <= warp_speed * 0.707){
                //floor
                vsp = 0;
                hsp = warp_speed * sign(hsp) * 1.3;
            }
            //if touch ground in last parts of warp, it can be ledge-cancelled
            if(window_timer >= (get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH) * .75) && !free){
                warp_cancel = true;
                set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
            }
            
            //reappear
            if(window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH)){
                hsp *= 0.35;
                vsp *= 0.35;
                if(vsp > 2) vsp -= 2;
                spawn_hit_fx(floor(x), floor(y), vfx_warp_reappear);
                //quicker landing if grounded on reappearance
                if(!free){
                    set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
                    set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 12);
                    warp_land = true;
                    warp_cancel = true;
                }
            }
        }
        if(window > 2){
            can_wall_jump = true;
            if(warp_cancel && free){
                can_jump = true;
                can_attack = true;
                can_shield = true;
            }else if(!free && !warp_land){
                set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
                window = 4;
                window_timer = 12;
            }
        }
        break;
    
    case AT_DSPECIAL:
        can_fast_fall = false;
        if(window == 1 && window_timer == 8){
            killarticles = false;
            dspec_hud_cd = 0;
            barrier = instance_create(x + (33*spr_dir), y - 12, "obj_article1");
            barrier.spr_dir = spr_dir;
            move_cooldown[AT_DSPECIAL] = 2;
        }
        break;
    
    case AT_TAUNT:
        if(window == 2 && window_timer == 8){
            sound_play(sound_get("sfx_harp"), false, noone, 0.7, 1.01);
            sound_play(asset_get("sfx_bird_upspecial"), false, noone, 0.4, 1.2);
        }
    break;

    case AT_TAUNT_2:
        if(window == 1 && window_timer == 10){
            sound_play(sound_get("sfx_staffspin"), false, noone, 0.75, 1.0);
            sound_play(sound_get("sfx_harp"), false, noone, 0.55, 1.01);
        }
        break;
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
