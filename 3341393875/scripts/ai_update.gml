if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
    combo_random = random_func(0, 100, true);
    //print("Dice is: " + string(combo_random));
}
combo_chance = ((temp_level*10) + 10);
if (temp_level >= 8){
    ai_attack_time *= 0.5;
}


//Fight Code
if (!ai_recovering && get_training_cpu_action() == CPU_FIGHT){
    if (ai_going_into_attack && truly_ready() && combo_random <= combo_chance){
        if (ai_target.x-x >= 0){
            spr_dir = 1;
        } else {
            spr_dir = -1;
        }
    }

    if (state == PS_JUMPSQUAT && state_timer == jump_start_time-1 && !free && combo_attack == AT_FSPECIAL_2 && combo_random <= combo_chance){
        set_state(PS_WAVELAND);
        combo_attack = noone;
    }

    if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){

        if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG || attack == AT_FSTRONG_2 || attack == AT_USTRONG_2 || attack == AT_DSTRONG_2){
            
            if (temp_level >= 5 && window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1
            && random_func(0, 100, true) < (85 + strong_charge) && (ai_target.state != PS_ATTACK_GROUND && ai_target.state != PS_ATTACK_AIR)
            && abs(ai_target.x - x) < 200){
                strong_down = true;
            } else {
                strong_down = false;
            }
        }

        if stance == ("pizzaface") {
            switch (attack){

                case AT_JAB:
                    //Chance to cancel into tilts
                    if (has_hit_player && combo_random <= round(combo_chance/5)){
            
                        if (abs(ai_target.x - x) <= 75){
                            print("UP");
                            right_down = false;
                            down_down = false;
                            up_down = true;
                            attack_pressed = true;
                        } else {
                            if (combo_random % 2 == 0){
                                print("FORWARD");
                                //spr_dir = sign(ai_target.x - x);
                                //left_down = true;
                                right_down = true;
                                down_down = false;
                                attack_pressed = true;
                            } else {
                                print("DOWN");
                                down_down = true;
                                right_down = false;
                                attack_pressed = true;
                            }
                        }
                    }

                    if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME)-1 && combo_random <= round(combo_chance)){
                        attack_pressed = true;
                    }
                    if (window == 6 && window_timer == get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME)-1 && combo_random <= round(combo_chance)){
                        attack_pressed = true;
                    }
                break;

            }
        } else {
            switch (attack){

                case AT_EXTRA_1:
                //Chance to cancel into tilts
                    if (has_hit_player){

                        if (combo_random <= round(combo_chance/2)){
                            if (abs(ai_target.x - x) <= 75){
                                print("UP");
                                up_down = true;
                                attack_pressed = true;
                            } else {
                                if (combo_random % 2 == 0){
                                    print("FORWARD");
                                    //spr_dir = sign(ai_target.x - x);
                                    //left_down = true;
                                    right_down = true;
                                    down_down = false;
                                    attack_pressed = true;
                                } else {
                                    print("DOWN");
                                    down_down = true;
                                    right_down = false;
                                    attack_pressed = true;
                                }
                            }
                        } else {
                            attack_pressed = true;
                            right_down = false;
                            up_down = false;
                            down_down = false;
                        }
                        
                    }
                break;

                case AT_NSPECIAL_2:
                    if (temp_level >= 5 && window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1
                    && random_func(0, 100, true) < 73 + (temp_level*3) && abs(ai_target.x - x) > (28 * (floor(nspecial2_charge/10) + 6)) ){
                        special_down = true;
                    } else {
                        special_down = false;
                    }
                break;

                case AT_DSPECIAL_2:
                    if (window == 1 && b_reversed == false){
                        if (ai_target.x-x >= 0){
                            spr_dir = -1;
                            b_reversed = true;
                        } else {
                            spr_dir = 1;
                            b_reversed = true;
                        }
                    }
                break;

                case AT_FSPECIAL_2:
                    if (random_func(0, 100, true) < (temp_level) && !hitpause){
                        jump_pressed = true;
                        combo_attack = AT_FSPECIAL_2;
                    }
                break;

            }
        }
    }


} else {
    //Recovery Code

    if (temp_level >= 5 && state == PS_AIR_DODGE && window == 2 && window_timer == 10 && move_cooldown[AT_FSPECIAL] == 0){
        set_attack(AT_FSPECIAL);
    }

    if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
        switch (attack){
        
            case AT_USPECIAL_2:
            joy_pad_idle = false;
                if (x < round(room_width/2)){
                    joy_dir = 45;
                } else {
                    joy_dir = 135;
                }
            break;

        }
    }

}

#define truly_ready(){
    if (ready_to_attack == true && state_cat != SC_GROUND_COMMITTED && state_cat != SC_AIR_COMMITTED && state != PS_HITSTUN){
        return true;
    } else {
        return false;
    }
    
}