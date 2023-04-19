

if (introTimer2 < 5) {
	introTimer2++;
} else {
	introTimer2 = 0;
	introTimer++;
}

if (introTimer < 8) {
	draw_indicator = false;
} else {
	draw_indicator = true;
}

if (introTimer2 == 0 && introTimer == 1) {
    sound_play(sfx_welcome);
}

if (introTimer2 == 0 && introTimer == 10) {
    sound_play (asset_get("sfx_bird_downspecial_end"));
}

if(get_gameplay_time() <= 120){
	if(taunt_pressed && !rem){
		rem = true;
		sound_play(sfx_alleyoop);
	}
}


if (state == PS_WAVELAND && state_timer == 1 && !hitstop && !hitpause){
    
    rmb_sound(sfx_take);
}

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
    can_drop_item = false;
}
//if (get_gameplay_time() == 10) {
//    sound_play(sfx_welcome);
//}

//if (items_held[0] == false) {
//    move_cooldown[AT_DTILT] = 18;
//    move_cooldown[AT_DAIR] = 18;
//    move_cooldown[AT_DSTRONG] = 18;
//}
//if (items_held[1] == false) {
//    move_cooldown[AT_UTILT] = 18;
//    move_cooldown[AT_UAIR] = 18;
//    move_cooldown[AT_USTRONG] = 18;
//}
//if (items_held[2] == false) {
//    move_cooldown[AT_FTILT] = 18;
//    move_cooldown[AT_FSTRONG] = 18;
//    move_cooldown[AT_FAIR] = 18;
//    move_cooldown[AT_BAIR] = 18;
//}
//if (items_held[3] == false) {
//    move_cooldown[AT_JAB] = 18;
//    move_cooldown[AT_DATTACK] = 18;
//    move_cooldown[AT_NAIR] = 18;
//}

if (move_cooldown[AT_FSPECIAL_2] == 0 && hitstop) {
    with oPlayer {
        if (last_player_hit_me == other.player && activated_kill_effect) {
            with other {
                move_cooldown[AT_FSPECIAL_2] = therapist_timer;
            }
        }
    }
}

if (state == PS_ATTACK_GROUND && attack == AT_TAUNT_2 && window == 2) {
    shader_start();
    set_character_color_slot(0, color_get_red(green_color), color_get_green(green_color), color_get_blue(green_color));
    set_character_color_slot(1, color_get_red(green_dark), color_get_green(green_dark), color_get_blue(green_dark));
    shader_end();
}


#define rmb_sound(sound)
if (voices > 0 && !hitstop && !hitpause) sound_play(sound);