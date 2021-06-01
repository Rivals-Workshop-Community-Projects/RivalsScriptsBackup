//set_attack.gml
if (is_master_player || move_cooldown[attack] > 0) exit;

#macro AT_MINUN_JAB 0
#macro AT_MINUN_FTILT 2
#macro AT_MINUN_DTILT 3
#macro AT_MINUN_UTILT 39
#macro AT_MINUN_FSTRONG 40
#macro AT_MINUN_DSTRONG 42
#macro AT_MINUN_USTRONG 43
#macro AT_MINUN_DATTACK 44
#macro AT_MINUN_FAIR 45
#macro AT_MINUN_BAIR 46
#macro AT_MINUN_DAIR 47
#macro AT_MINUN_UAIR 48
#macro AT_MINUN_NAIR 49

#macro INP_LEFT 1 << 4
#macro INP_RIGHT 1 << 5
#macro INP_LEFT_HARD 1 << 8
#macro INP_RIGHT_HARD 1 << 9
#macro INP_LEFT_STICK 1 << 21
#macro INP_RIGHT_STICK 1 << 22

switch (attack) {
    
    case AT_FSPECIAL:
        if (species_id == 1) attack = AT_FSPECIAL_2;
        //clear_button_buffer(PC_SPECIAL_PRESSED);
    break;
    
    case AT_USPECIAL:
        if (species_id == 1) attack = AT_USPECIAL_2;
        clear_button_buffer(PC_SPECIAL_PRESSED);
    break;
    
    case AT_FSTRONG:
        //there's some weird code I can't find that keeps flipping fstrong's direction to the right. therefore:
        if (left_down - right_down == 0 && is_strong_pressed(DIR_LEFT) - is_strong_pressed(DIR_RIGHT) == 0) dir_correct = spr_dir;
        else dir_correct = 0;
        /*
        print("fstrong_any: " + string(is_strong_pressed(DIR_ANY)))
        var fstrong_dir = (is_strong_pressed(DIR_RIGHT) - is_strong_pressed(DIR_LEFT));
        print("fstrong_dir: " + string(fstrong_dir))
        print("spr_dir: " + string(spr_dir));
        if (fstrong_dir != 0) spr_dir = fstrong_dir;
        */
        if (has_been_buffed_by_helping_hand) attack = AT_FSTRONG_2;
        else if (species_id == 1) attack = get_minun_attack(attack);
    break;
    
    case AT_USTRONG:
        if (has_been_buffed_by_helping_hand) attack = AT_USTRONG_2;
        else if (species_id == 1) attack = get_minun_attack(attack);
    break;
    
    case AT_DSTRONG:
        if (has_been_buffed_by_helping_hand) attack = AT_DSTRONG_2;
        else if (species_id == 1) attack = get_minun_attack(attack);
    break;
    
    case AT_NAIR:
        //correct to a different aerial if required
        /*
         if (custom_clone && !(master_player_id.special_held)) {
            //use the real intended attack if the player didn't intend for a nair
            if (ai_prev_inputs_raw & INP_LEFT |= 0) attack = AT_UAIR;
            else if (down_down) attack = AT_DAIR;
            else {
                var dir_front, dir_back;
                if (spr_dir == 1)   { dir_front = right_down; dir_back = left_down;  }
                else                { dir_front = left_down;  dir_back = right_down; }
                
                if (dir_front) attack = AT_FAIR;
                else if (dir_back) attack = AT_BAIR;
            }
        }
        
        if (custom_clone && !(master_player_id.special_held) && (is_attack_pressed(DIR_ANY) || is_strong_pressed(DIR_ANY))) {
            print(" DIR_LEFT " + string(is_attack_pressed(DIR_LEFT) || is_strong_pressed(DIR_LEFT)) 
            + " DIR_UP " + string(is_attack_pressed(DIR_UP) || is_strong_pressed(DIR_UP)) 
            + " DIR_RIGHT " + string(is_attack_pressed(DIR_RIGHT) || is_strong_pressed(DIR_RIGHT)) 
            + " DIR_DOWN " + string(is_attack_pressed(DIR_DOWN) || is_strong_pressed(DIR_DOWN)) )
            //use the real intended attack if the player didn't intend for a nair
            if (is_attack_pressed(DIR_UP) || is_strong_pressed(DIR_UP)) attack = AT_UAIR;
            else if (is_attack_pressed(DIR_DOWN) || is_strong_pressed(DIR_DOWN)) attack = AT_DAIR;
            else {
                var dir_front, dir_back;
                if (spr_dir == 1)   { dir_front = DIR_RIGHT; dir_back = DIR_LEFT;  }
                else                { dir_front = DIR_LEFT;  dir_back = DIR_RIGHT; }
                
                if (is_attack_pressed(dir_front) || is_strong_pressed(dir_front)) attack = AT_FAIR;
                else if (is_attack_pressed(dir_back) || is_strong_pressed(dir_back)) attack = AT_BAIR;
            }
        }
        */
        
        
        if (species_id == 1) attack = get_minun_attack(attack);
    break;
    
    case AT_JAB:
        //swap the attack if minun is using it
        //if (species_id == 1) attack = get_minun_attack(attack);
        
        //the partner should always use this move towards the teammate UNLESS the player is forcing a desync with the special button
        if (custom_clone && instance_exists(teammate_player_id) && prev_state != PS_ATTACK_GROUND && !master_player_id.special_held) {
            var teammate_dir = sign(teammate_player_id.x - x);
            if (teammate_dir != 0) spr_dir = teammate_dir;
            else spr_dir = teammate_player_id.spr_dir;
        }
    break;
    
    case AT_DATTACK:
        if (custom_clone && artificial_dash && !(master_player_id.special_held) && is_attack_pressed(DIR_ANY)
        && ((ai_inputs & INP_RIGHT_HARD != 0) - (ai_inputs & INP_LEFT_HARD != 0) != 0) ) {
            //use the real intended attack if the player didn't intend for a dash
            if (is_attack_pressed(DIR_UP)) attack = AT_UTILT;
            else if (is_attack_pressed(DIR_DOWN)) attack = AT_DTILT;
            else if (spr_dir == 1 && is_attack_pressed(DIR_RIGHT)) attack = AT_FTILT;
            else if (spr_dir == -1 && is_attack_pressed(DIR_LEFT)) attack = AT_FTILT;
            else if (is_attack_pressed(DIR_RIGHT) || is_attack_pressed(DIR_LEFT)) { spr_dir *= -1; attack = AT_FTILT; }
            else attack = AT_JAB;
        }
        
        /*
        if (custom_clone && instance_exists(teammate_player_id)) {
            //print("dattack predicted state: " + get_state_name(sync_next_predicted_state))
            if (sync_next_predicted_state == PS_DASH_STOP && (teammate_player_id.attack != AT_DATTACK && teammate_player_id.attack != AT_MINUN_DATTACK)) {
                switch (teammate_player_id.attack) {
                    case AT_JAB:
                    case AT_MINUN_JAB:
                        attack = AT_JAB; break;
                    case AT_FTILT:
                    case AT_MINUN_FTILT:
                        hsp = clamp(hsp, -walk_speed, walk_speed); attack = AT_FTILT; break;
                    case AT_DTILT:
                    case AT_MINUN_DTILT:
                        hsp = clamp(hsp, -walk_speed, walk_speed); attack = AT_DTILT; break;
                    case AT_UTILT:
                    case AT_MINUN_UTILT:
                        hsp = clamp(hsp, -walk_speed, walk_speed); attack = AT_UTILT; break;
                    //shouldn't be possible to use any other attack in this clause, leave in the default dash attack
                }
                //attack = teammate_player_id;
            }
        }
        */
        if (species_id == 1) attack = get_minun_attack(attack);
        
    break;
    
    
    case AT_TAUNT:
        attack = AT_TAUNT_2;
    break;
    
    case AT_FTILT:
    case AT_UTILT:
    case AT_DTILT:
    //case AT_DATTACK:
        if (custom_clone && !(master_player_id.special_held)) {
            //correct for dashing
            if (instance_exists(teammate_player_id) && sync_next_predicted_state == PS_ATTACK_GROUND && (teammate_player_id.attack == AT_DATTACK || teammate_player_id.attack == AT_MINUN_DATTACK)) {
                attack = AT_DATTACK;
            }
            //correct for unintended tilts
            else if (attack == AT_FTILT 
             && (ai_inputs_raw & INP_RIGHT != 0) && (ai_inputs_raw & INP_LEFT != 0)
             && (ai_inputs_raw & INP_RIGHT_STICK != 0) && (ai_inputs_raw & INP_LEFT_STICK != 0)) {
                attack = AT_JAB;
            }
        }
        
        //todo: make the tilt face the right way 
        
        
        
        
    //don't break
    
    default:
        if (species_id == 1) attack = get_minun_attack(attack);
    break;
}



#define get_minun_attack(atk_value)

switch (atk_value) {
    case AT_JAB: return 0;
    case AT_FTILT: return 2;
    case AT_DTILT: return 3;
    case AT_UTILT: return 39;
    case AT_FSTRONG: return 40;
    case AT_DSTRONG: return 42;
    case AT_USTRONG: return 43;
    case AT_DATTACK: return 44;
    case AT_FAIR: return 45;
    case AT_BAIR: return 46;
    case AT_DAIR: return 47;
    case AT_UAIR: return 48;
    case AT_NAIR: return 49;
    default: return atk_value;
}