//B - Reversals
//sprite_index = sprite_get("idle3");

//fidgets
if (state == 24) {
    if (fidget == 3) {
        sprite_index = sprite_get("idle3");
    }
    else if (fidget == 2) {
        sprite_index = sprite_get("idle2");
    }
    else sprite_index = sprite_get("idle");
}

//fall sprite
if (state == 1) {
    //if after a double jump, use that fall frame. otherwise go to normal
    if (djumped = 1) {
        sprite_index = sprite_get("fall2");
    } else if (prev_state != 26 && prev_state != 22 && prev_state != 23) {
        sprite_index = sprite_get("fall");
    }
}

//asymmetric flag
if (state == 6 && attack == AT_UTILT) {
    if (spr_dir == -1) {
        sprite_index = sprite_get("utilt2");
    }
    else sprite_index = sprite_get("utilt");
}

//asymmetric judge
if (state > 4 && state < 7 && attack == AT_FSPECIAL) {
    if (spr_dir == -1) {
        sprite_index = sprite_get("fspecial2");
    }
    else sprite_index = sprite_get("fspecial");
}

//rune crouching
if (state == 32 && has_rune("E")) {
    sprite_index = sprite_get("crouch2");
}