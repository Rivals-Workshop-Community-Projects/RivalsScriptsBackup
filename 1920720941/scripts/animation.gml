switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
}

if (attack == AT_EXTRA_1 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
    if (in_mist) {
        sprite_index = sprite_get("mist_dash");
    } else if (window == 3) {
        if (dash_dir % 180 == 0) {
            sprite_index = sprite_get("celeste_leftright");
        } else if (dash_dir % 360 == 225 || dash_dir % 360 == 315) {
            sprite_index = sprite_get("celeste_diagdown");
        } else if (dash_dir % 360 == 45 || dash_dir % 360 == 135) {
            sprite_index = sprite_get("celeste_diagup");
        } else if (dash_dir % 360 == 270) {
            sprite_index = sprite_get("celeste_down");
        } else if (dash_dir % 360 == 90) {
            sprite_index = sprite_get("celeste_up");
        }
    } else if (window >= 4) {
        sprite_index = sprite_get("jump");
    }
}

if (state == PS_ATTACK_GROUND && attack == AT_USTRONG && /*strong_charge >= 60 &&*/ winged_strawberry == noone) {
    sprite_index = sprite_get("ustrong_charged");
}

/*
if (state == PS_ATTACK_GROUND && attack == AT_USTRONG && !has_dashed) {
    sprite_index = sprite_get("ustrong_golden");
}
*/

if (free && vsp >= 15) {
    sprite_index = sprite_get("fastfall");
}

if (attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
    
    if (window == 1 && window_timer == 1) {
        heart_color = random_func(0, 12, true)
    }
    if (heart_color <= 4) {
        sprite_index = sprite_get("nspecial_blue");
    } else if (heart_color <= 8) {
        sprite_index = sprite_get("nspecial_red");
    } else if (heart_color >= 9) {
        sprite_index = sprite_get("nspecial_yellow");
    }
}

if ((clinging && state == PS_WALL_JUMP) || state == PS_WALL_TECH) {
    sprite_index = sprite_get("wallcling");
}


if (climbing != 0) {
    if (window == 1) {
        if (abs(vsp) > 1.0) {
            image_index = floor(state_timer / 8.0);
        } else {
            image_index = 0;
        }
    } else {
        sprite_index = sprite_get("jump");
    }
}