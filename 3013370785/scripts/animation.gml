switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
    switch attack {
        case AT_FSPECIAL:
        
        switch fuse_item {
            case 1: 
            sprite_index = sprite_get("fspecial_homingcart")
            if image_index >= 7 sprite_change_offset("fspecial_homingcart", 128, 172);
            else sprite_change_offset("fspecial_homingcart", 128, 160);
            break;
            
            case 2:
            sprite_index = sprite_get("fspecial_hoverstone")
            break;
            
            case 3:
            sprite_index = sprite_get((fuse_attack_activated && floor(fuse_attack_timer/6) mod 2 == 0) ? "fspecial_bomb_primed" : "fspecial_bomb")
            break;
            
            case 4:
            sprite_index = sprite_get("fspecial_rocket")
            break;
        }
        
        if window == 2 {
            image_index = clamp(3 + floor(window_timer/4), 3, 6)
        }
        
        if window == 3 {
            if free image_index = 6
            else image_index = clamp(7 + floor(window_timer/6), 7, 8)
        }
        break;
        
        case AT_FAIR:
        if window == 2 {
            image_index = clamp(1 + floor(window_timer/4), 1, 2)
        }
        break;
        
        case AT_USPECIAL:
        if window == 7 {
            var para_index = 12
            var para_len = get_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH);
            if (spr_dir == 1 && hsp > 2) || (spr_dir == -1 && hsp < -2) para_index = 14
            if (spr_dir == -1 && hsp > 2) || (spr_dir == 1 && hsp < -2) para_index = 16
            image_index = para_index + ((2*state_timer/para_index) mod 2)
        }
        if ascend_burrowing {
            sprite_index = sprite_get("ascend_burrow")
            if ascend_burrowing_timer <= 20 {
                image_index = clamp(ascend_burrowing_timer/3, 0, 6)
            } else {
                image_index = 7 + clamp(floor((ascend_burrowing_timer-20)/3), 0, 1)
            }
        }
        break;
        
        case AT_FSTRONG:
        if window == 2 {
            image_index = 2 + (floor(state_timer/4) mod 4) 
        }
        break;
        
        case AT_USTRONG:
        if window == 2 {
            image_index = 2 + ((floor(state_timer/4) + 10) mod 6) 
        }
        break;
        
        case AT_DSTRONG:
        if window == 2 {
            image_index = 3 + ((floor(state_timer/4) + 10) mod 6) 
        }
        break;
    }
    break;
    
    case PS_FIRST_JUMP:
    if fspec_jump {
        sprite_index = sprite_get("fspecial_jump")
        image_index = clamp(floor(state_timer/5), 0, 4)
    }
    break;
    
    case PS_PARRY:
    if parry_anim {
        sprite_index = sprite_get("parry_success")
        var facing = (x < hit_player_obj.x && spr_dir == 1) || (x > hit_player_obj.x && spr_dir == -1)
        image_index = clamp(floor(parry_anim_timer/7.5) + 5*!facing, 0 + 5*!facing, 4 + 5*!facing)
    }
    break;
    
    default: break;
}

var intro_time = get_gameplay_time()-12;
if intro_time < 24 {
    intro_y = ease_linear(y - 400, y - 40, intro_time, 24)
    intro_x = ease_linear(x - 30*spr_dir, x - 10*spr_dir, intro_time, 24)
} else if intro_time < 34 {
    intro_y = ease_quadOut(y - 40, y - 10, intro_time-26, 10)
    intro_x = ease_linear(x - 10*spr_dir, x, intro_time-26, 10)
} else if intro_time < 48 {
    intro_y = ease_quadOut(y - 10, y, intro_time-34, 14)
}


if intro_time < 80 {
    sprite_index = asset_get("empty_sprite")
}

draw_indicator = intro_time >= 60
if intro_time >= 60 && intro_time < 80 {
    char_height = ease_expoOut(80, default_height, intro_time - 60, 20)
}