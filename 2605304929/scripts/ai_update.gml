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
// Mode Definition
#macro AI_NEUTRAL 0
#macro AI_NEUTRAL_APPROACH_GROUND 1
#macro AI_NEUTRAL_APPROACH_AIR 2
#macro AI_NEUTRAL_DEFENSE_GROUND 3
#macro AI_NEUTRAL_DEFENSE_AIR 4
#macro AI_ADVANTAGE 3
#macro AI_DISADVANTAGE 4

// Dynamic Variables
player_percent = get_player_damage(player);
target_relative_x = ai_target.x - x; // Pos is to the right, Neg is to the left
target_relative_y = ai_target.y - y; // Pos is below, Neg is above
ai_facing_target = spr_dir * sign(target_relative_x);
ai_above_target = sign(target_relative_y);
target_relative_direction_y = sign(target_relative_y);

//print(ai_target.free)

switch(ai_current_mode){
    case AI_NEUTRAL:
        if(abs(target_relative_x) > 100 && ai_target.free == 0 && state_cat == SC_GROUND_NEUTRAL){ai_current_mode = AI_NEUTRAL_APPROACH_GROUND;}
        break;
    case AI_NEUTRAL_APPROACH_GROUND:
        if(move_cooldown[AT_FSPECIAL] == 0){
            Neutral_Approach_Ground_Route(1);
        }
        else Neutral_Approach_Ground_Route(1);
        break;
    case AI_NEUTRAL_APPROACH_AIR:
        break;
    case AI_NEUTRAL_DEFENSE_GROUND:
        break;
    case AI_NEUTRAL_DEFENSE_AIR:
        break;
    case AI_ADVANTAGE:
        break;
    case AI_DISADVANTAGE:
        break;
}
*/
#define Hold_Toward_Target()
{   
    target_relative_direction_x = sign(target_relative_x);
    if target_relative_direction_x == 1 then right_down = true; else left_down = true;
}

#define Neutral_Approach_Ground_Route(route)
{
    switch(route){
        case 1: // Jump into Fspecial
            if(!free){jump_pressed = 1;}
            if(free && abs(target_relative_x) > 100 && ai_above_target == true){
                //print("in loop")
                Hold_Toward_Target();
                special_pressed = true;
                special_down = true;
            }
            break;
        case 2: // Dspecial on ground
            if(free == false){
                down_pressed =true;
                down_down = true;
                special_pressed = true;
                special_down = true;
            }
            break;
    }
}