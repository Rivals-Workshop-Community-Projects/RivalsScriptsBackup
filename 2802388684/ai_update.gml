//ai_update.gml

//recovery code here




//ai attack
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
    switch (attack) {
        case AT_FSPECIAL_2:
            //on hit, make the master player do something
            if (is_master_player) {
                if (has_hit) {
                    if (random_func(5, 2, true)) attack_pressed = true;
                    else jump_pressed = true;
                }
            }
            else {
                //clones don't drift during fspecial throw
                left_down = false;
                right_down = false;
            }
            
        break;
        
        case AT_JAB:
        case 2:
            //follow jab1 with jab2
            if (window < 4 && !hitpause && (has_hit || !is_master_player)) attack_pressed = true;
        break;
        
        case AT_NSPECIAL:
            if (window != 4 && window != 5 ) break;
            //charge nspecial by default
            special_down = true;
            if (instance_exists(naruto_last_hit_opponent)) {
                if (naruto_nspecial_charge >= c_naruto_nspecial_max_charge) {
                    //at full charge, roll
                    if (random_func(5, 3, true) == 1) shield_pressed = true;
                }
                //if opponent is near, consider firing or rolling
                if (point_distance(x + spr_dir * 50, y, naruto_last_hit_opponent.x, naruto_last_hit_opponent.y) < 75) {
                    special_down = false;
                    if (random_func(5, 3, true) >= 1 + (naruto_last_hit_opponent.y >= y)) shield_pressed = true;
                }
            }
        break;
        
    }
}

can_hit = array_create(20, 0);
can_hit[player] = 1;

if (is_master_player) exit;

temp_level = 9;

//AI can't dodge roll or use specials
shield_pressed = false;
special_pressed = false;

if (instance_exists(master_player_id.naruto_last_hit_opponent)) {
    ai_target = master_player_id.naruto_last_hit_opponent;
}

/*
if (instance_exists(ai_target)) {
    
    //only attack when behind the target.
    //if the clone isn't behind the target, go and run behind.
    var dir_to_target = sign(ai_target.x - x)
    if (dir_to_target == sign(ai_target.x - master_player_id.x) ) {
        if (!free && abs(ai_target.x - x) < abs(ai_target.x - master_player_id.x) - 48) {
            switch (dir_to_target) {
                case -1: left_down = true;  left_hard_pressed = true;  right_down = false; right_hard_pressed = false; break;
                case  1: left_down = false; left_hard_pressed = false; right_down = true;  right_hard_pressed = true;  break;
            }
            attack_pressed = false;
        }
        else {
            //disable jumps if on-stage.
        }
        
    }
    else if (spr_dir != dir_to_target) {
        //attack_pressed = false;
    }
}
*/


