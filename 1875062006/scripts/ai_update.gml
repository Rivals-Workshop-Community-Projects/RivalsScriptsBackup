//ai_update - called every frame for this character as a CPU

if (ai_recovering){
    if (uspecial_save == noone){
        // use Fair when Uspecial isn't set up
        if ((has_walljump || y < get_stage_data(SD_Y_POS) + 16) && y > get_stage_data(SD_Y_POS) - 32){
            up_down = false;
            attack_pressed = true;
        }
    }
}


if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
    //Shoot attack
    if (attack == AT_NSPECIAL){
        if (target_circle_size < 0.25){
            var shoot_chance = random_func(0, 11, true)
            if (shoot_chance == 1) special_pressed = true;
        }
        else if (target_circle_size < 0.50){
            var shoot_chance = random_func(0, 6, true)
            if (shoot_chance == 1) special_pressed = true;
        }
    }
    
    //Jab Combo
    if (attack == AT_JAB){
        if (window == 3){
            var combo_chance = random_func(0, 2, true)
            if (combo_chance == 1)
            {
                left = false;
                right = false;
                attack_pressed = true;
            }
        }
        if (window == 6){
            var combo_chance = random_func(1, 2, true)
            if (combo_chance == 1){
                left = false;
                right = false;
                attack_pressed = true;
            }
        }
    }
}

//Forced Attacks
if (state_cat != SC_GROUND_COMMITTED && state_cat != SC_AIR_COMMITTED){
    //Saving
    if (uspecial_save == noone and attack != AT_USPECIAL){
        var save_chance = random_func(2, ai_save_chance_max, true)
        if (save_chance = 1){
            set_attack(AT_USPECIAL);
            ai_save_chance_max = 100;
            
            window = 0;
            window_timer = 0;
        }
        else if (ai_save_chance_max > 30) ai_save_chance_max -= 1;
    }
    
    //Exploding the save
    if (uspecial_save != noone and attack != AT_DSPECIAL and !ai_recovering){
        var check_explosion = false;
        with(uspecial_save){
            if (distance_to_object(other.ai_target) < 60) check_explosion = true;
        }
        if (check_explosion){
            var explode_chance = (random_func(3,45,true)) ;
            if (explode_chance == 1){
                set_attack(AT_DSPECIAL);
    
                window = 0;
                window_timer = 0;            
            }
        }
    }
}