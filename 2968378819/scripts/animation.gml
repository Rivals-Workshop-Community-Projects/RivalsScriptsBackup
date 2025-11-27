if get_match_setting(SET_PRACTICE){
    if up_down && taunt_pressed && jestermode == false{
        jestermode = true;
        sound_play(asset_get("mfx_coin"));
    }
}

if state == PS_HITSTUN && hurt_img == 4 && !hitpause && jestermode == true{
    draw_x = 0;
    draw_y = 0;
	sprite_index = sprite_get("jestermodeuphurt");
	image_index = state_timer/4
}

if state == PS_HITSTUN && hurt_img == 0 && !hitpause && jestermode == true{
    draw_x = 0;
    draw_y = 0;
	sprite_index = sprite_get("jestermodebighurt");
}

if state == PS_HITSTUN && hurt_img == 2 && !hitpause && jestermode == true{
    draw_x = 0;
    draw_y = 0;
	sprite_index = sprite_get("jestermodedownhurt");
}


if state_cat != SC_HITSTUN butthurt = 0;

if state_cat == SC_HITSTUN && butthurt{
        sprite_index = sprite_get("jestermodeuphurt");
        image_index = state_timer/4;
        if !free sprite_index = sprite_get("hurtground");
}

//parry code
if state == PS_PARRY && jestermode == true{
    if state_timer == 0 and parry_spam_cancel == false{
        sound_play(sound_get("JMparry"));
        rand_parry_sprite = random_func( 0, 16, true);
        parry_spam_cancel = true;
    }
    	
	sprite_index = sprite_get("jestermodeparry")
	image_index = rand_parry_sprite;
		
} else{
    parry_spam_cancel = false;
}

switch state{
    case PS_FROZEN:
        spr_dir = prev_spr_dir;
        sprite_index = prev_sprite;
        image_index = prev_frame;
    break;
}

prev_sprite = sprite_index;
prev_frame = image_index;

if get_player_name(player) == "TANIA"{
	set_victory_theme(sound_get("music_win_street"));
//	set_victory_bg(sprite_get("winscreenYap"));
}

init_shader();