//Drawing atop

//intro
var intro_length = 114;
var gp_time = get_gameplay_time();
if gp_time < intro_length {
    sprite_index = spr_intro;
    image_index = floor(gp_time/(intro_length/image_number));
}
if (sprite_index == spr_intro){
    if (state_timer == 107){
        generic_effect = spawn_hit_fx(x, y, vfx_intro_door);
        generic_effect.uses_shader = 0;
    }
    if (state_timer == 42){
        sound_play(sfx_gunshot1);
        create_hitbox(AT_DSPECIAL_2, 2, x + 12, y - 20);
    }
    if (state_timer == 72){
        sound_play(asset_get("sfx_swipe_weak2"));
    }
    
    if (state_timer == 82){
        sound_play(asset_get("sfx_swipe_weak1"));
    }
    
    if (state_timer == 98){
        sound_play(sound_get("doorcreak"), false, false, 5, 3);
    }
}

//hud offset

if (attacking_now != 0){
    if (attack == AT_UTILT){
        hud_offset = 48;
    }
}

if (attacking_now == 2){
    if (attack == AT_UAIR){
        hud_offset = 40;
    }
}

if (attacking_now != 0){
    if (attack == AT_DSPECIAL_2){
        if (inv_selection_unend == 5 && window_timer >= 42 && attacking_now == 2){
            if (window_timer == 42){
                hud_offset = 92
            }
        } else{
            hud_offset = 38
        }
    }
}

//parried

if (state == PS_PRATLAND && was_parried == true){
    sprite_index = sprite_get("parried");
    image_index = generic_timer;
    generic_timer += 0.1;
}

//pissing
if (sprite_index == sprite_get("idle") || sprite_index == sprite_get("wait")){
    if (intox_level > 0){
        sprite_index = sprite_get("pissing");
        image_index = state_timer/ 2;
        if (state_timer < 5){
            sound_play(sfx_piss, true, false, 0.1);
        }
        misc_soundcooldown = 3;
    }
}

//dspecial

if (attack == AT_DSPECIAL){
    if (attacking_now == 1){
        sprite_index = sprite_get("dspecial_loop");
        image_index = state_timer / 5;
    }
}

if (attack == AT_DSPECIAL_2 && attacking_now > 1){
    switch (inv_selection_unend){
        case 2:
            sprite_index = sprite_get("dspecial_flask");
            image_index = window_timer / 6;
        break
        
        case 3:
            sprite_index = sprite_get("dspecial_coffee");
            image_index = floor(window_timer/(16/image_number));
        break
        
        case 4:
            sprite_index = sprite_get("dspecial_candycorn");
            image_index = floor(window_timer/(4/image_number));
        break
        
        case 5:
            sprite_index = sprite_get("dspecial_window");
            image_index = floor(window_timer/(60/image_number));
        break
        
        case 6:
            sprite_index = sprite_get("dspecial_knifebear");
            image_index = floor(window_timer/(16/image_number));
        break
        
        case 7:
            sprite_index = sprite_get("dspecial_bust");
            image_index = floor(window_timer/(38/image_number));
        break
        
        case 8:
            sprite_index = sprite_get("dspecial_cc_sack");
            if (window_timer < 50){
                image_index = window_timer - (floor(window_timer / 2) * 2)
            } else{
                image_index = floor((window_timer - 50)/(35/image_number));
            }
        break
        
        case 9:
            sprite_index = sprite_get("dspecial_code");
            image_index = generic_timer2;
        break
        
        case 10:
            sprite_index = sprite_get("dspecial_lock");
            image_index = floor(window_timer/(14/image_number));
        break
        
        case 11:
            sprite_index = sprite_get("dspecial_bullets");
            image_index = floor(window_timer/(30/image_number));
        break
        
        case 12:
            sprite_index = sprite_get("dspecial_kingdom");
            image_index = floor(window_timer/(24/image_number));
        break
        
        case 13:
            sprite_index = sprite_get("dspecial_kingdom");
            image_index = floor(window_timer/(24/image_number));
        break
        
        case 14:
            sprite_index = sprite_get("dspecial_kingdom");
            image_index = floor(window_timer/(24/image_number));
        break
        
        case 15:
            sprite_index = sprite_get("dspecial_kingdom");
            image_index = floor(window_timer/(24/image_number));
        break
    }
}