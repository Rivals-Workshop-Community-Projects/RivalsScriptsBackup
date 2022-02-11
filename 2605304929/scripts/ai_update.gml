//ai_update.gml – called every frame for a CPU version of the character. Used for special cases like recovery and complex special moves. Use ai_target to reference the player object the CPU is currently targeting. Use ai_recovering to check if the CPU is recovering or not. Use temp_level to reference the CPU’s difficulty level (1-9).

// Gameplan / Main States
// Neutral -> Approaching / Being Aproached
// Advantage -> Oppnonent DI In / DI Out / Has Mark 
// Disadvantage -> On stage / Recovering

/* Neutral Game plan
    - Daora should play aggresively at low percents and a tad more cautious at high percents
    - Daora's plan usually involves aerial approaches, so her neutral will incorportate jumping
    - Daora's ground game depends on if the opponent is approachign her or if she's approaching.
    Approaching
        - Specific distances will determine the use of Dspecial / Wave dash F-tilt / Dash attack.
        - Combo routes will open up based on what move she actually hits with.
        - If she gets parried often, CPU may need to account for timing mix up / start using jab checks.
        - Her current percent and mark status should also take into account if she is approaching.
        - She should aim to use stronger moves if the opponent is at high percent. Fair / Ustrong / Bair Chain.
    Being Approached
        - Daora should use closer range defensive moves that cover well on approach like Nspecial / Fstrong / Utilt / Dtilt
        - Daora should occasionally parry, with high prioirty going to projectile moves.
        
    Advantage Game Plan
    - Daora has specific combos that are DI reads.
    - Daora should not try to parry / recover while in advantage
    - Daora should have a simple conditioning system, where she will likely favor DI out when opponent is at low percents and DI in at higher percents.
    - Moves that start the combo will have preplanned routes afterwards. It will take into account opponent percentage. The AI will guess opponent DI but it will know opponent percentage.
    
    Combo Routes
        Jab -> If no mark and opponent start grounded: dtilt / If no mark and opponent started aerial: jab 3 / if opponent marked: Nspecial.
        Ftilt -> Low Percent DI in: Utilt / Low percent DI out: Dash attack. / High percent chase advantage.
        Utilt-> Low percent DI in: Uspecial / High percent DI in: Uair / Low percent DI out: Forward + Jump + Nair
        Dtilt -> Low percent DI in: Utilt / High percent DI In: Turn around Ustrong / Low percent DI out: Nspecial  / High Percent DI out: Forward + Jump + Nair
        Dash Attack -Low percent DI in: Utilt / High percent DI In: Turn around Ustrong / Low percent DI out: Nspecial / High Percent DI out: Reset Chase Neutral
        Fstrong -> Low Percent DI In: Uspecial / High percent DI In: Jump + Bair / Low Percent DI out: Nspecial / High Percent DI Out: Jump + Fspecial
        Ustrong -> Low Percent DI In: Turnaround Uspecial / Low Percent DI out: Djump + Fspecial
        Dstrong -> Low Percent DI in: Jump + Fspecial / Di out: Reset chasing neutral
        Nspecial unboosted ->  Low percent DI in: Uspecial / High percent DI in: ju mp + Air Nspecial / Low Percent DI out: wavedash + filt / high percent DI out: Reset chase neutral.
        Nspecial boosted -> DI in: Turnaround Fspecial / out: Dspecial
        Fspecial unboosted -> DI in: Fspecial / DI out: wavedash Ftilt or Dspecial
        Dspecial unboosted -> DI in Grounded (behind her): Bair / DI out Grounded (in front of her): Fair / Not Grounded: Approach + Dair
        Uspecial unboosted -> DI in: Fair or Nspecial (delayed) / Di out -> Fspecial 
        Boosted Grabs except Nspecial -> Reset Chase Neutral
        
    Disadvantage
        Recovering 
        - If very high, attempt to use Fspecial to recovery.
        - If far from stage but high enough, use Djump -> Dspecial to get closer
        - Normal Uspecial should suffice for aerial approaches. 
        On Ground
        - May need DI mix up code to prevent character from being predicctable.
*/
/*
if (get_training_cpu_action() == CPU_FIGHT) {
    // insert custom attack code here, since it should only execute
    // if the CPU Action is set to Fight
    
    
    // Mode Definition
    #macro AI_NEUTRAL 0
    #macro AI_NEUTRAL_APPROACH_GROUND 1
    #macro AI_NEUTRAL_APPROACH_AIR 2
    #macro AI_NEUTRAL_DEFENSE_GROUND 3
    #macro AI_NEUTRAL_DEFENSE_AIR 4
    #macro AI_ADVANTAGE 5
    #macro AI_DISADVANTAGE 6
    
    #macro AI_TARGET_DI_IN 0
    #macro AI_TARGET_DI_OUT 1
    
    // Dynamic Variables
    player_percent = get_player_damage(player);
    target_relative_x = ai_target.x - x; // Pos is to the right, Neg is to the left
    target_relative_y = ai_target.y - y; // Pos is below, Neg is above
    ai_facing_target = spr_dir * sign(target_relative_x);
    ai_above_target = sign(target_relative_y);
    target_relative_direction_y = sign(target_relative_y);
    if state_cat = SC_HITSTUN then ai_current_mode = AI_DISADVANTAGE;
    if ai_recovering = true then ai_current_mode = AI_DISADVANTAGE;
    
    //target_mark_status = ai_target.status_effect_water;
    //target_percentage = get_player_damage(ai_target); // percent
    
    //print(ai_neutral_route_selection);
    switch(ai_current_mode){
        case AI_NEUTRAL:
            ai_sequence = 1;
            if(ai_attack_cooldown == 0){
                if(abs(target_relative_x) > 100 && ai_target.free == 0 && state_cat == SC_GROUND_NEUTRAL){ai_current_mode = AI_NEUTRAL_APPROACH_GROUND;ai_neutral_route_selection = 0;ai_current_mode_timer = 0;}
            }
            else ai_attack_cooldown--;
            break;

        case AI_NEUTRAL_APPROACH_GROUND:
        // Selection Criteria
            if(ai_neutral_route_selection == 0){
                Turn_Toward_Target();
                if(move_cooldown[AT_FSPECIAL] == 0 && abs(target_relative_x) >= 150 && abs(target_relative_x) < 200) then ai_neutral_route_selection = 1;
                if(move_cooldown[AT_DSPECIAL] == 0 && abs(target_relative_x) >= 200 && abs(target_relative_x) < 225) then ai_neutral_route_selection = 2;
                if(move_cooldown[AT_DSPECIAL] == 0 && abs(target_relative_x) >= 100 && abs(target_relative_x) < 125) then ai_neutral_route_selection = 3;
            }
            // Execute route sequence
            else Neutral_Approach_Ground_Route(ai_neutral_route_selection);
            // Player hit detection for advantage
            if(has_hit_player == true && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
                attack_that_hit = attack;
                ai_current_mode = AI_ADVANTAGE;
                ai_current_mode_timer = 0;
            }
            //Set to neutral to prevent soft locks in advantage.
            if(ai_current_mode_timer > 180){ai_current_mode = AI_NEUTRAL; ai_current_mode_timer = 0;}
            break;

        case AI_NEUTRAL_APPROACH_AIR:
            break;
            
        case AI_NEUTRAL_DEFENSE_GROUND:
            break;
            
        case AI_NEUTRAL_DEFENSE_AIR:
            break;
            
        case AI_ADVANTAGE:
        // Connditions Check
        di_direction = random_func(1,2,true);
        print(di_direction);
        Follow_Up_Attack(attack_that_hit,di_direction);
        if(ai_target.state_cat != SC_HITSTUN){ai_current_mode = AI_NEUTRAL; ai_current_mode_timer = 0;}
            break;
            
        case AI_DISADVANTAGE:
        if(state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL){ai_current_mode = AI_NEUTRAL;}
            break;
    }
    ai_current_mode_timer++;
}
*/
#define Hold_Toward_Target()
{   
    target_relative_direction_x = sign(target_relative_x);
    if target_relative_direction_x == 1 then right_down = true; else left_down = true;
}

#define Turn_Toward_Target()
{   
    target_relative_direction_x = sign(target_relative_x);
    if target_relative_direction_x == 1 then right_pressed = true; else left_pressed = true;
}

#define Clear_All_Button_Buffer()
{
    /* From Manual
        Clears the input buffer for the specified action.

    Argument	Type	Description
    input_index	:real	The input buffer to clear
     Indexes Reference
    
    PC_LEFT_HARD_PRESSED
    PC_RIGHT_HARD_PRESSED
    PC_UP_HARD_PRESSED
    PC_DOWN_HARD_PRESSED
    PC_LEFT_STRONG_PRESSED
    PC_RIGHT_STRONG_PRESSED
    PC_UP_STRONG_PRESSED
    PC_DOWN_STRONG_PRESSED
    PC_LEFT_STICK_PRESSED
    PC_RIGHT_STICK_PRESSED
    PC_UP_STICK_PRESSED
    PC_DOWN_STICK_PRESSED
    PC_JUMP_PRESSED
    PC_ATTACK_PRESSED
    PC_SHIELD_PRESSED
    PC_SPECIAL_PRESSED
    PC_STRONG_PRESSED
    PC_TAUNT_PRESSED
    Example, called from atack_update.gml:
    
    // allows the attack to cancel immediately into the aerial idle state using the shield button without buffering an airdodge:
    if (window == 2 && shield_pressed) {
    set_state( PS_IDLE_AIR );
    clear_button_buffer( PC_SHIELD_PRESSED );
    }
    */
    
    clear_button_buffer(PC_LEFT_HARD_PRESSED);
    clear_button_buffer(PC_RIGHT_HARD_PRESSED);
    clear_button_buffer(PC_UP_HARD_PRESSED);
    clear_button_buffer(PC_DOWN_HARD_PRESSED);
    clear_button_buffer(PC_LEFT_STRONG_PRESSED);
    clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
    clear_button_buffer(PC_UP_STRONG_PRESSED);
    clear_button_buffer(PC_DOWN_STRONG_PRESSED);
    clear_button_buffer(PC_LEFT_STICK_PRESSED);
    clear_button_buffer(PC_RIGHT_STICK_PRESSED);
    clear_button_buffer(PC_UP_STICK_PRESSED);
    clear_button_buffer(PC_DOWN_STICK_PRESSED);
    clear_button_buffer(PC_JUMP_PRESSED);
    clear_button_buffer(PC_ATTACK_PRESSED);
    clear_button_buffer(PC_SHIELD_PRESSED);
    clear_button_buffer(PC_SPECIAL_PRESSED);
    clear_button_buffer(PC_STRONG_PRESSED);
    clear_button_buffer(PC_TAUNT_PRESSED);
    
}

#define Neutral_Approach_Ground_Route(route)
{
    switch(route){
        case 1: // Jump into Fspecial
            switch(ai_sequence){
                case 1: // Jump Input
                    jump_pressed = true;
                    jump_down = true;
                    ai_sequence++;
                    break;
                case 2: // Neutral After Jump
                    Hold_Toward_Target();
                    jump_down = true;
                     if (ai_sequence_timer > 10){ai_sequence++; ai_sequence_timer = 0;}
                     ai_sequence_timer++;
                     break;
                case 3: // Input Fspecial
                    Use_Attack(AT_FSPECIAL);
                    if(ai_sequence_timer > 1){ ai_sequence++; ai_sequence_timer = 0;}
                    ai_sequence_timer++;
                    break;
                case 4: // Fspecial Use
                    Hold_Toward_Target();
                    if(window == get_attack_value(AT_FSPECIAL,AG_NUM_WINDOWS)) then ai_sequence++;
                    break;
                case 5: // Reset to Neutral
                    ai_current_mode = AI_NEUTRAL;
                    ai_attack_cooldown = 20;
                    ai_neutral_route_selection = 0;
                    break;
            }
            break;
        case 2: // Dspecial on ground
            switch(ai_sequence){
                case 1: // Dspecial Input
                    Use_Attack(AT_DSPECIAL);
                    if (ai_sequence_timer > 1){ai_sequence++; ai_sequence_timer = 0;}
                    ai_sequence_timer++;
                    break;
                case 2: // Dspecial active
                    if(window == get_attack_value(AT_DSPECIAL,AG_NUM_WINDOWS)) then ai_sequence++;
                    break;
                case 3: // Reset to Neutral
                    ai_current_mode = AI_NEUTRAL;
                    ai_attack_cooldown = 20;
                    ai_neutral_route_selection = 0;
                    break;
            }
            break;
        case 3: //Wavedash + Ftilt
            switch(ai_sequence){
                case 1:// Wavedash Jump Input
                    jump_pressed = true;
                    jump_down = true;
                    if(state != PS_JUMPSQUAT){ai_sequence++}
                case 2: // Wait Input
                    Hold_Toward_Target();
                    shield_pressed = true;
                    shield_down = true;
                    if(state == PS_WAVELAND){ai_sequence++}
                    break;
                case 3: // Wavedash
                    Hold_Toward_Target();
                    if(state != PS_WAVELAND){ai_sequence++}
                    break;
                case 4: // Input Ftilt
                    Hold_Toward_Target();
                    Use_Attack(AT_FTILT);
                    if (ai_sequence_timer > 7){ai_sequence++; ai_sequence_timer = 0;}
                    ai_sequence_timer++;
                    break;
                case 5: // Filt Active
                    if (ai_sequence_timer > 10){ai_sequence++; ai_sequence_timer = 0;}
                    ai_sequence_timer++;
                    break;
                case 6: // Reset to Neutral
                    ai_current_mode = AI_NEUTRAL;
                    ai_attack_cooldown = 20;
                    ai_neutral_route_selection = 0;
                    break;
            }
            break;
        default:
            break;
    }
}
#define Advantage_Route(route)
{
    /* From the plan
       Combo Routes
        Jab -> If no mark and opponent start grounded: dtilt / If no mark and opponent started aerial: jab 3 / if opponent marked: Nspecial.
        Ftilt -> Low Percent DI in: Utilt / Low percent DI out: Dash attack. / High percent chase advantage.
        Utilt-> Low percent DI in: Uspecial / High percent DI in: Uair / Low percent DI out: Forward + Jump + Nair
        Dtilt -> Low percent DI in: Utilt / High percent DI In: Turn around Ustrong / Low percent DI out: Nspecial  / High Percent DI out: Forward + Jump + Nair
        Dash Attack -Low percent DI in: Utilt / High percent DI In: Turn around Ustrong / Low percent DI out: Nspecial / High Percent DI out: Reset Chase Neutral
        Fstrong -> Low Percent DI In: Uspecial / High percent DI In: Jump + Bair / Low Percent DI out: Nspecial / High Percent DI Out: Jump + Fspecial
        Ustrong -> Low Percent DI In: Turnaround Uspecial / Low Percent DI out: Djump + Fspecial
        Dstrong -> Low Percent DI in: Jump + Fspecial / Di out: Reset chasing neutral
        Nspecial unboosted ->  Low percent DI in: Uspecial / High percent DI in: ju mp + Air Nspecial / Low Percent DI out: wavedash + filt / high percent DI out: Reset chase neutral.
        Nspecial boosted -> DI in: Turnaround Fspecial / out: Dspecial
        Fspecial unboosted -> DI in: Fspecial / DI out: wavedash Ftilt or Dspecial
        Dspecial unboosted -> DI in Grounded (behind her): Bair / DI out Grounded (in front of her): Fair / Not Grounded: Approach + Dair
        Uspecial unboosted -> DI in: Fair or Nspecial (delayed) / Di out -> Fspecial 
        Boosted Grabs except Nspecial -> Reset Chase Neutral
        */
    
    
    
}

#define Use_Attack(attack)
{
    /* From Manual
    //Use these names when checking a character’s input variables. For example, special_pressed will check if the special button was pressed within the last 6 frames while down_down will check if the joystick is currently held downward.

    Note: There is no strong_pressed. Use [direction]_strong_pressed instead.
    
    attack
    special
    jump
    shield
    strong
    taunt
    up
    down
    left
    right
    [direction]_strong
    [direction]_stick


*/
print(attack)
    //Clear_All_Button_Buffer();
    switch(attack){
        case AT_JAB:
            joy_idle = true;
            attack_pressed = true;
            break;
        case AT_FTILT:
            Turn_Toward_Target();
            attack_pressed = true;
            break;
        case AT_UTILT:
            up_pressed = true;
            attack_pressed = true;
            break;
        case AT_DTILT:
            down_pressed = true;
            attack_pressed = true;
            break;
        case AT_DATTACK:
            target_relative_direction_x = sign(target_relative_x);
            if target_relative_direction_x == 1 then right_pressed = true; else left_pressed = true;
            attack_pressed = true;
            break;
        case AT_FSTRONG:
            target_relative_direction_x = sign(target_relative_x);
            if target_relative_direction_x == 1 then right_strong_pressed = true; else left_strong_pressed = true;
            break;
        case AT_USTRONG:
            up_strong_pressed = true;
            break;
        case AT_DSTRONG:
            down_strong_pressed = true;
            break;
        case AT_NSPECIAL:
            joy_idle = true;
            special_pressed = true;
            break;
        case AT_FSPECIAL:
            Hold_Toward_Target();
            special_pressed = true;
            print("using fspecial");
            break;
        case AT_USPECIAL:
            up_pressed = true;
            special_pressed = true;
            break;
        case AT_DSPECIAL:
            down_pressed = true;
            special_pressed = true;
            break;
        default:
            break;
    }
}

#define Follow_Up_Attack(attack_that_hit,di_direction)
{
    /* From the plan
   Combo Routes
    Jab -> If no mark and opponent start grounded: dtilt / If no mark and opponent started aerial: jab 3 / if opponent marked: Nspecial.
    Ftilt -> Low Percent DI in: Utilt / Low percent DI out: Dash attack. / High percent chase advantage.
    Utilt-> Low percent DI in: Uspecial / High percent DI in: Uair / Low percent DI out: Forward + Jump + Nair
    Dtilt -> Low percent DI in: Utilt / High percent DI In: Turn around Ustrong / Low percent DI out: Nspecial  / High Percent DI out: Forward + Jump + Nair
    Dash Attack -Low percent DI in: Utilt / High percent DI In: Turn around Ustrong / Low percent DI out: Nspecial / High Percent DI out: Reset Chase Neutral
    Fstrong -> Low Percent DI In: Uspecial / High percent DI In: Jump + Bair / Low Percent DI out: Nspecial / High Percent DI Out: Jump + Fspecial
    Ustrong -> Low Percent DI In: Turnaround Uspecial / Low Percent DI out: Djump + Fspecial
    Dstrong -> Low Percent DI in: Jump + Fspecial / Di out: Reset chasing neutral
    Nspecial unboosted ->  Low percent DI in: Uspecial / High percent DI in: ju mp + Air Nspecial / Low Percent DI out: wavedash + filt / high percent DI out: Reset chase neutral.
    Nspecial boosted -> DI in: Turnaround Fspecial / out: Dspecial
    Fspecial unboosted -> DI in: Uspecial / DI out: wavedash Ftilt or Dspecial
    Dspecial unboosted -> DI in Grounded (behind her): Bair / DI out Grounded (in front of her): Fair / Not Grounded: Approach + Dair
    Uspecial unboosted -> DI in: Fair  or Nspecial (delayed) / Di out -> Fspecial 
    Boosted Grabs except Nspecial -> Reset Chase Neutral
    
    Vaiables to use
    target_percentage
    ai_target.free
    */   
    // DI directions 
    switch(attack_that_hit){
        /*
        case AT_JAB:
            if(target_mark_status == false && ai_target.free == false){Use_Attack(AT_JAB);} //Jab 1 if on the ground, affected by force flinch. No mark
            if(di_direction = AI_TARGET_DI_OUT && target_mark_status == false && ai_target.free == true){Use_Attack(AT_DTILT);} // Dtilt if opponent is aerial and likely to DI away
            if(di_direction = AI_TARGET_DI_IN && target_mark_status == false && ai_target.free == true){Use_Attack(AT_JAB);} // Jab if opponent is aerial and likely to DI in, continue jabbing
            if(target_mark_status == true){Use_Attack(AT_NSPECIAL);} //Attempt to Nspecial a marked opponent always
            print("jab");
            break;
            */
        case AT_FTHROW:
            if(di_direction == AI_TARGET_DI_IN){Use_Attack(AT_USPECIAL);} //Jab 1 if on the ground, affected by force flinch. No mark
            if(di_direction == AI_TARGET_DI_OUT){Use_Attack(AT_DSPECIAL);} //Jab 1 if on the ground, affected by force flinch. No mark
            print("fthrow");
            break;
    }
}


