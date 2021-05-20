if (state == PS_SPAWN) {
    if (introTimer < 8 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
    
    if (introTimer == 3 && introTimer2 == 0){
    	sound_play( sound_get("teleport"));
    }
    
}

var vict = sound_get("TAKWIN");

if (get_player_color(player) == 16){
        set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("fart_old"));
        set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("fart_old"));
        set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("fart_old"));
        set_victory_theme(vict);
}

