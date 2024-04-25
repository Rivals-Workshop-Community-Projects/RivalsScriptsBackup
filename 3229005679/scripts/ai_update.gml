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
    
   //here

    if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
        switch (attack){

            case AT_JAB:
                //Charge Shots
                if ((window == 1 || window == 2) && combo_random <= combo_chance/4){
                    attack_down = true;
                }

                //Repeat Shots
                if (window == 4 && spr_dir == sign(ai_target.x - x) && abs(x - ai_target.x) <= 300 && combo_random <= combo_chance/2){
                    attack_pressed = true;
                    combo_random = random_func(0, 100, true);
                }
            break;

            case AT_FSPECIAL:
                combo_random = random_func(0, 100, true);
                if (window == 2 && has_hit_player && combo_random <= combo_chance/10){
                    jump_pressed = true;
                }
            break;

            case AT_USPECIAL_GROUND:
                if (combo_random <= combo_chance/2){
                    y -= 5;
                    set_attack(AT_USPECIAL);
                }
            break;

        }
    }


} else {
    //Recovery Code

    if (temp_level >= 5 && state == PS_AIR_DODGE && window == 2 && window_timer == 10 && move_cooldown[AT_FSPECIAL] == 0){
        set_attack(AT_FSPECIAL);
    }

    if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
        switch (attack){
        
            case AT_USPECIAL:
                if (window == 1 && sign(x - (room_width)/2) != 0){
                    spr_dir = sign(x - (room_width)/2);
                }
            break;

            case AT_FSPECIAL:
                if (window == 2){
                    jump_pressed = true;
                }

                if (window == 5){
                    set_attack(AT_USPECIAL);
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