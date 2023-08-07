if (state == PS_SPAWN) {
    if get_player_color(player) != 13 {
        if (introTimer < 14 && introTimer >= 0) {
            sprite_index = sprite_get("intro");
            image_index = introTimer;
        } else if (introTimer < 0) {
            sprite_index = sprite_get("intro");
            image_index = 0;
        } else {
            sprite_index = sprite_get("idle");
        }
    } else {
        if (introTimer < 12 && introTimer >= 0) {
            sprite_index = sprite_get("abyss");
            image_index = introTimer;
        } else if (introTimer < 0) {
            sprite_index = sprite_get("abyss");
            image_index = 0;
        } else {
            sprite_index = sprite_get("idle");
        }
    }
}

if state == PS_IDLE_AIR && prev_state == PS_AIR_DODGE {
    sprite_index = sprite_get("jump")
    image_index = 6
}

if state == PS_AIR_DODGE {
    if state_timer >= 2 && state_timer <= 15 {
        hud_offset = 30;
    }
}
if state == PS_PARRY && !hitpause {
    if state_timer == 1 {
        sound_play(asset_get("sfx_oly_nspecial_flashbreak"))
    }
}

if attack == AT_FSPECIAL && state == PS_PRATFALL {
    sprite_index = sprite_get("pratfall2")
}
if attack == AT_FSPECIAL && state == PS_PRATLAND {
    sprite_index = sprite_get("pratland_2")
}