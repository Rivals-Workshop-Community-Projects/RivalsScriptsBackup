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

if get_match_setting(SET_PRACTICE){
    if up_down && taunt_pressed && jestermode == false{
        jestermode = true;
        sound_play(asset_get("mfx_coin"));
    }
}

if state == PS_HITSTUN && hurt_img == 0 && !hitpause && jestermode == true{
    draw_x = 0;
    draw_y = -32;
	sprite_index = sprite_get("jestermodebighurt");
	if (state_timer == 0){
		spr_angle = 0;
	}
    else{
        spr_angle = (state_timer * 45 * spr_dir) % 360; 
    }
}
else{
    spr_angle = 0;
}

if state == PS_HITSTUN && hurt_img == 4 && !hitpause && jestermode == true{
    draw_x = 0;
    draw_y = 0;
	sprite_index = sprite_get("jestermodeuphurt");
	image_index = state_timer/3
}

if (get_player_color(player) == 15){
        set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("fart_old"));
        set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("fart_old"));
        set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, sound_get("FARTWITHEXTRAREVERB"));
}

//parry code
if state == PS_PARRY && jestermode == true{
    if state_timer == 0 and parry_spam_cancel == false{
        sound_play(sound_get("JMparry"));
        rand_parry_sprite = random_func( 0, 20, true);
        parry_spam_cancel = true;
    }
    	
	sprite_index = sprite_get("jestermodeparry")
	image_index = rand_parry_sprite;
		
} else{
    parry_spam_cancel = false;
}