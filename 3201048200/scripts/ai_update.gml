


if (object_index != oTestPlayer && ai_recovering && parachute_active) {
    
    var below_stage = (temp_level < 4 || (y > get_stage_data(SD_Y_POS)));
    
    if (below_stage && x < get_stage_data(SD_X_POS)-(get_stage_data(SD_WIDTH)/2)) {
        right_down = true;
        jump_pressed = true;
    }
    if (below_stage && x > get_stage_data(SD_X_POS)+(get_stage_data(SD_WIDTH)/2)) {
        left_down = true;
        jump_pressed = true;
    }
}

if ((state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL) && get_gameplay_time()%10 == 0) {
    var drone_dir = DIR_NONE;
    var _x = 0;
    with (obj_article1) if (player_id == other && state == 1) {
        if (other.temp_level > 7 && y > other.y && x == clamp(x, other.x-25, other.x+25)) {
            drone_dir = DIR_DOWN;
        }
        else if (other.temp_level > 2 && x == clamp(x, other.x, other.x+270) && y == clamp(y, other.y-40, other.y+50)) {
            drone_dir = DIR_RIGHT;
            _x = x;
        }
        else if (other.temp_level > 2 && x == clamp(x, other.x-270, other.x) && y == clamp(y, other.y-40, other.y+50)) {
            drone_dir = DIR_LEFT;
            _x = x;
        }
    }
    
    if (free && drone_dir == DIR_DOWN && dspec_article_cooldown <= 0) {
        down_pressed = 1;
        left_pressed = 0;
        right_pressed = 0;
        special_pressed = 1;
    }
    
    else if (drone_dir == DIR_RIGHT || drone_dir == DIR_LEFT) {
        
        if (!free && temp_level > 7 && abs(x - _x) < 80 && dspec_article_cooldown <= 0) jump_pressed = true; // set up for drone mine
        else special_pressed = true;
        left_pressed = drone_dir == DIR_LEFT;
        right_pressed = drone_dir == DIR_RIGHT;
        
    }
    
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
    
    switch (attack) {
        
        case AT_NSPECIAL:
            if (state_timer == 1) {
                if (temp_level < 6) ai_throw_dir = 1 - random_func(player, 2, true);
                else {
                    if (ai_target.y < (y - 100)) ai_throw_dir = -1;
                    else if (ai_target.y > (y - 30)) ai_throw_dir = 1;
                    else ai_throw_dir = 0;
                    var override = random_func(player, 1, false)
                    if (override < 0.7-(0.04*temp_level)) ai_throw_dir = 0;
                }
            }
            
            if (ai_throw_dir == -1) {
                up_down = true;
            }
            if (ai_throw_dir == 1) {
                down_down = true;
            }

            break;
            
    }
    
}