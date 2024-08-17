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
#macro INP_UP 1 << 6
#macro INP_DOWN 1 << 7
#macro INP_LEFT_HARD 1 << 8
#macro INP_RIGHT_HARD 1 << 9
#macro INP_LEFT_STICK 1 << 21
#macro INP_RIGHT_STICK 1 << 22

//if (custom_clone) print(string(get_gameplay_time()) + " clone atk");

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
        //there's some weird strnge code I can't find that keeps flipping fstrong's direction to the right for no reason. therefore:
        
        if (is_strong_pressed(DIR_LEFT)) { dir_correct = -1; }// print(string(species_id) + "-- dir_correct = " + string(dir_correct) + " - left stick"); }
        else if (is_strong_pressed(DIR_RIGHT)) { dir_correct = 1;  }// print(string(species_id) + "-- dir_correct = " + string(dir_correct) + " - right stick"); }
        else if (is_strong_pressed(DIR_ANY) && right_down - left_down != 0) {
            dir_correct = right_down - left_down;
        }
        else {
            dir_correct = spr_dir;
        }
        
        if (has_been_buffed_by_helping_hand) attack = AT_FSTRONG_2;
        else if (custom_clone) attack = AT_FTHROW;
    break;
    
    case AT_USTRONG:
        if (has_been_buffed_by_helping_hand) attack = AT_USTRONG_2;
        else if (custom_clone) attack = AT_UTHROW;
    break;
    
    case AT_DSTRONG:
        if (has_been_buffed_by_helping_hand) attack = AT_DSTRONG_2;
        else if (custom_clone) attack = AT_DTHROW;
    break;
    
    
    case AT_NAIR:
        //correct to a different aerial if required
        
         if (custom_clone && !(master_player_id.special_held)) {
            //use the real intended attack if the player didn't intend for a nair
            //if (ai_inputs_raw & INP_LEFT = 0) attack = AT_UAIR;
            
            if (ai_inputs_raw & INP_UP != 0) attack = AT_UAIR;
            else if (ai_inputs_raw & INP_DOWN != 0) attack = AT_DAIR;
            else {
                var raw_input_front, raw_input_back;
                if (spr_dir == 1)   { raw_input_front = ai_inputs_raw & INP_RIGHT != 0; raw_input_back = ai_inputs_raw & INP_LEFT != 0;  }
                else                { raw_input_front = ai_inputs_raw & INP_LEFT != 0;  raw_input_back = ai_inputs_raw & INP_RIGHT != 0; }
                
                if (raw_input_front) attack = AT_FAIR;
                else if (raw_input_back) attack = AT_BAIR;
            }
        }
        
        if (species_id == 1) attack = get_minun_attack(attack);
    break;
    
    case AT_JAB:
        
        
        
        if (custom_clone && !(master_player_id.special_held)) {
            /*
            //check if this should be a dash attack instead
            if (artificial_dash > 0) {
                attack = AT_DATTACK;
                print("jab converted to dash")
                if (species_id == 1) attack = get_minun_attack(attack);
            }
            */
            
           //the partner should always use jab towards the teammate UNLESS the player is forcing a desync with the special button
            if (instance_exists(teammate_player_id) && prev_state != PS_ATTACK_GROUND) {
                var teammate_dir = sign(teammate_player_id.x - x);
                if (teammate_dir != 0) spr_dir = teammate_dir;
                else spr_dir = teammate_player_id.spr_dir;
            } 
        }
    break;
    
    case AT_DATTACK:
        //if (custom_clone) print(string(get_gameplay_time()) + "artificial dash: " + string(artificial_dash > 0));
        
        if (custom_clone && !(master_player_id.special_held) 
           && buffer_sync_state[buffer_counter] != PS_DASH && buffer_sync_state[buffer_counter] != PS_DASH_START
        
        //if (custom_clone && artificial_dash > 0 && !(master_player_id.special_held) && is_attack_pressed(DIR_ANY)    
        && ((ai_inputs & INP_RIGHT_HARD != 0) - (ai_inputs & INP_LEFT_HARD != 0) != 0) 
        && artificial_dash >= 0  
        ) {
            //use the real intended attack if the player didn't intend for a dash
            //print("switching attack")
            if (is_attack_pressed(DIR_UP)) attack = AT_UTILT;
            else if (is_attack_pressed(DIR_DOWN)) attack = AT_DTILT;
            else if (spr_dir == 1 && is_attack_pressed(DIR_RIGHT)) attack = AT_FTILT;
            else if (spr_dir == -1 && is_attack_pressed(DIR_LEFT)) attack = AT_FTILT;
            //else if (is_attack_pressed(DIR_RIGHT) || is_attack_pressed(DIR_LEFT)) { spr_dir *= -1; attack = AT_FTILT; }
            else if (right_down - left_down == 0 && up_down - down_down == 0 && attack_pressed) attack = AT_JAB;
            //else if (is_attack_pressed(DIR_NONE)) attack = AT_JAB;
        }
        
        if (species_id == 1) attack = get_minun_attack(attack);
        
    break;
    
    
    case AT_TAUNT:
        attack = AT_TAUNT_2;
    break;
    
    case AT_FTILT:
    case AT_UTILT:
    case AT_DTILT:
        if (custom_clone && !(master_player_id.special_held)) {
            //correct for dashing - in cases where the AI teammate decided not to dash when the player inputted one
            if (artificial_dash < 0) { //(buffer_sync_state[buffer_counter] == PS_DASH_START) {
            //if (instance_exists(teammate_player_id) && sync_next_predicted_state == PS_ATTACK_GROUND && (teammate_player_id.attack == AT_DATTACK || teammate_player_id.attack == AT_MINUN_DATTACK)) {
                attack = AT_DATTACK;
            }
            /*
            //correct for unintended tilts
            else if (attack == AT_FTILT 
             && (ai_inputs_raw & INP_RIGHT != 0) && (ai_inputs_raw & INP_LEFT != 0)
             && (ai_inputs_raw & INP_RIGHT_STICK != 0) && (ai_inputs_raw & INP_LEFT_STICK != 0)) {
                attack = AT_JAB;
            }
            */
        }
        
        //todo: make the tilt face the right way 
        
        
        
        
    //don't break
    
    default:
        if (species_id == 1) attack = get_minun_attack(attack);
    break;
}



#define get_minun_attack(atk_value)

switch (atk_value) {
    //case AT_JAB: return 0;
    case AT_FTILT: return 2;
    case AT_DTILT: return 3;
    case AT_UTILT: return 39;
    //case AT_FSTRONG: return 40;
    //case AT_DSTRONG: return 42;
    //case AT_USTRONG: return 43;
    case AT_DSTRONG: return AT_DTHROW;
    case AT_DATTACK: return 44;
    case AT_FAIR: return 45;
    case AT_BAIR: return 46;
    case AT_DAIR: return 47;
    case AT_UAIR: return 48;
    case AT_NAIR: return 49;
    default: return atk_value;
}


#define check_attack_input_forward
if (spr_dir = 1) return is_attack_pressed(DIR_RIGHT);
else return is_attack_pressed(DIR_LEFT);

#define check_attack_input_backward
if (spr_dir = -1) return is_attack_pressed(DIR_RIGHT);
else return is_attack_pressed(DIR_LEFT);

#define check_raw_input_forward
return ( (ai_inputs_raw & INP_RIGHT != 0) - (ai_inputs_raw & INP_LEFT != 0) == spr_dir );

#define check_raw_input_backward
return ( (ai_inputs_raw & INP_LEFT != 0) - (ai_inputs_raw & INP_RIGHT != 0) == spr_dir );