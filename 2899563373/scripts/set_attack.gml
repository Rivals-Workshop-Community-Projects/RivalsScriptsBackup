switch(attack){
    
    case AT_JAB:
        jab_loop = 0;
        break;
    
    case AT_DATTACK:
        sound_play(asset_get("sfx_shovel_swing_light1"), false, noone, 0.65, 1.0);
        break;
    
    case AT_BAIR:
        sound_play(asset_get("sfx_shovel_swing_light1"), false, noone, 0.65, 1.0);
        break;
    
    case AT_FSTRONG:
    case AT_DSTRONG:
        sound_play(sound_get("sfx_harp"), false, noone, 0.75, 1.0);
        break;
    
    case AT_USTRONG:
        sound_play(asset_get("sfx_shovel_swing_med1"), false, noone, 0.55, 1.2);
        break;
    
    case AT_NSPECIAL:
        if(move_cooldown[AT_NSPECIAL] <= 0){
            if(free){
                window = 3;
                has_float = false;
                nspec_grav_cur = 0;
                nspec_float_cur = 0;
                in_float = true;
                vsp = 0;
                sound_play(sound_get("sfx_rapidjab"), false, noone, 0.6, 0.99);
            }
        }
        clear_button_buffer(PC_SPECIAL_PRESSED);
        break;
    
    case AT_USPECIAL:
        warp_dir = 0;
        warp_h = 0;
        warp_v = 0;
        warp_land = false;
        warp_cancel = false;
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 8);
        break;
    
    case AT_FSPECIAL:
        //stops flash from spawning when fspec on cooldown
        if(move_cooldown[AT_FSPECIAL] > 0) exit;
        //"smash" input
        var tmp_x = 190;
        //detect input here as well to account for frame-perfect inputs
        if(right_hard_pressed && right_buffer <= -1){
            right_buffer = 7;
        }
        if(left_hard_pressed && left_buffer <= -1){
            left_buffer = 7;
        }
        //old smash input detection
        //if((spr_dir == 1 && (right_pressed || right_buffer > 0)) || (spr_dir == -1 && (left_pressed || left_buffer > 0))){
        if((spr_dir == 1 && right_buffer > 0) || (spr_dir == -1 && left_buffer > 0)){
            tmp_x = 280;
        }
        //temp_x = 210;
        fspec_x = x + (tmp_x * spr_dir);
        fspec_y = y - 40;
        fspec_yes = 1;
        fspec_timer ++;
        fspec_finalhit = noone;
        
        //wall detection
        if(spr_dir == 1){
            for(var i = x; i <= x + tmp_x; i += 10){
                if(place_meeting(i, fspec_y, asset_get("par_block"))){
                    fspec_x = i;
                    //2flame check
                    if(place_meeting(i, fspec_y - 3, asset_get("par_block"))){
                        fspec_yes = 3;
                    }
                    break;
                }else if(place_meeting(i, fspec_y, asset_get("plasma_field_obj"))){
                    fspec_x = i;
                    fspec_yes = 3;
                    break;
                }
            }
        }else if(spr_dir == -1){
            for(var i = x; i >= x - tmp_x; i -= 10){
                if(place_meeting(i, fspec_y, asset_get("par_block"))){
                    fspec_x = i;
                    //2flame check
                    if(place_meeting(i, fspec_y - 3, asset_get("par_block"))){
                        fspec_yes = 3;
                    }
                    break;
                }else if(place_meeting(i, fspec_y, asset_get("plasma_field_obj"))){
                    fspec_yes = 3;
                    break;
                }
            }
        }
        
        sound_play(sound_get("sfx_fspec_scan"));
        if(fspec_yes == 1){
            spawn_hit_fx(floor(fspec_x), floor(fspec_y), vfx_fspec_blink);
        }//*/
        break;
    
    case AT_TAUNT:
        if(down_down){
            attack = AT_TAUNT_2;
        }
    
}

if(in_float){
    if(attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL){
        in_float = false;
        nspec_grav_cur = 0;
        nspec_float_cur = 0;
        sound_stop(sound_get("sfx_rapidjab"));
    }
}
