//Grab stuff
if (cargo_grab){
    if (special_pressed || attack_pressed || right_strong_pressed
    || left_strong_pressed || up_strong_pressed || down_strong_pressed
    || is_special_pressed(DIR_DOWN) || is_special_pressed(DIR_RIGHT) 
    || is_special_pressed(DIR_LEFT) || is_special_pressed(DIR_UP)
    || is_attack_pressed(DIR_DOWN) || is_attack_pressed(DIR_RIGHT) 
    || is_attack_pressed(DIR_LEFT) || is_attack_pressed(DIR_UP)){
        attack = AT_NSPECIAL_2;
        
        if (right_strong_pressed || is_special_pressed(DIR_RIGHT) || is_attack_pressed(DIR_RIGHT)){
            spr_dir = 1;
        }
        if (left_strong_pressed || is_special_pressed(DIR_LEFT) || is_attack_pressed(DIR_LEFT)){
            spr_dir = -1;
        }
        
        if (up_strong_pressed || up_down || is_special_pressed(DIR_UP) || is_attack_pressed(DIR_UP)){
            cargo_up = true;
        }
        
        window = 1;
        window_timer = 0; 
    }
}
