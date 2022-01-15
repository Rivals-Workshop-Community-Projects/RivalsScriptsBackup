//
//Training toggle
training_toggle = get_training_cpu_action() != CPU_FIGHT

if (training_toggle) {
    if (taunt_pressed && !hitpause && training_meter_inc <= 0) {
        training_meter_inc = 1;
    }
    if (training_meter_inc >= 1) {
        if (training_meter_inc == 1) {
            if (blackjack_cooling_timer > 0) {
                blackjack_cooling_timer = 0;
                blackjack_meter = 0
            }
            else {
                if (blackjack_meter < blackjack_meter_max) {
                    blackjack_meter += 3;
                    sound_play(asset_get("mfx_forward"));
                    if (blackjack_meter >= blackjack_meter_max) {
                        blackjack_meter = blackjack_meter_max
                        sound_play(sound_get("sfx_lucy_21"));
                    }
                }
            }
        }
        
        
        training_meter_inc ++;
        if (training_meter_inc >= 10) {
            training_meter_inc = 0;
        }
    }
}

//Reset spr_dir
if ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || attack != AT_USPECIAL) {
    if (spr_angle != 0) {
        spr_angle = 0;
        hurtboxID.image_angle = spr_angle;
        draw_y = 0;
    }
}

//Alts
if (eyes_same_shade()) {
    set_victory_portrait(sprite_get("portrait_alt"));
    set_victory_sidebar(sprite_get("result_small_alt"));
}
else {
    set_victory_portrait(get_char_info(player, INFO_PORTRAIT));
    set_victory_sidebar(get_char_info(player, INFO_SIDEBAR));
}

//Blackjack cooldown
if (blackjack_cooling_timer > 0) {
    blackjack_cooling_timer ++;
    
    if (blackjack_cooling_timer % blackjack_cooling_div == blackjack_cooling_div - 1) {
        blackjack_meter --;
        if (blackjack_meter <= 0) {
            blackjack_meter = 0;
            blackjack_cooling_timer = 0
            blackjack_meter_cooling = false;
        }
    } 
}

//Dash Taunt Cancelling
if (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_STOP || state == PS_DASH_TURN) {
    if (taunt_pressed) {
        set_attack(AT_TAUNT);
    }
}

#define eyes_same_shade()
var alt = get_player_color(player);
var eye_color = [get_color_profile_slot_r(alt, 6), get_color_profile_slot_g(alt, 6), get_color_profile_slot_b(alt, 6)]
var eyewhite_color = [get_color_profile_slot_r(alt, 7), get_color_profile_slot_g(alt, 7), get_color_profile_slot_b(alt, 7)]

return (eye_color[0] == eyewhite_color[0] 
    && eye_color[1] == eyewhite_color[1] 
    && eye_color[2] == eyewhite_color[2])
