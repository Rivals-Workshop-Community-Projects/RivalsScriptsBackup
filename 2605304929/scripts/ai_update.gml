//ai_update.gml – called every frame for a CPU version of the character. Used for special cases like recovery and complex special moves. Use ai_target to reference the player object the CPU is currently targeting. Use ai_recovering to check if the CPU is recovering or not. Use temp_level to reference the CPU’s difficulty level (1-9).
/*
// Gameplan / Main States
// Neutral -> Approaching / Being Aproached
// Advantage -> Oppnonent DI In / DI Out / Has Mark 
// Disadvantage -> On stage / Recovering

Inputs to read
Geographical
- Stage total size
- Platform Size
- Current x / y posotition
- Opponent x/y position.
- Create a safe "zone" where AI is not trying to recover.
- Create a danger zone where the AI should prioritize recovering.

State Information
- If state category is Neutral or Committed
- If currently in the air
- Store previous states in a buffer.

Zone information
x 0           50          150
------------------------------------------------
|up Far        |Top- Side Far  |               |
|               |               |               |
|               |               |               |
|---------------|---------------|-----------    | y + 150
|Up Near        |Up Side       |               |
|               |               |               |
|               |               |               |
-------------------------------------------------y + 50
|Daora          | Side Close    | Side Far      |
|               |               |               |
|               |               |               |
------------------------------------------------ y - 0
|Bottom Near    | Bottom Side   |               |
|               |               |               |
|               |               |               |
------------------------------------------------ y - 50
|Bottom Far     | Bttm-side far |               |
|               |               |               |
|               |               |               |
------------------------------------- y - 150

Stage Information

SD_SIDE_BLASTZONE       SD_WIDTH            SD_SIDE_BLASTZONE
|     ^     |              ^              |    ^     |
-----------------------------------------------------| y = 0
|                                                    | }
|                                                    |  } SD_TOP_BLASTZONE
|       -----                             -----      | } 
|           | ----------------------------| -        | <- SD_Y_POS
|           |                             |          | }
|           |       room_width-SD_X_POS ->|          |  } SD_BOTTOM_BLASTZONE
|           | <-SD_X_POS                  |          | }
---------------------------------------------------- x = room_width / y = room_height
|x = 0                      |x = room_width / 2

Stage dependent DI
- X Direction: 
- Mid stage is the middle 50% of the stage.
- Midstage is x > (SD_WIDTH * .25) + SD_X_POS and x < (room_width - SD-X_POS) - (SD_WIDTH * .25)
- Near Left Ledge: The left offset is x < (SD_WIDTH * .25) + SD_X_POS and x > SD_X_POS
- Near Right Ledge: The right offset is x > (room_width - SD-X_POS) - (SD_WIDTH * .25) and x < room_width-SD_X_POS
- Off Ledge is x < SD_X_POS or x > room_width - SD_X_POS
- Y Direction: 
- Tiers of height, on stage is safest, 
- where the area around 40% up and down are the mid areas. 20 % of stage should be about on stage
- On stage is y < SD_Y_POS + (room_width * .2) and y > SD_Y_POS - (room_width * .2)
- middle zone up is y > SD_Y_POS + (room_width * .2) and y < SD_Y_POS + (room_width * .4)
- middle zone down is y < SD_Y_POS - (room_width * .2) and y > SD_Y_POS - (room_width * .4)
- anything outside of that range is likely DI hard in or out to save themselves from an upward move.
Follow direction data, stage zone should be represented as rough coordinate areas
- x coordinate is first, with 0 = midstage, 1 being on ledge, 2 being off ledge.
- y coordinate is second, with 0 being on stage, 1 being midheight, 2 being heiht or below stage
- Mid stage on stage should be 00, off ledge and high should be 22

AI Specific Variables
Variable	Description
ai_target -	The current target of the AI.
ai_recovering -	Is true while the AI is attempting to recover back onto the stage.
temp_level -	The difficulty level of the AI, from 1 to 9.
ai_attack_timer -	The amount of frames since the AI last attacked.
ai_attack_time -	The minimum amount of frames before the AI can try attacking again.
ready_to_attack -	Is true if the AI can perform an attack.
ai_going_into_attack -	Is true if the AI is attempting to attack.
ai_going_left -	Is true if the AI is moving left.
ai_going_right -	Is true if the AI is moving right.

 Neutral Game plan
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
TODO:
Set up the variables for distance and screen reading. 
- Need to set up the option function to preform options
- Need to set up the sequence timer to set up action input buffers.

*/

if (get_training_cpu_action() == CPU_FIGHT) {
    // insert custom attack code here, since it should only execute
    // if the CPU Action is set to Fight
    //#region Macro Setting
    // Mode Definition
    #macro AI_NEUTRAL 0 // Initial Mode
    #macro AI_NEUTRAL_APPROACH_GROUND 1
    #macro AI_NEUTRAL_APPROACH_AIR 2
    #macro AI_NEUTRAL_HOLD_GROUND 3
    #macro AI_NEUTRAL_HOLD_AIR 4
    #macro AI_NEUTRAL_RETREAT_GROUND 5
    #macro AI_NEUTRAL_RETREAT_AIR 6
    #macro AI_NEUTRAL_COMMITTED 7 // Doing option to prevent additional moves
    
    #macro AI_ADVANTAGE 10
    #macro AI_ADVANTAGE_COMMITTED 11
    #macro AI_DISADVANTAGE 20
    
    #macro AI_TARGET_DI_IN 0
    #macro AI_TARGET_DI_OUT 1
    
    // Target Zones for relative distance
    // Cordinate system. X is in 10s slot, Y is in 0s slot.
    // for X Front: 10 is near , 20 is medium, 30 is far
    // for X Rear: 40 is near , 50 is medium, 60 is far
    // for Y UP: 1 is near , 2 is medium, 3 is far
    // for Y DOWN: 4 is near , 5 is medium, 6 is far
    #macro AI_TARGET_ZONE_VERY_CLOSE 0
    // X Direction, 0 on end is Y coordinate
    #macro AI_TARGET_ZONE_FRONT_NEAR 10
    #macro AI_TARGET_ZONE_FRONT_MEDIUM 20
    #macro AI_TARGET_ZONE_FRONT_FAR 30
    #macro AI_TARGET_ZONE_REAR_NEAR 40
    #macro AI_TARGET_ZONE_REAR_MEDIUM 50
    #macro AI_TARGET_ZONE_REAR_FAR 60
    
    // Y Direction, 0 on front is implied
    #macro AI_TARGET_ZONE_UP_NEAR 1
    #macro AI_TARGET_ZONE_UP_MED 2
    #macro AI_TARGET_ZONE_UP_FAR 3
    #macro AI_TARGET_ZONE_DOWN_NEAR 4
    #macro AI_TARGET_ZONE_DOWN_MEDIUM 5
    #macro AI_TARGET_ZONE_DOWN_FAR 6
    
    // X and Y Directions
    // X Distance Front Varies / Up Direction - Near 1
    #macro AI_TARGET_ZONE_FRONT_NEAR_UP_NEAR 11
    #macro AI_TARGET_ZONE_FRONT_MEDIUM_UP_NEAR 21
    #macro AI_TARGET_ZONE_FRONT_FAR_UP_NEAR 31
    // X Distance Front Varies / Up Direction - Medium 2
    #macro AI_TARGET_ZONE_FRONT_NEAR_UP_MEDIUM 12
    #macro AI_TARGET_ZONE_FRONT_MEDIUM_UP_MEDIUM 22
    #macro AI_TARGET_ZONE_FRONT_FAR_UP_MEDIUM 32
    // X Distance Front Varies / Up Direction - Far 3
    #macro AI_TARGET_ZONE_FRONT_NEAR_UP_FAR 13
    #macro AI_TARGET_ZONE_FRONT_MEDIUM_UP_FAR 23
    #macro AI_TARGET_ZONE_FRONT_FAR_UP_FAR 33
    // X Distance Rear Varies / Up Direction - Near 1
    #macro AI_TARGET_ZONE_REAR_NEAR_UP_NEAR 41
    #macro AI_TARGET_ZONE_REAR_MEDIUM_UP_NEAR 51
    #macro AI_TARGET_ZONE_REAR_FAR_UP_NEAR 61
    // X Distance Rear Varies / Up Direction - Medium 2
    #macro AI_TARGET_ZONE_REAR_NEAR_UP_MEDIUM 42
    #macro AI_TARGET_ZONE_REAR_MEDIUM_UP_MEDIUM 52
    #macro AI_TARGET_ZONE_REAR_FAR_UP_MEDIUM 62
    // X Distance Rear Varies / Up Direction - Far 3
    #macro AI_TARGET_ZONE_REAR_NEAR_UP_FAR 43
    #macro AI_TARGET_ZONE_REAR_MEDIUM_UP_FAR 53
    #macro AI_TARGET_ZONE_REAR_FAR_UP_FAR 63
    
    // Down Direction
    // X Distance Front Varies / Down Direction - Near 4
    #macro AI_TARGET_ZONE_FRONT_NEAR_UP_NEAR 14
    #macro AI_TARGET_ZONE_FRONT_MEDIUM_UP_NEAR 24
    #macro AI_TARGET_ZONE_FRONT_FAR_UP_NEAR 34
    // X Distance Front Varies / Down Direction - Medium 5
    #macro AI_TARGET_ZONE_FRONT_NEAR_UP_MEDIUM 15
    #macro AI_TARGET_ZONE_FRONT_MEDIUM_UP_MEDIUM 25
    #macro AI_TARGET_ZONE_FRONT_FAR_UP_MEDIUM 35
    // X Distance Front Varies / Down Direction - Far 6
    #macro AI_TARGET_ZONE_FRONT_NEAR_UP_FAR 16
    #macro AI_TARGET_ZONE_FRONT_MEDIUM_UP_FAR 26
    #macro AI_TARGET_ZONE_FRONT_FAR_UP_FAR 36
    // X Distance Rear Varies / Down Direction - Near 4
    #macro AI_TARGET_ZONE_REAR_NEAR_UP_NEAR 44
    #macro AI_TARGET_ZONE_REAR_MEDIUM_UP_NEAR 54
    #macro AI_TARGET_ZONE_REAR_FAR_UP_NEAR 64
    // X Distance Rear Varies / Down Direction - Medium 5
    #macro AI_TARGET_ZONE_REAR_NEAR_UP_MEDIUM 45
    #macro AI_TARGET_ZONE_REAR_MEDIUM_UP_MEDIUM 55
    #macro AI_TARGET_ZONE_REAR_FAR_UP_MEDIUM 65
    // X Distance Rear Varies / Down Direction - Far 6
    #macro AI_TARGET_ZONE_REAR_NEAR_UP_FAR 46
    #macro AI_TARGET_ZONE_REAR_MEDIUM_UP_FAR 56
    #macro AI_TARGET_ZONE_REAR_FAR_UP_FAR 66
    
    // AI Stage Zones - First section is location on the stage X, and the 2nd is the stage Y.
    /*Stage Information

 Off Ledge	near ledge 25%
|     ^     |     |   Mid Stage    |     |    ^     |
-----------------------------------------------------| y = 0
|                                                    | }Danger Zone
|                                                    |  } Mid Zone 
|       -----                             -----      | } 
|           | ----------------------------| -        | <- On Stage
|           |                             |          | }
|           |       					  |  
|           |			                  |          | }
---------------------------------------------------- x = room_width / y = room_height
*/
    #macro AI_STAGE_ZONE_MID_STAGE_ON_STAGE 0
    #macro AI_STAGE_ZONE_MID_STAGE_MID_ZONE 1
    #macro AI_STAGE_ZONE_MID_STAGE_DANGER_ZONE 2
    #macro AI_STAGE_ZONE_NEAR_LEDGE_ON_STAGE 10
    #macro AI_STAGE_ZONE_NEAR_LEDGE_MID_ZONE 11
    #macro AI_STAGE_ZONE_NEAR_LEDGE_DANGER_ZONE 12
    #macro AI_STAGE_ZONE_OFF_LEDGE_LEVEL_STAGE 20
    #macro AI_STAGE_ZONE_OFF_LEDGE_MID_ZONE 21
    #macro AI_STAGE_ZONE_OFF_LEDGE_DANGER_ZONE 22
    #macro AI_STAGE_ZONE_FAR_OFF_LEDGE_LEVEL_STAGE 30
    #macro AI_STAGE_ZONE_FAR_OFF_LEDGE_MID_ZONE 31
    #macro AI_STAGE_ZONE_FAR_OFF_LEDGE_DANGER_ZONE 32
    
    // AI Actions
    // Non Attack Options 100 - 200 - This is out of the range of attacks so we don't overlap
    // Basic Ground Options
    #macro AI_OPTION_IDLE 100 // Broken Frame 0 Option
    #macro AI_OPTION_TURN_AROUND 101 // Turn Around
    #macro AI_OPTION_WALK_FORWARD 102
    #macro AI_OPTION_WALK_BACKWARD 103
    #macro AI_OPTION_DASH_FORWARD 104
    #macro AI_OPTION_DASH_BACKWARD 105
    #macro AI_OPTION_CROUCH 106
    #macro AI_OPTION_ROLL_FORWARD 107
    #macro AI_OPTION_ROLL_BACKWARD 108
    #macro AI_OPTION_PARRY 109
    
    // Advanced Ground Options
    #macro AI_OPTION_WAVEDASH_IN 110
    #macro AI_OPTION_WAVEDASH_NEUTRAL 111 // Literally trolling
    #macro AI_OPTION_WAVEDASH_OUT 112
    #macro AI_OPTION_MOONWALK_IN 113
    #macro AI_OPTION_MOONWALK_OUT 114
    #macro AI_OPTION_BABYDASH_IN 115
    #macro AI_OPTION_BABYDASH_OUT 116 // Is there even a point to this?
    #macro AI_OPTION_PLATDROP_IN 117
    #macro AI_OPTION_PLATDROP_NEUTRAL 118
    #macro AI_OPTION_PLATDROP_OUT 119
    
    // Jump Options
    #macro AI_OPTION_JUMP_IN 120
    #macro AI_OPTION_JUMP_UP 121
    #macro AI_OPTION_JUMP_OUT 122
    #macro AI_OPTION_SHORTHOP_IN 123
    #macro AI_OPTION_SHORTHOP_UP 124
    #macro AI_OPTION_SHORTHOP_OUT 125
    #macro AI_OPTION_PLATBOOST_IN 126
    #macro AI_OPTION_PLATBOOST_OUT 127
    
    // Airdodge Options
    #macro AI_OPTION_AIRDODGE_NEUTRAL 130
    #macro AI_OPTION_AIRDODGE_UP 131
    #macro AI_OPTION_AIRDODGE_UP_IN 132
    #macro AI_OPTION_AIRDODGE_IN 133
    #macro AI_OPTION_AIRDODGE_DOWN_IN 134
    #macro AI_OPTION_AIRDODGE_DOWN 135
    #macro AI_OPTION_AIRDODGE_DOWN_OUT 136
    #macro AI_OPTION_AIRDODGE_OUT 137
    #macro AI_OPTION_AIRDODGE_UP_OUT 138
    
    // Aerial Options
    #macro AI_OPTION_AIR_NEUTRAL 140
    #macro AI_OPTION_AIRDRIFT_IN 141
    #macro AI_OPTION_AIR_IDLE 142
    #macro AI_OPTION_AIRDRIFT_OUT 143
    #macro AI_OPTION_FASTFALL 144
    #macro AI_OPTION_DJUMP_IN 145
    #macro AI_OPTION_DJUMP_NEUTRAL 146
    #macro AI_OPTION_DJUMP_OUT 147
    #macro AI_OPTION_HITFALL 148
    //#endregion
    
    //#region Variable Updates
    // Dynamic Variables check and refresh every frame
    //player_percent = get_player_damage(player);
    if state_cat = SC_HITSTUN then ai_current_mode = AI_DISADVANTAGE;
    if ai_recovering = true then ai_current_mode = AI_DISADVANTAGE;
    // Determine self location 
    ai_self_zone = Get_Stage_Zone(x,y);
    //Check for near wall
	for(var i=-30;i<30;i++)
	{
		if(position_meeting(x+(i * spr_dir),y - (char_height/3),asset_get("par_block"))){
			ai_near_wall = true;
		}
		else {ai_near_wall = false;}
	}
    // Run if ai target exists
    if(instance_exists(ai_target)){
        ai_target_percent = get_player_damage(ai_target.player);
        ai_target_relative_x = ai_target.x - x; // Pos is to the right, Neg is to the left
        ai_target_relative_y = ai_target.y - y; // Pos is below, Neg is above
        ai_facing_target = spr_dir * sign(ai_target_relative_x);
        ai_facing_target_distance_x = ai_facing_target * abs(ai_target_relative_x);
        ai_above_target = sign(ai_target_relative_y);
        ai_target_relative_direction_y = sign(ai_target_relative_y);
        //ground_type	Is 1 while on a solid block and 2 while on a platform.
        // Determine Stage Location
        ai_target_zone = Get_Stage_Zone(ai_target.x,ai_target.y);
        
        // For Testing Mark stuff
        if(ai_target.state == PS_ATTACK_GROUND && ai_target.attack == AT_TAUNT){
        	ai_target.status_effect_water = true;
        }
        // Determine Zone
        // X direction Front
        var relative_zone_x; // 0 - very near, 1 - near, 2 - medium, 3 - far
        //Needs to be relative to facing direction, not on screen
        if(ai_facing_target_distance_x <= 50 && ai_facing_target_distance_x >= - 50){relative_zone_x = 0} // Very Near
        // Front
        else if (ai_facing_target_distance_x > 50 && ai_facing_target_distance_x <= 100){relative_zone_x = 1} // Near
        else if (ai_facing_target_distance_x > 100 && ai_facing_target_distance_x <= 150){relative_zone_x = 2} // Med
        else if (ai_facing_target_distance_x > 150) {relative_zone_x = 3} // Far
        // Rear
        else if (ai_facing_target_distance_x < 50 && ai_facing_target_distance_x >= -100){relative_zone_x = 4} // Near
        else if (ai_facing_target_distance_x < -100 && ai_facing_target_distance_x >= -150){relative_zone_x = 5} // Med
        else if (ai_facing_target_distance_x < -150) {relative_zone_x = 6} // Far
        
        // Y direction Rear
        var relative_zone_y; // 0 - very near, 1 - near, 2 - medium, 3 - far
        if(ai_target_relative_y <= 50 && ai_target_relative_y >= - 50){relative_zone_y = 0} // Very Near
        // Down - Negative is Up
        else if (ai_target_relative_y > 50 && ai_target_relative_y <= 100){relative_zone_y = 4} // Near
        else if (ai_target_relative_y > 100 && ai_target_relative_y <= 150){relative_zone_y = 5} // Med
        else if (ai_target_relative_y > 150) {relative_zone_y = 6} // Far
        // Up
        else if (ai_target_relative_y < 50 && ai_target_relative_y >= -100){relative_zone_y = 1} // Near
        else if (ai_target_relative_y < -100 && ai_target_relative_y >= -150){relative_zone_y = 2} // Med
        else if (ai_target_relative_y < -150) {relative_zone_y = 3} // Far
        
        // Determine Area Code
        ai_target_relative_zone = (relative_zone_x * 10) + relative_zone_y;
        //print(ai_target_relative_zone); 
    }
    
    //Daora Custom Variabless
    var temp_mark_status;
    if(instance_exists(ai_target)){
        with(ai_target){
            if "status_effect_water" not in self{} // do nothing to prevent lines in ctrl 8 when opponent dies
            else temp_mark_status = status_effect_water;
        }
    }
    ai_target_mark_status = temp_mark_status;
    // Reset Dspec command on recovery when landing
    if(!free) {
    	ai_dspecial_recovery_commanded = false;
    }
    //#endregion
    
    //check_interupts();
   //#region Master Controller
    switch(ai_current_mode){
        case AI_NEUTRAL: // 0 Default State
            // Do Action Testing
            if(ai_target_relative_zone == AI_TARGET_ZONE_VERY_CLOSE){
                // Check if sequence is empty before adding more options. WIll add to sequence
                if(array_length(ai_option_buffer) == 0){
                    Insert_Into_Option_Buffer(AT_JAB);
                    
                    //print("Option Added to Buffer");
                    //TODO 
                    // Jab Cancels work
                    // Set up logic for selecting which tilt cancel to use after jab based on condtion.
                    // Set up hitfalling to work
                    // 
                    //SET UP SEQUENCES BASE ON HIT AND NO HIT (AND JAB TILT CANCELS)
                    //Insert_Into_Option_Buffer(AT_UTILT);
                    ai_current_mode = AI_NEUTRAL_COMMITTED;
                }
                
            }
            break;
            
            case AI_NEUTRAL_COMMITTED: // Needs to wait out the option timer
                // Check if attack has hit and is still in attack state
                if(has_hit_player == true && !was_parried && state_cat == SC_GROUND_COMMITTED || state_cat == SC_AIR_COMMITTED){
                    ai_current_mode = AI_ADVANTAGE;
                }
                // Check if Attacking
                if(Check_Current_Attack_Active(ai_current_option)){
                    
                }
                // Check if Option with Duration
                else if (ai_current_option_timer > 0){
                    // Do nothing and wait for option to end
                }
                // If Neither, set into neutral and accept sequence in buffer.
                else if(state_cat == SC_GROUND_COMMITTED || state_cat == SC_AIR_COMMITTED){
                    // Do Nothing in committed State   
                }
                else ai_current_mode = AI_NEUTRAL;
            break;

        case AI_NEUTRAL_APPROACH_GROUND:
        // Determine Options to approach based on proximity
        Turn_Toward_Target();
        // Player hit detection for advantage
        if(has_hit_player == true && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
            ai_attack_that_hit = attack;
            ai_current_mode = AI_ADVANTAGE;
            ai_current_mode_timer = 0;
        }
        //Set to neutral to prevent soft locks in advantage.
        if(ai_current_mode_timer > 180){ai_current_mode = AI_NEUTRAL; ai_current_mode_timer = 0;}
        break;

        case AI_NEUTRAL_APPROACH_AIR:
            break;
            
        case AI_NEUTRAL_HOLD_GROUND:
            break;
            
        case AI_NEUTRAL_HOLD_AIR:
            break;
            
        case AI_ADVANTAGE:
            // Conditions Check
            /*
            - AI Will need to guess things about the opponent based on current conditions
            - Current Damage will affect the options that the AI selects for follow up.
            - There should be a low percent / mid percent / high percent. This should effect DI and route select
            - Opponent Weight / Gravity / Air Friction should affect percent where DI starts to be in.
            - Location of the stage should affect DI
            - Move hit by should affect DI.
            - Historical Record of DI may assist in deciding what to do here but that is advanced
            - Need a DI likely score to guess next move. Need a scale where likely DI in is from 0 to 10, where 5 is the likeliness to not DI.
            - 0 on scale will be likely to DI out, 10 will be likely to DI in. THis is because the value gets higher
            - Three damage percent ranges, low percent, mid, and high. These should have differet routes
            Selection tree should look like 
            - Select Percent (Known Variable) -> Select DI (Guessed) -> Select Route
            function for simplyfling this should include 
            -percent as a catagory (switch) and a 
            -guessed DI as a switch.
            - Custom: sOpponent Mark Status
            */
            // Use conditions to guess DI
            //ai_guess_target_DI_direction = random_func(1,2,true);
            // The grabs are not currenty recognized as the current option, may need to detect hitbox hit with as well or link attacks
            var target_percent_weight = ai_target_percent / 20; // at 100, assumption is that oppoent will highly likely DI in
            var target_weight_weight = ai_target.knockback_adj;// * ai_target.air_friction * ai_target.hitstun_grav; // The values on this need to be normalized
            var target_location_weight;
            
            switch(ai_target_relative_zone){
                // Stage Level
                case AI_STAGE_ZONE_MID_STAGE_ON_STAGE:
                    target_location_weight = .2;
                break;
                case AI_STAGE_ZONE_NEAR_LEDGE_ON_STAGE:
                    target_location_weight = .5;
                break;
                case AI_STAGE_ZONE_OFF_LEDGE_LEVEL_STAGE:
                    target_location_weight = 1;
                break;
                // Mid Level
                case AI_STAGE_ZONE_MID_STAGE_MID_ZONE:
                    target_location_weight = .4;
                break;
                case AI_STAGE_ZONE_NEAR_LEDGE_MID_ZONE:
                    target_location_weight = .7;
                break;
                case AI_STAGE_ZONE_OFF_LEDGE_MID_ZONE:
                    target_location_weight = 1;
                break;
                // Danger Zone
                case AI_STAGE_ZONE_MID_STAGE_DANGER_ZONE:
                    target_location_weight = .80;
                break;
                case AI_STAGE_ZONE_NEAR_LEDGE_DANGER_ZONE:
                    target_location_weight = .9;
                break;
                case AI_STAGE_ZONE_OFF_LEDGE_DANGER_ZONE:
                    target_location_weight = .9;
                break;
            }
            if(hitstop == 1){ // Run on last frame of hitpause
                // Random Function is out of 100, so this needs to lower the posibility 
                // of not selecting the guessed DI
                // Values 0 - 45 are DI out, No DI is 46 - 54, DI in is 55 - 100
                // weighted input then multiplies this
                ai_target_DI_weight = target_percent_weight * target_weight_weight * target_location_weight;
                var random_function_weighted_input = 100;
                clamp(random_function_weighted_input,0,100);

                ai_guess_target_DI_direction_value = random_func(0,floor(50),true) + (ai_target_DI_weight * 50);
                // Guess DI out at low pecents
                if(ai_guess_target_DI_direction_value < 45){
                    ai_guess_target_DI_direction = 1;
                }
                // Guess No DI
                else if (ai_guess_target_DI_direction_value > 45 and ai_guess_target_DI_direction_value < 55){
                    ai_guess_target_DI_direction = 0;
                }
                // Guess DI IN
                else{
                    ai_guess_target_DI_direction = -1;
                }
            }
            var target_percent_mid_threshold = 45;
            var target_percent_high_threshold = 90;
            // Special instructions for which move hit
            switch(ai_current_option){
                case AT_JAB:
                {
                    // Jab 1 - sorta special due to cancels
                    if(window == 2 && !hitstop){
                        // If marked, consume it with Nspec
                        if(ai_target_mark_status == true){
                           ai_current_option = AT_NSPECIAL;set_attack(AT_NSPECIAL);
                        }
                        // Else follow the tree selector tree
                        else {
                            switch(ai_guess_target_DI_direction){
                                case -1: // DI IN 
                                    ai_advantage_option_selector = random_func(0,4 + 1,true)//;
                                    switch(ai_advantage_option_selector){
                                        case 0: window = 4; window_timer = 0; break; // jab 2 cancel
                                        case 1: ai_current_option =AT_DTILT;set_attack(AT_DTILT); break;
                                        case 2: ai_current_option =AT_UTILT;set_attack(AT_UTILT); break;
                                        case 3: ai_current_option =AT_NSPECIAL;set_attack(AT_NSPECIAL);break;
                                        case 4: Insert_Into_Option_Buffer(AT_DSTRONG);
                                    }
                                break;
                                case 0: // NO DI
                                    ai_advantage_option_selector = random_func(0,4 + 1,true)//;
                                    switch(ai_advantage_option_selector){
                                        case 0: window = 4; window_timer = 0; break; // jab 2 cancel
                                        case 1: ai_current_option = AT_DTILT;set_attack(AT_DTILT); break;
                                        case 2: ai_current_option = AT_UTILT;set_attack(AT_UTILT); break;
                                        case 3: ai_current_option = AT_NSPECIAL;set_attack(AT_NSPECIAL);break;
                                        case 4: Insert_Into_Option_Buffer(AT_DSTRONG);
                                    }
                                break;
                                case 1: // DI OUT
                                    ai_advantage_option_selector = random_func(0,3 + 1,true)//;
                                    switch(ai_advantage_option_selector){
                                        case 0: window = 4; window_timer = 0; break; // jab 2 cancel
                                        case 1: ai_current_option = AT_FTILT;set_attack(AT_FTILT);break;
                                        case 2: ai_current_option = AT_NSPECIAL;set_attack(AT_NSPECIAL);break;
                                        case 3: ai_current_option = AT_DSTRONG;
                                    }
                                break;
                            }
                        }
                    }
                    // Jab 2
                    if(window == 5 && !hitstop){
                        switch(ai_guess_target_DI_direction){
                            case -1: // DI IN 
                                ai_advantage_option_selector = random_func(0,3 + 1,true)//;
                                switch(ai_advantage_option_selector){
                                    case 0: window = 7; window_timer = 0; break; // jab 3 cancel, this is technically a cheat cause no manual cancel window
                                    case 1: ai_current_option = AT_DTILT;set_attack(AT_DTILT); break;
                                    case 2: ai_current_option = AT_UTILT;set_attack(AT_UTILT); break;
                                    case 3: ai_current_option = AT_NSPECIAL;set_attack(AT_NSPECIAL);break;
                                }
                            break;
                            case 0: // NO DI
                                ai_advantage_option_selector = random_func(0,3 + 1,true)//;
                                switch(ai_advantage_option_selector){
                                    case 0: window = 7; window_timer = 0; break; // jab 3 cancel, this is technically a cheat cause no manual cancel window
                                    case 1: ai_current_option = AT_DTILT;set_attack(AT_DTILT); break;
                                    case 2: ai_current_option = AT_UTILT;set_attack(AT_UTILT); break;
                                    case 3: ai_current_option = AT_NSPECIAL;set_attack(AT_NSPECIAL);break;
                                }
                            break;
                            case 1: // DI OUT
                                ai_advantage_option_selector = random_func(0,3 + 1,true)//;
                                switch(ai_advantage_option_selector){
                                    case 0: window = 7; window_timer = 0; break; // jab 3 cancel, this is technically a cheat cause no manual cancel window
                                    case 1: ai_current_option = AT_FTILT;set_attack(AT_FTILT); break;
                                    case 2: ai_current_option = AT_DTILT;set_attack(AT_DTILT); break;
                                    case 3: ai_current_option = AT_NSPECIAL;set_attack(AT_NSPECIAL);break;
                                }
                            break;
                        }
                    }
                    //Jab 3 endlag
                    if(window == 8 && window_timer == 0 && !hitstop){
                        switch(ai_guess_target_DI_direction){
                            case -1: // DI IN 
                                ai_advantage_option_selector = random_func(0,2 + 1,true)//;
                                switch(ai_advantage_option_selector){
                                    case 0: Insert_Into_Option_Buffer(AT_USPECIAL);
                                    case 1: Multi_Insert_Into_Option_Buffer(AI_OPTION_JUMP_UP,AI_OPTION_AIRDRIFT_IN,AT_UAIR);break;
                                    case 2: Multi_Insert_Into_Option_Buffer(AI_OPTION_JUMP_UP,AI_OPTION_AIRDRIFT_IN,AT_NSPECIAL);break;
                                }
                            break;
                            case 0: // NO DI
                                ai_advantage_option_selector = random_func(0,2 + 1,true);
                                switch(ai_advantage_option_selector){
                                    case 0: Multi_Insert_Into_Option_Buffer(AI_OPTION_WAVEDASH_IN,AT_USPECIAL);break;
                                    case 1: Multi_Insert_Into_Option_Buffer(AI_OPTION_JUMP_IN,AI_OPTION_AIRDRIFT_IN,AT_UAIR);break;
                                    case 2: Multi_Insert_Into_Option_Buffer(AI_OPTION_JUMP_IN,AI_OPTION_AIRDRIFT_IN,AT_NSPECIAL);break;
                                }
                            break;
                            case 1: // DI OUT
                                ai_advantage_option_selector = random_func(0,2 + 1,true);
                                switch(ai_advantage_option_selector){
                                    case 0: Multi_Insert_Into_Option_Buffer(AI_OPTION_WAVEDASH_IN,AI_OPTION_JUMP_IN,AI_OPTION_AIRDRIFT_IN,AT_NAIR);break;
                                    case 1: Multi_Insert_Into_Option_Buffer(AI_OPTION_WAVEDASH_IN,AI_OPTION_JUMP_IN,AI_OPTION_AIRDRIFT_IN,AT_FAIR);break;
                                    case 2: Multi_Insert_Into_Option_Buffer(AI_OPTION_DASH_FORWARD,AI_OPTION_IDLE,AT_FTILT);break;
                                    case 3: Multi_Insert_Into_Option_Buffer(AI_OPTION_WAVEDASH_IN,AI_OPTION_JUMP_IN,AI_OPTION_AIRDRIFT_IN,AT_FSPECIAL);break;
                                }
                            break;
                        }
                    }
                }
                break;
                case AT_FTILT:
                    if(window == get_attack_value(attack,AG_NUM_WINDOWS) && window_timer == 0){
                        switch(ai_guess_target_DI_direction){
                            case -1: // DI IN 
                                ai_advantage_option_selector = random_func(0,0 + 1,true)//;
                                switch(ai_advantage_option_selector){
                                    case 0: Multi_Insert_Into_Option_Buffer(AI_OPTION_WAVEDASH_IN,AT_USPECIAL);break;
                                }
                            break;
                            case 0: // NO DI
                                ai_advantage_option_selector = random_func(0,0 + 1,true);
                                switch(ai_advantage_option_selector){
                                    case 0: Multi_Insert_Into_Option_Buffer(AI_OPTION_WAVEDASH_IN,AI_OPTION_JUMP_IN, AT_FSPECIAL);break;
                                }
                            break;
                            case 1: // DI OUTs
                                ai_advantage_option_selector = random_func(0,0 + 1,true);
                                switch(ai_advantage_option_selector){
                                    case 0: Multi_Insert_Into_Option_Buffer(AI_OPTION_WAVEDASH_IN,AT_DSPECIAL);break;
                                }
                            break;
                        }
                    }
                break;
                case AT_UTILT:
                    if(window == get_attack_value(attack,AG_NUM_WINDOWS) && window_timer == 0){
                        switch(ai_guess_target_DI_direction){
                            case -1: // DI IN 
                                ai_advantage_option_selector = random_func(0,0 + 1,true)//;
                                switch(ai_advantage_option_selector){
                                    case 0: Multi_Insert_Into_Option_Buffer(AI_OPTION_WAVEDASH_IN,AT_USPECIAL);break;
                                }
                            break;
                            case 0: // NO DI
                                ai_advantage_option_selector = random_func(0,0 + 1,true);
                                switch(ai_advantage_option_selector){
                                    case 0: Multi_Insert_Into_Option_Buffer(AI_OPTION_WAVEDASH_IN,AT_USPECIAL);break;
                                }
                            break;
                            case 1: // DI OUTs
                                ai_advantage_option_selector = random_func(0,0 + 1,true);
                                switch(ai_advantage_option_selector){
                                    case 0: Multi_Insert_Into_Option_Buffer(AI_OPTION_JUMP_IN,AT_FSPECIAL);break;
                                }
                            break;
                        }
                    }
                break;
                case AT_DTILT:
                    if(window == get_attack_value(attack,AG_NUM_WINDOWS) && window_timer == 0){
                            switch(ai_guess_target_DI_direction){
                                case -1: // DI IN 
                                    ai_advantage_option_selector = random_func(0,0 + 1,true)//;
                                    switch(ai_advantage_option_selector){
                                        case 0: Multi_Insert_Into_Option_Buffer(AI_OPTION_WAVEDASH_OUT,AT_USPECIAL);break; // TODO This gets stuck
                                    }
                                break;
                                case 0: // NO DI
                                    ai_advantage_option_selector = random_func(0,0 + 1,true);
                                    switch(ai_advantage_option_selector){
                                        case 0: Multi_Insert_Into_Option_Buffer(AT_USPECIAL);break;
                                    }
                                break;
                                case 1: // DI OUT
                                    ai_advantage_option_selector = random_func(0,0 + 1,true);
                                    switch(ai_advantage_option_selector){
                                        case 0: Multi_Insert_Into_Option_Buffer(AT_DSPECIAL);break;
                                    }
                                break;
                            }
                        }
                break;
                case AT_DATTACK:
                    if(window == get_attack_value(attack,AG_NUM_WINDOWS) && window_timer == 0){
                            switch(ai_guess_target_DI_direction){
                                case -1: // DI IN 
                                    ai_advantage_option_selector = random_func(0,0 + 1,true)//;
                                    switch(ai_advantage_option_selector){
                                        case 0: Multi_Insert_Into_Option_Buffer(AI_OPTION_JUMP_UP,AT_USPECIAL);break;
                                    }
                                break;
                                case 0: // NO DI
                                    ai_advantage_option_selector = random_func(0,0 + 1,true);
                                    switch(ai_advantage_option_selector){
                                        case 0: Multi_Insert_Into_Option_Buffer(AI_OPTION_JUMP_UP,AT_FSPECIAL);break;
                                    }
                                break;
                                case 1: // DI OUT
                                    ai_advantage_option_selector = random_func(0,0 + 1,true);
                                    switch(ai_advantage_option_selector){
                                        case 0: Multi_Insert_Into_Option_Buffer(AT_DSPECIAL);break;
                                    }
                                break;
                            }
                        }
                break;
                // Strongs
                case AT_FSTRONG:
                break;
                case AT_USTRONG:
                break;
                case AT_DSTRONG:
                break;
                // Aerials
                case AT_NAIR:
                break;
                case AT_FAIR:
                break;
                case AT_UAIR:
                break;
                case AT_BAIR:
                break;
                case AT_DAIR:
                break;
                //Specials
                case AT_NSPECIAL_2: // Grounded Unenhanced Nspec
                break;
                case AT_NSPECIAL:
                case AT_NTHROW: // Aerial Unenhanced Nspec
                    if(window == get_attack_value(attack,AG_NUM_WINDOWS) && window_timer == 0){
                        switch(ai_guess_target_DI_direction){
                            case -1: // DI IN 
                                ai_advantage_option_selector = random_func(0,0 + 1,true)//;
                                switch(ai_advantage_option_selector){
                                    case 0: Multi_Insert_Into_Option_Buffer(AI_OPTION_WAVEDASH_OUT,AT_USPECIAL);break;
                                }
                            break;
                            case 0: // NO DI
                                ai_advantage_option_selector = random_func(0,0 + 1,true);
                                switch(ai_advantage_option_selector){
                                    case 0: Multi_Insert_Into_Option_Buffer(AT_USPECIAL);break;
                                }
                            break;
                            case 1: // DI OUT
                                ai_advantage_option_selector = random_func(0,0 + 1,true);
                                switch(ai_advantage_option_selector){
                                    case 0: Multi_Insert_Into_Option_Buffer(AT_DSPECIAL);break;
                                }
                            break;
                        }
                    }
                break;
                case AT_EXTRA_2: // Grounded Enhanced Nspec
                    if(window == get_attack_value(attack,AG_NUM_WINDOWS) && window_timer == 0){
                        switch(ai_guess_target_DI_direction){
                            case -1: // DI IN 
                                ai_advantage_option_selector = random_func(0,2 + 1,true)//;
                                switch(ai_advantage_option_selector){
                                    case 0: Multi_Insert_Into_Option_Buffer(AI_OPTION_TURN_AROUND,AT_FSPECIAL);break;
                                    case 1: Multi_Insert_Into_Option_Buffer(AI_OPTION_TURN_AROUND,AT_DSPECIAL);break;
                                    case 2: Multi_Insert_Into_Option_Buffer(AI_OPTION_BABYDASH_IN,AT_UAIR);break;
                                }
                            break;
                            case 0: // NO DI - Not likely to happen so just assume DI out
                                ai_advantage_option_selector = random_func(0,1 + 1,true);
                                switch(ai_advantage_option_selector){
                                    case 0: Multi_Insert_Into_Option_Buffer(AT_DSPECIAL);break;
                                    case 1: Multi_Insert_Into_Option_Buffer(AI_OPTION_WAVEDASH_IN,AT_FSPECIAL);break;
                                }
                            break;
                            case 1: // DI OUT
                                ai_advantage_option_selector = random_func(0,1 + 1,true);
                                switch(ai_advantage_option_selector){
                                    case 0: Multi_Insert_Into_Option_Buffer(AT_DSPECIAL);break;
                                    case 1: Multi_Insert_Into_Option_Buffer(AI_OPTION_WAVEDASH_IN,AT_FSPECIAL);break;
                                }
                            break;
                        }
                    }
                break;
                case AT_EXTRA_3: // Aerial Enhanced Nspec
                break;
                case AT_FSPECIAL:
                case AT_FTHROW: // Regular Fspec
                    if(window == get_attack_value(attack,AG_NUM_WINDOWS) && window_timer == 0){
                            switch(ai_guess_target_DI_direction){
                                case -1: // DI IN 
                                    ai_advantage_option_selector = random_func(0,0 + 1,true)//;
                                    switch(ai_advantage_option_selector){
                                        case 0: Multi_Insert_Into_Option_Buffer(AI_OPTION_WAVEDASH_OUT,AT_USPECIAL);break;
                                    }
                                break;
                                case 0: // NO DI
                                    ai_advantage_option_selector = random_func(0,0 + 1,true);
                                    switch(ai_advantage_option_selector){
                                        case 0: Multi_Insert_Into_Option_Buffer(AT_USPECIAL);break;
                                    }
                                break;
                                case 1: // DI OUT
                                    ai_advantage_option_selector = random_func(0,0 + 1,true);
                                    switch(ai_advantage_option_selector){
                                        case 0: Multi_Insert_Into_Option_Buffer(AT_DSPECIAL);break;
                                    }
                                break;
                            }
                        }                
                break;
                case AT_FSPECIAL_2: // Boosted Fspec
                break;
                case AT_DSPECIAL:
                case AT_DSPECIAL_AIR:
                case AT_DTHROW: // Regular Dspec
                    if(window == get_attack_value(attack,AG_NUM_WINDOWS) && window_timer == 0){
                            switch(ai_guess_target_DI_direction){
                                case -1: // DI IN 
                                    ai_advantage_option_selector = random_func(0,0 + 1,true)//;
                                    switch(ai_advantage_option_selector){
                                        case 0: Multi_Insert_Into_Option_Buffer(AT_FSPECIAL);break;
                                    }
                                break;
                                case 0: // NO DI
                                    ai_advantage_option_selector = random_func(0,0 + 1,true);
                                    switch(ai_advantage_option_selector){
                                        case 0: Multi_Insert_Into_Option_Buffer(AT_DAIR);break;
                                    }
                                break;
                                case 1: // DI OUT
                                    ai_advantage_option_selector = random_func(0,0 + 1,true);
                                    switch(ai_advantage_option_selector){
                                        case 0: Multi_Insert_Into_Option_Buffer(AT_FSPECIAL);break;
                                    }
                                break;
                            }
                        }
                break;
                case AT_DSPECIAL_2: // Boosted Dspec
                break;
                case AT_USPECIAL:
                case AT_UTHROW: // Regular Uspec
                    if(window == get_attack_value(attack,AG_NUM_WINDOWS) && window_timer == 0){
                            switch(ai_guess_target_DI_direction){
                                case -1: // DI IN 
                                    ai_advantage_option_selector = random_func(0,0 + 1,true)//;
                                    switch(ai_advantage_option_selector){
                                        case 0: Multi_Insert_Into_Option_Buffer(AT_USPECIAL);break;
                                    }
                                break;
                                case 0: // NO DI
                                    ai_advantage_option_selector = random_func(0,0 + 1,true);
                                    switch(ai_advantage_option_selector){
                                        case 0: Multi_Insert_Into_Option_Buffer(AT_FSPECIAL);break;
                                    }
                                break;
                                case 1: // DI OUT
                                    ai_advantage_option_selector = random_func(0,0 + 1,true);
                                    switch(ai_advantage_option_selector){
                                        case 0: Multi_Insert_Into_Option_Buffer(AT_FSPECIAL);break;
                                    }
                                break;
                            }
                        }
                break;
                case AT_USPECIAL_2: // Boosted Uspec
                break;
            }
            
            //Follow_Up_Attack(ai_attack_that_hit,di_direction);
            // Set back into neutral if the opponent is no longer in hitstun
            if(ai_target.state_cat != SC_HITSTUN){ai_current_mode = AI_NEUTRAL; ai_current_mode_timer = 0;}
        break;
        
        // For advantage committd.    
        case AI_ADVANTAGE_COMMITTED:
            // Check if Attacking
            if(Check_Current_Attack_Active(ai_current_option)){
                
            }
            // Check if Option with Duration
            else if (ai_current_option_timer > 0){
                // Do nothing and wait for option to end
            }
            // If Neither, set into neutral and accept sequence in buffer.
            else if(state_cat == SC_GROUND_COMMITTED || state_cat == SC_AIR_COMMITTED){
                // Do Nothing in committed State
            }
            else ai_current_mode = AI_NEUTRAL;
            
        break;
        
        case AI_DISADVANTAGE:
        if(state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL && !ai_recovering){ai_current_mode = AI_NEUTRAL;}
        
        // TODO: DI Code
        /*
        - This code is designed to similate a player's behavior for when they would start DIing certain angles at certain percents
        - The AI should be DIing out if it thinks its low percents and the move that hit it isn't super strong
        - The AI should be No DIing at mid percents
        - The AI should be DIing in at high percents but should be mixing it up on occassion to make it beliveable and also to avoid confirms on lower kb moves.
        - Read angle and kb distance via old hsp/ vsp variables
        - Use the angle and the distance to determine a weight for determining to DI in / No DI / DI Out
        - Translate that DI choice into an angle base on the angle the AI was hit at.
        - AI Needs to drift in disadvantage but not when recoverying to help it askep combos
        */
        if(hitpause == 1){ // Check in last frame of hitpause
            // Random Function is out of 100, so this needs to lower the posibility 
            // of not selecting the guessed DI
            // Values 0 - 45 are DI out, No DI is 46 - 54, DI in is 55 - 100
            // weighted input then multiplies this
			ai_disadv_angle_being_sent = point_direction(0, 0, old_hsp, old_vsp);
			ai_disadv_kb_value = point_distance(0, 0, old_hsp, old_vsp);
			// This uses the same logic as the target DI guessing
			var target_percent_weight = get_player_damage(player) / 20; // at 100, assumption is that oppoent will highly likely DI in
            var target_weight_weight = knockback_adj;// * ai_target.air_friction * ai_target.hitstun_grav; // The values on this need to be normalized
            var target_location_weight;
            var target_kb_distance_weight;
            switch(ai_self_zone){
                // Stage Level
                case AI_STAGE_ZONE_MID_STAGE_ON_STAGE:
                    target_location_weight = .2;
                break;
                case AI_STAGE_ZONE_NEAR_LEDGE_ON_STAGE:
                    target_location_weight = .5;
                break;
                case AI_STAGE_ZONE_OFF_LEDGE_LEVEL_STAGE:
                    target_location_weight = 1;
                break;
                // Mid Level
                case AI_STAGE_ZONE_MID_STAGE_MID_ZONE:
                    target_location_weight = .4;
                break;
                case AI_STAGE_ZONE_NEAR_LEDGE_MID_ZONE:
                    target_location_weight = .7;
                break;
                case AI_STAGE_ZONE_OFF_LEDGE_MID_ZONE:
                    target_location_weight = 1;
                break;
                // Danger Zone
                case AI_STAGE_ZONE_MID_STAGE_DANGER_ZONE:
                    target_location_weight = .80;
                break;
                case AI_STAGE_ZONE_NEAR_LEDGE_DANGER_ZONE:
                    target_location_weight = .9;
                break;
                case AI_STAGE_ZONE_OFF_LEDGE_DANGER_ZONE:
                    target_location_weight = .9;
                break;
            }
            //KB Value determiner
            target_kb_distance_weight = ai_disadv_kb_value / 20;// 5 kb is ultra low, // 10 kb is low, 15 is medium. above 20 is high

            ai_self_DI_weight = target_percent_weight * target_weight_weight * target_location_weight * target_kb_distance_weight; // This should out of 1
            var random_function_weighted_input = 100;
            clamp(random_function_weighted_input,0,100);
            //ai_disadv_di_angle = joy_dir;
            ai_self_DI_direction_value = random_func(0,floor(50),true) + (ai_self_DI_weight * 50);
            
            // DI out at low pecents
            if(ai_self_DI_direction_value < 45){
                ai_self_DI_direction = 1;
            }
            //No DI at mid percents
            else if (ai_guess_target_DI_direction_value > 45 and ai_guess_target_DI_direction_value < 55){
                ai_self_DI_direction = 0;
            }
            //DI IN at high percents
            else{
                ai_self_DI_direction = -1;
            }
            
            // Determine angle to DI in for normal angles Right Side
            if(ai_disadv_angle_being_sent > 0 && ai_disadv_angle_being_sent < 89){
            	if(ai_self_DI_direction == 1){ai_disadv_di_angle = ai_disadv_angle_being_sent - 90} // DI OUT
            	if(ai_self_DI_direction == 0){ai_disadv_di_angle = ai_disadv_angle_being_sent} // NO DI
            	if(ai_self_DI_direction == -1){ai_disadv_di_angle = ai_disadv_angle_being_sent + 90} // NO DI
            }
            
            // Determine angle to DI in for normal angles Left Side
            if(ai_disadv_angle_being_sent > 91 && ai_disadv_angle_being_sent < 180){
            	if(ai_self_DI_direction == 1){ai_disadv_di_angle = ai_disadv_angle_being_sent + 90} // DI OUT
            	if(ai_self_DI_direction == 0){ai_disadv_di_angle = ai_disadv_angle_being_sent} // NO DI
            	if(ai_self_DI_direction == -1){ai_disadv_di_angle = ai_disadv_angle_being_sent - 90} // NO DI
            }
            
            // Determine angle to DI for directly up
            if(ai_disadv_angle_being_sent == 90){
            	var stage_center = ai_stage_x + (ai_stage_width/2);
            	var direction_to_center_stage = sign(x - stage_center); // Right is positive, left is negative
            	if(ai_self_DI_direction == 1){ai_disadv_di_angle = ai_disadv_angle_being_sent - (90 * direction_to_center_stage)} // DI OUT
            	if(ai_self_DI_direction == 0){ai_disadv_di_angle = ai_disadv_angle_being_sent} // NO DI
            	if(ai_self_DI_direction == -1){ai_disadv_di_angle = ai_disadv_angle_being_sent + (90 * direction_to_center_stage)} // DI IN
            }
           
           // Spike Angles (Same as above but inverted)
            if(ai_disadv_angle_being_sent > 181 && ai_disadv_angle_being_sent < 359){
            	var stage_center = ai_stage_x + (ai_stage_width/2);
            	var direction_to_center_stage = sign(x - stage_center); // Right is positive, left is negative
            	if(ai_self_DI_direction == 1){ai_disadv_di_angle = ai_disadv_angle_being_sent + (90 * direction_to_center_stage)} // DI OUT
            	if(ai_self_DI_direction == 0){ai_disadv_di_angle = ai_disadv_angle_being_sent} // NO DI
            	if(ai_self_DI_direction == -1){ai_disadv_di_angle = ai_disadv_angle_being_sent - (90 * direction_to_center_stage)} // DI IN
            }
            // Set direction
            joy_dir = ai_disadv_di_angle;
            
            // Determine drift direction for this instance of hitstun. Follows the code for DI but can be different for some mix up
            ai_disadv_drift_weight = random_func(1,floor(50),true) + (ai_self_DI_weight * 50);
            
            // DI out at low pecents
            if(ai_disadv_drift_weight < 45){
                ai_disadv_drift_direction = 1;
            }
            //No DI at mid percents
            else if (ai_disadv_drift_weight > 45 and ai_disadv_drift_weight < 55){
                ai_disadv_drift_direction = 0;
            }
            //DI IN at high percents
            else{
                ai_disadv_drift_direction = -1;
            }
        }
        
        // In disadvantage but not recovering code
        if(ai_recovering == false){
        	// Set drift from hitpause above
        	if(ai_disadv_drift_direction == 1){ // Drifting out
        		Hold_Away_Target();
        	}
        	if(ai_disadv_drift_direction == -1){ // Drifting In
        		Hold_Toward_Target();
        	}
        }
        
        // Recovery Code
        if(ai_recovering == true){
        	// Lock out Uspec if still has a Djump so it doesn't waste it
        	if(state == PS_ATTACK_AIR && attack == AT_USPECIAL && djumps == 0){
        		set_state(PS_IDLE_AIR);
        		Insert_Into_Option_Buffer(AI_OPTION_DJUMP_IN);
        	}
        	
        	// Dspecial use to get back Djump
        	if(djumps == 1 && djump_given_back_flag == false && ai_dspecial_recovery_commanded == false 
        	&& state_cat == SC_AIR_NEUTRAL && ai_current_option_timer == 0 && state != PS_DOUBLE_JUMP &&
        	(ai_self_zone == AI_STAGE_ZONE_FAR_OFF_LEDGE_LEVEL_STAGE || ai_self_zone == AI_STAGE_ZONE_FAR_OFF_LEDGE_MID_ZONE)
        	){
				Multi_Insert_Into_Option_Buffer(AT_DSPECIAL,AI_OPTION_DJUMP_IN);
				ai_dspecial_recovery_commanded = true;
        	}
        	
        	// Supress Using Airdodge far from stage to prevent wasting it unless in the danger zone
        	if(state == PS_AIR_DODGE && state_timer == 1 && ai_current_option_timer == 0 &&
    		(ai_self_zone == AI_STAGE_ZONE_FAR_OFF_LEDGE_LEVEL_STAGE || ai_self_zone == AI_STAGE_ZONE_FAR_OFF_LEDGE_MID_ZONE)
    		){
        			set_state(PS_IDLE_AIR);
        			Insert_Into_Option_Buffer(AI_OPTION_AIRDRIFT_IN);
    		}
    		
    		// Fspecial Cancel Logic when recovering
    		if(state == PS_ATTACK_AIR && attack == AT_FSPECIAL){
    			// Try Wall jumping if on wall
    			if(has_walljump && can_wall_jump && ai_near_wall){
    				spr_dir *= -1;
    				set_state(PS_WALL_JUMP);
    			}
    			
    			// Try expending a double jump if available to save itself
    			if(djumps == 1 && fspecial_recovery_enabled_flag == true){
    				Insert_Into_Option_Buffer(AI_OPTION_JUMP_IN);
    			}
    			// Else Try airdodging after it is able to cancel
    			else if(has_airdodge && fspecial_recovery_enabled_flag == true){
    				Insert_Into_Option_Buffer(AI_OPTION_AIRDODGE_UP);
    			}
    		}
        }
        break;
    }
    //#endregion
    
    //#region Seqencer
    //Resolve Option for Frame, this needs to be delinked to run the buffer
    // If doing an option, continue doing it
    if (ai_current_option_timer > 0){
        Do_Option(ai_current_option);
        ai_current_option_timer--; // Deduct option timer
    }
    // Check if in the middle of an attack (does not have set duration)
    else if Check_Current_Attack_Active(ai_current_option){
        //print("Sequencer loop for check current attack active");
    }
    // Else, evaluate if the option is over to start the next option or return to neutral.
    else if(array_length(ai_option_buffer) > 0){
        ai_current_option = Pop_Front_From_Option_Buffer();
        Do_Option(ai_current_option);
        //print("Sequencer loop for popping new option");
    }
    // If no option active and none loaded, refresh current option
    else{ai_current_option = 0;}
    ai_current_mode_timer++;
    //print(ai_option_buffer[]);
    //#endregion
}

#define check_interupts()
{
    // Highest Priority Interupt Comes First
    if(ai_recovering == true){ai_current_mode = AI_RECOVERY} 
    if(state_cat == SC_HITSTUN){ai_current_mode = AI_DISADVANTAGE;}
}

#define Hold_Toward_Target()
{   
    ai_target_relative_direction_x = sign(ai_target_relative_x);
    if ai_target_relative_direction_x == 1 then right_down = true; else left_down = true;
}

#define Hold_Away_Target()
{   
    ai_target_relative_direction_x = sign(ai_target_relative_x);
    if ai_target_relative_direction_x == 1 then left_down = true; else right_down = true;
}
#define Press_Hard_Toward_Target()
{
    ai_target_relative_direction_x = sign(ai_target_relative_x);
    if (ai_target_relative_direction_x == 1) then right_hard_pressed = true; else left_hard_pressed = true;
}

#define Press_Hard_Away_Target()
{
    ai_target_relative_direction_x = sign(ai_target_relative_x);
    if (ai_target_relative_direction_x == 1) then left_hard_pressed = true; else right_hard_pressed = true;
}
#define Turn_Toward_Target()
{   
    ai_target_relative_direction_x = sign(ai_target_relative_x);
    if ai_target_relative_direction_x == 1 then right_pressed = true; else left_pressed = true;
}

#define Check_Target_Range_X(min_distance,max_distance)
{   
    if(ai_target_relative_x > min_distance && ai_target_relative_x <= max_distance)
    {
        return true;
    }
    else return false;
}

#define Check_Target_Range_Y(min_distance,max_distance)
{   
    if(ai_target_relative_y > min_distance && ai_target_relative_y <= max_distance)
    {
        return true;
    }
    else return false;
}

#define Get_Stage_Zone(x,y)
{
/*
- X Direction: 
- Mid stage is the middle 50% of the stage.
- Midstage is x > (SD_WIDTH * .25) + SD_X_POS and x < (room_width - SD-X_POS) - (SD_WIDTH * .25)
- Near Left Ledge: The left offset is x < (SD_WIDTH * .25) + SD_X_POS and x > SD_X_POS
- Near Right Ledge: The right offset is x > (room_width - SD-X_POS) - (SD_WIDTH * .25) and x < room_width-SD_X_POS
- Off Ledge is x < SD_X_POS or x > room_width - SD_X_POS
- Y Direction: s
- Tiers of height, on stage is safest, 
- where the area around 40% up and down are the mid areas. 20 % of stage should be about on stage
- On stage is y < SD_Y_POS + (room_width * .2) and y > SD_Y_POS - (room_width * .2)
- middle zone up is y > SD_Y_POS + (room_width * .2) and y < SD_Y_POS + (room_width * .4)
- middle zone down is y < SD_Y_POS - (room_width * .2) and y > SD_Y_POS - (room_width * .4)
- anything outside of that range is likely DI hard in or out to save themselves from an upward move.
Follow direction data, stage zone should be represented as rough coordinate areas
- x coordinate is first, with 0 = midstage, 1 being on ledge, 2 being off ledge.
- y coordinate is second, with 0 being on stage, 1 being midheight, 2 being heiht or below stage
- Mid stage on stage should be 00, off ledge and high should be 22

ai_stage_x = get_stage_data( SD_X_POS );
ai_stage_y = get_stage_data( SD_Y_POS );
ai_stage_top_blastzone = get_stage_data( SD_TOP_BLASTZONE );
ai_stage_bottom_blastzone = get_stage_data( SD_BOTTOM_BLASTZONE );
ai_stage_side_blastzone = get_stage_data( SD_SIDE_BLASTZONE );
ai_stage_width = get_stage_data( SD_WIDTH );
*/

// X Direction
    var x_zone;
    var y_zone;
    // Check Left Ledge
    if(x < (ai_stage_width * .25) + ai_stage_x and x > ai_stage_x){
        x_zone = 1;
    }
    // Check Mid Stage
    else if (x > (ai_stage_width * .25) + ai_stage_x and x < (room_width - ai_stage_x) - (ai_stage_width * .25)){
        x_zone = 0;
    }
    // Check Right Ledge
    else if (x > (room_width - ai_stage_x) - (ai_stage_width * .25) and x < room_width - ai_stage_x){
        x_zone = 1;
    }
    // Check left ledge far off ledge
    else if (x > ai_left_blastzone and x < (ai_stage_x * .5)) {
        x_zone = 3;
    }
    // Check left ledge near off ledge
    else if (x > ai_stage_x * .5 and x < ai_stage_x) {
        x_zone = 2;
    }
    // Check Right ledge Near off ledge
    else if (x > ai_right_side_of_stage and x < ai_right_side_of_stage_mid) {
        x_zone = 2;
    }
    // Check Right ledge Far off ledge
    else if (x > ai_right_side_of_stage_mid and x < ai_right_blastzone) {
        x_zone = 3;
    }
    
// Y Direction
    // Check lower zone
    var mid_zone_mult = .1;
    var danger_zone_mult = .2;
    if(y > ai_stage_y + (room_width * mid_zone_mult) and y < ai_stage_y + (room_width * danger_zone_mult)){
        y_zone = 1;
    }
    // Check Middle Zone
    else if(y < ai_stage_y + (room_width * mid_zone_mult) and y > ai_stage_y - (room_width * mid_zone_mult)){
        y_zone = 0;
    }
    // Check Upper Zone
    else if(y < ai_stage_y - (room_width * mid_zone_mult) and y > ai_stage_y - (room_width * danger_zone_mult)){
        y_zone = 1;
    }
    //else return in danger zone
    else{
        y_zone = 2;
    }
    return (x_zone *10) + y_zone;
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

#define Do_Option(option)
/// Do_Option(option)
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
    rights
    [direction]_strong
    [direction]_stick


    */
    //print(option)

    switch(option){
        // Grounded Normals
        case AT_JAB:
            Clear_All_Button_Buffer();
            attack_pressed = true;
            ai_going_left = false;
            ai_going_right = false;
            joy_idle = true;
            up_down = false;
            down_down = false;
            right_down = false;
            left_down = false;
        break;
        case AT_FTILT:
            Clear_All_Button_Buffer();
            Turn_Toward_Target();
            Hold_Toward_Target();
            attack_pressed = true;
            up_down = false;
            down_down = false;
        break;
        case AT_UTILT:
            Clear_All_Button_Buffer();
            attack_pressed = true;
            up_down = true;
            down_down = false;
            right_down = false;
            left_down = false;
        break;
        case AT_DTILT:
            Clear_All_Button_Buffer();
            attack_pressed = true;
            up_down = false;
            down_down = true;
            right_down = false;
            left_down = false;
        break;
        case AT_DATTACK:
            ai_target_relative_direction_x = sign(ai_target_relative_x);
            Clear_All_Button_Buffer();
            //set_attack(AT_DATTACK); // Have to force this cause otherwise will not have reliable way to use it.
            Press_Hard_Toward_Target();
            attack_pressed = true;
        break;
            
        // Aerials:
         case AT_NAIR:
            Clear_All_Button_Buffer();
            attack_pressed = true;
            ai_going_left = false;
            ai_going_right = false;
            joy_idle = true;
            up_down = false;
            down_down = false;
            right_down = false;
            left_down = false;
         break;
         case AT_FAIR:
            Clear_All_Button_Buffer();
            Hold_Toward_Target();
            attack_pressed = true;
            up_down = false;
            down_down = false;
         break;
         case AT_UAIR:
             Clear_All_Button_Buffer();
            attack_pressed = true;
            up_down = true;
            down_down = false;
            right_down = false;
            left_down = false;
         break;
         case AT_BAIR:
            Clear_All_Button_Buffer();
            Hold_Away_Target();
            attack_pressed = true;
            up_down = false;
            down_down = false;
         break
         case AT_DAIR:
            Clear_All_Button_Buffer();
            attack_pressed = true;
            up_down = false;
            down_down = true;
            right_down = false;
            left_down = false;
         break;
         
        // Strongs
        case AT_FSTRONG:
            Clear_All_Button_Buffer();
            ai_target_relative_direction_x = sign(ai_target_relative_x);
            if ai_target_relative_direction_x == 1 then right_strong_pressed = true; else left_strong_pressed = true;
        break;
        case AT_USTRONG:
            Clear_All_Button_Buffer();
            up_strong_pressed = true;
        break;
        case AT_DSTRONG:
            Clear_All_Button_Buffer();
            down_strong_pressed = true;
        break;
            
        // Specials
        case AT_NSPECIAL:
            Clear_All_Button_Buffer();
            joy_idle = true;
            special_pressed = true;
            up_down = false;
            down_down = false;
            right_down = false;
            left_down = false;
        break;
        case AT_FSPECIAL:
            Hold_Toward_Target();
            special_pressed = true;
            up_down = false;
            down_down = false;
        break;
        case AT_USPECIAL:
            Clear_All_Button_Buffer();
            special_pressed = true;
            up_down = true;
            down_down = false;
            right_down = false;
            left_down = false;
        break;
        case AT_DSPECIAL:
            Clear_All_Button_Buffer();
            special_pressed = true;
            up_down = false;
            down_down = true;
            right_down = false;
            left_down = false;
        break;
        case AT_TAUNT:
            Clear_All_Button_Buffer();
            taunt_pressed = true;
            up_down = false;
            down_down = false;
            right_down = false;
            left_down = false;
        break;
        // Movement
        case AI_OPTION_IDLE:
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            Set_Option_Duration(20);
        break;
        case AI_OPTION_TURN_AROUND:
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            if(spr_dir == 1){left_down = true;} // Facing Right
            if(spr_dir == -1){right_down = true;} // Facing Left
            Set_Option_Duration(1);
        break;
        case AI_OPTION_WALK_FORWARD:
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            ai_target_relative_direction_x = sign(ai_target_relative_x);
            if (ai_target_relative_direction_x == 1) then right_down = true; else left_down = true;
            Set_Option_Duration(10);
        break;
        case AI_OPTION_WALK_BACKWARD:
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            ai_target_relative_direction_x = sign(ai_target_relative_x);
            if (ai_target_relative_direction_x == 1) then left_down = true; else right_down = true;
            Set_Option_Duration(10);
        break;
        case AI_OPTION_DASH_FORWARD:
            Turn_Off_All_Buttons();
            ai_current_option_duration = 20;
            Set_Option_Duration(ai_current_option_duration);
            if(ai_current_option_timer == ai_current_option_duration){
                Press_Hard_Toward_Target();
            }
            else Hold_Toward_Target();
            if(state != PS_DASH_START) {state = PS_DASH;}
        break;
        case AI_OPTION_DASH_BACKWARD: // Sorta buggy
            Turn_Off_All_Buttons();
            ai_current_option_duration = 20;
            Set_Option_Duration(ai_current_option_duration);
            if(ai_current_option_timer == ai_current_option_duration){
                Press_Hard_Away_Target();
            }
            else Hold_Away_Target();
            if(state != PS_DASH_START) {state = PS_DASH;}
        break;
        case AI_OPTION_CROUCH:
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            down_down = true;
            Set_Option_Duration(10);
        break;
        case AI_OPTION_ROLL_FORWARD:
            Hold_Toward_Target();
            shield_pressed = true;
            Set_Option_Duration(10);
        break;
        case AI_OPTION_ROLL_BACKWARD:
            Hold_Away_Target();
            shield_pressed = true;
            Set_Option_Duration(10);
        break;
        case AI_OPTION_PARRY:
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            shield_pressed = true;
            Set_Option_Duration(20);
        break;
        // Advanced Ground Movement
        case AI_OPTION_WAVEDASH_IN:
            ai_current_option_duration = 4;
            Set_Option_Duration(ai_current_option_duration);
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            Press_Hard_Toward_Target();
            if(ai_current_option_timer == ai_current_option_duration){
                jump_pressed = true;
            }
            if(ai_current_option_timer == ai_current_option_duration - 1){
                shield_pressed = true;
                if(!free){set_state(PS_WAVELAND);} // For some reason CPUs cannot cancel to wave land on shield press
            }
            
        break;
        case AI_OPTION_WAVEDASH_NEUTRAL:
            ai_current_option_duration = 4;
            Set_Option_Duration(ai_current_option_duration);
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            if(ai_current_option_timer == ai_current_option_duration){
                jump_pressed = true;
            }
            if(ai_current_option_timer == ai_current_option_duration - 1){
                shield_pressed = true;
                if(!free){set_state(PS_WAVELAND);}
            }
        break;
        case AI_OPTION_WAVEDASH_OUT: // TODO gets stuck doing this
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            ai_current_option_duration = 4; // Max time limit in variable so it can be varied later
            Set_Option_Duration(ai_current_option_duration);
            // Detect direction and wave dash away
            if(ai_current_option_timer == ai_current_option_duration){
                jump_pressed = true;
                Press_Hard_Away_Target();
            }
            if(ai_current_option_timer == ai_current_option_duration - 1){
                shield_pressed = true;
                // Reverse direction to do retreating wave dash
                ai_target_relative_direction_x = sign(ai_target_relative_x);
                spr_dir = ai_target_relative_direction_x;
                //if (ai_target_relative_direction_x == 1) then right_down = true; else left_down = true;
                if(!free){set_state(PS_WAVELAND);
                }
            }
        break;
        /*
        // Needs Work this doesnt want to work
        case AI_OPTION_MOONWALK_IN:
            ai_current_option_duration = initial_dash_time + 5 + 20; // Init  dash plus input plus hold
            Set_Option_Duration(ai_current_option_duration);
            Turn_Off_All_Buttons();
            // Hard Press away
            if(ai_current_option_timer == ai_current_option_duration){
                ai_target_relative_direction_x = sign(ai_target_relative_x);
                // Handle Direction setting
                if(ai_target_relative_direction_x != 0){
                spr_dir = ai_target_relative_direction_x * - 1;
                } else { spr_dir = ai_target_relative_direction_x = 1} // Face left if the value is unresolved cause spr_dir 0 is bad.
                if (ai_target_relative_direction_x == 1) then left_hard_pressed = true; else right_hard_pressed = true;
                //set_state(PS_DASH_START);
            }
            // Hold away
            if(ai_current_option_timer > ai_current_option_duration - initial_dash_time + 4){
                ai_target_relative_direction_x = sign(ai_target_relative_x);
                if (ai_target_relative_direction_x == 1) then left_down = true; else right_down = true;
            }
            // Hold Up and away
            if(ai_current_option_timer == ai_current_option_duration - initial_dash_time + 4){
                Turn_Off_All_Buttons();
                up_down = true;
                ai_target_relative_direction_x = sign(ai_target_relative_x);
                if (ai_target_relative_direction_x == 1) then left_down = true; else right_down = true;
            }
            // Hold Up
            if(ai_current_option_timer == ai_current_option_duration - initial_dash_time + 3){
                Turn_Off_All_Buttons();
                up_down = true;
                ai_target_relative_direction_x = sign(ai_target_relative_x);
                left_hard_pressed = false;
                left_down = false;
                right_down = false;
            }
            // Hold in and Up
            if(ai_current_option_timer == ai_current_option_duration - initial_dash_time + 2){
                Turn_Off_All_Buttons();
                up_pressed = true;
                ai_target_relative_direction_x = sign(ai_target_relative_x);
                if (ai_target_relative_direction_x == 1) then right_down = true; else left_down = true;
            }
            // Hold in
            if(ai_current_option_timer <= ai_current_option_duration - initial_dash_time + 1){
                Turn_Off_All_Buttons();
                up_pressed = false;
                ai_target_relative_direction_x = sign(ai_target_relative_x);
                if (ai_target_relative_direction_x == 1) then right_down = true; else left_down = true;
            }
        break;
        // Needs work this doesnt want to work
        case AI_OPTION_MOONWALK_OUT:
        break;
        */
        // Baby Dash Options seem finick need to test more
        case AI_OPTION_BABYDASH_IN:
            ai_current_option_duration = 1; //
            Set_Option_Duration(ai_current_option_duration);
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            Press_Hard_Toward_Target();
            if(ai_current_option_timer == ai_current_option_duration - 1)
                {
                    Clear_All_Button_Buffer();
                    Turn_Off_All_Buttons();
                }
        break;
        case AI_OPTION_BABYDASH_OUT:
            ai_current_option_duration = 1; //
            Set_Option_Duration(ai_current_option_duration);
            //Clear_All_Button_Buffer();
           // Turn_Off_All_Buttons();
            Press_Hard_Away_Target();
            if(ai_current_option_timer == ai_current_option_duration - 1)
                {
                    Clear_All_Button_Buffer();
                    Turn_Off_All_Buttons();
                }
        break;
        case AI_OPTION_PLATDROP_IN:
            ai_current_option_duration = 1;
            Set_Option_Duration(ai_current_option_duration);
            Turn_Off_All_Buttons();
            down_hard_pressed = true;
            Press_Hard_Toward_Target();
        break;
        case AI_OPTION_PLATDROP_NEUTRAL:
            ai_current_option_duration = 1;
            Set_Option_Duration(ai_current_option_duration);
            Turn_Off_All_Buttons();
            down_hard_pressed = true;
        break;
        case AI_OPTION_PLATDROP_OUT:
            ai_current_option_duration = 1;
            Set_Option_Duration(ai_current_option_duration);
            Turn_Off_All_Buttons();
            down_hard_pressed = true;
            Press_Hard_Away_Target();
        break;
        // Jump Options
        case AI_OPTION_JUMP_IN:
            ai_current_option_duration = jump_start_time;
            Set_Option_Duration(ai_current_option_duration);
            // Turn off all buttons at beginning
            if(ai_current_option_timer == ai_current_option_duration){
                Turn_Off_All_Buttons();
                Press_Hard_Toward_Target();
            }
             // Hold Jump the entire duration
            jump_pressed = true;
            Hold_Toward_Target();
        break;
        case AI_OPTION_JUMP_UP:
            ai_current_option_duration = jump_start_time;
            Set_Option_Duration(ai_current_option_duration);
            // Turn off all buttons at beginning
            if(ai_current_option_timer == ai_current_option_duration){
                Turn_Off_All_Buttons();
            }
             // Hold Jump the entire duration
            jump_pressed = true;
        break;
        case AI_OPTION_JUMP_OUT:
            ai_current_option_duration = jump_start_time;
            Set_Option_Duration(ai_current_option_duration);
            // Turn off all buttons at beginning
            if(ai_current_option_timer == ai_current_option_duration){
                Turn_Off_All_Buttons();
            }
            // One Frame in start holding back, to prevent turning around.
            if(ai_current_option_timer < ai_current_option_duration){
                Press_Hard_Away_Target();
                Hold_Away_Target();
            }
             // Hold Jump the entire duration
            jump_pressed = true;
        break;
        case AI_OPTION_SHORTHOP_IN:
            ai_current_option_duration = jump_start_time + 1;
            Set_Option_Duration(ai_current_option_duration);
            // Turn off all buttons at beginning
            if(ai_current_option_timer == ai_current_option_duration){
                Turn_Off_All_Buttons();
                Press_Hard_Toward_Target();
                jump_pressed = true;
            }
            // After 1st frame release Jump to short hop but continue holding in
            else {
                Hold_Toward_Target();
                jump_pressed = false;
            }
        break;
        case AI_OPTION_SHORTHOP_UP:
            ai_current_option_duration = jump_start_time + 1;
            Set_Option_Duration(ai_current_option_duration);
            // Turn off all buttons at beginning
            if(ai_current_option_timer == ai_current_option_duration){
                Turn_Off_All_Buttons();
                jump_pressed = true;
            }
            // After 1st frame release Jump to short hop but continue holding in
            else {
                jump_pressed = false;
            }
        break;
        case AI_OPTION_SHORTHOP_OUT:
            ai_current_option_duration = jump_start_time + 1;
            Set_Option_Duration(ai_current_option_duration);
            // Turn off all buttons at beginning
            if(ai_current_option_timer == ai_current_option_duration){
                Turn_Off_All_Buttons();
                Press_Hard_Away_Target();
                jump_pressed = true;
            }
            // After 1st frame release Jump to short hop but continue holding in
            else {
                Hold_Away_Target();
                jump_pressed = false;
            }
        break;
        case AI_OPTION_PLATBOOST_IN:
            ai_current_option_duration = 3;
            Set_Option_Duration(ai_current_option_duration);
            Turn_Off_All_Buttons();
            // Start Moving Forward
            if(ai_current_option_timer == ai_current_option_duration){
                Press_Hard_Toward_Target();
            }
            // Remove down hard pressed and input jump
            if(ai_current_option_timer == ai_current_option_duration - 1){
                down_hard_pressed = true;
                Hold_Toward_Target();
            }
            if(ai_current_option_timer == ai_current_option_duration - 2){
                down_hard_pressed = false;
                jump_pressed = true;
                Hold_Toward_Target();
            }
        break;
        case AI_OPTION_PLATBOOST_OUT:
            ai_current_option_duration = 3;
            Set_Option_Duration(ai_current_option_duration);
            Turn_Off_All_Buttons();
            // Start Moving Out
            if(ai_current_option_timer == ai_current_option_duration){
                down_hard_pressed = true;
                Press_Hard_Away_Target();
            }
            // Remove down hard pressed and input jump
            if(ai_current_option_timer == ai_current_option_duration - 1){
                down_hard_pressed = true;
                Hold_Away_Target();
            }
            if(ai_current_option_timer == ai_current_option_duration - 2){
                down_hard_pressed = false;
                jump_pressed = true;
                Hold_Away_Target();
            }
        break;
    // Aerial Options
        case AI_OPTION_AIRDODGE_NEUTRAL:
            ai_current_option_duration = 25;
            Set_Option_Duration(ai_current_option_duration);
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            shield_pressed = true;
            if(state == PS_AIR_DODGE){
                switch(window){
                    case 0: hsp = 0; vsp = 0;break;
                    case 1: hsp = 0; vsp = 0;break;
                    case 2: hsp = 0; vsp = 0;break;
                }
            }
        break;
        case AI_OPTION_AIRDODGE_UP:
            ai_current_option_duration = 25;
            Set_Option_Duration(ai_current_option_duration);
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            shield_pressed = true;
            up_down = true;
            if(state == PS_AIR_DODGE){
                switch(window){
                    case 0: hsp = 0; vsp = 0;break;
                    case 1: hsp = 0; vsp = -1 * air_dodge_speed;break;
                    case 2: hsp = 0; vsp = 0;break;
                }
            }
        break;
        case AI_OPTION_AIRDODGE_UP_IN:
            ai_current_option_duration = 25;
            Set_Option_Duration(ai_current_option_duration);
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            shield_pressed = true;
            up_down = true;
            Hold_Toward_Target();
            if(state == PS_AIR_DODGE){
                switch(window){
                    case 0: hsp = 0; vsp = 0;break;
                    case 1: hsp = 0.707 * spr_dir * air_dodge_speed; vsp = 0.707 * -1 * air_dodge_speed;break; // Trig
                    case 2: hsp = 0; vsp = 0;break;
                }
            }
        break;
        case AI_OPTION_AIRDODGE_IN:
            ai_current_option_duration = 25;
            Set_Option_Duration(ai_current_option_duration);
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            Hold_Toward_Target();
            shield_pressed = true;
            if(state == PS_AIR_DODGE){
                switch(window){
                    case 0: hsp = 0;vsp = 0;break;
                    case 1: hsp = air_dodge_speed * spr_dir; vsp = 0; break;
                    case 2: hsp = 0; vsp = 0;break;
                }
            }
        break;
        case AI_OPTION_AIRDODGE_DOWN_IN:
            ai_current_option_duration = 25;
            Set_Option_Duration(ai_current_option_duration);
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            shield_pressed = true;
            down_down = true;
            Hold_Toward_Target();
            if(state == PS_AIR_DODGE){
                switch(window){
                    case 0: hsp = 0; vsp = 0;break;
                    case 1: hsp = 0.707 * spr_dir * air_dodge_speed; vsp = 0.707 * air_dodge_speed;break; // Trig
                    case 2: hsp = 0; vsp = 0;break;
                }
            }
        break;
        case AI_OPTION_AIRDODGE_DOWN:
            ai_current_option_duration = 25;
            Set_Option_Duration(ai_current_option_duration);
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            shield_pressed = true;
            down_down = true;
            if(state == PS_AIR_DODGE){
                switch(window){
                    case 0: hsp = 0; vsp = 0;break;
                    case 1: hsp = 0; vsp = 1 * air_dodge_speed;break;
                    case 2: hsp = 0; vsp = 0;break;
                }
            }
        break;
        case AI_OPTION_AIRDODGE_DOWN_OUT:
            ai_current_option_duration = 25;
            Set_Option_Duration(ai_current_option_duration);
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            shield_pressed = true;
            down_down = true;
            Hold_Away_Target();
            if(state == PS_AIR_DODGE){
                switch(window){
                    case 0: hsp = 0; vsp = 0;break;
                    case 1: hsp = -1 * 0.707 * spr_dir * air_dodge_speed; vsp = 0.707 * 1 * air_dodge_speed;break; // Trig
                    case 2: hsp = 0; vsp = 0;break;
                }
            }
        break;
        case AI_OPTION_AIRDODGE_OUT:
            ai_current_option_duration = 25;
            Set_Option_Duration(ai_current_option_duration);
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            shield_pressed = true;
            Hold_Away_Target();
            if(state == PS_AIR_DODGE){
                switch(window){
                    case 0: hsp = 0; vsp = 0;break;
                    case 1: hsp = -1 *air_dodge_speed; vsp = 0;break;
                    case 2: hsp = 0; vsp = 0;break;
                }
            }
        break;
        case AI_OPTION_AIRDODGE_UP_OUT:
            ai_current_option_duration = 25;
            Set_Option_Duration(ai_current_option_duration);
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            shield_pressed = true;
            up_down = true;
            Hold_Away_Target();
            if(state == PS_AIR_DODGE){
                switch(window){
                    case 0: hsp = 0; vsp = 0;break;
                    case 1: hsp = -1 * 0.707 * spr_dir * air_dodge_speed; vsp = 0.707 * -1 * air_dodge_speed;break; // Trig
                    case 2: hsp = 0; vsp = 0;break;
                }
            }
        break;
    
    // Aerial Options
        case AI_OPTION_AIR_NEUTRAL:
            Clear_All_Button_Buffer();
            Turn_Off_All_Buttons();
            ai_current_option_duration = 2;
            Set_Option_Duration(ai_current_option_duration);
        break;
        case AI_OPTION_AIRDRIFT_IN:
            Turn_Off_All_Buttons();
            Hold_Toward_Target();
            ai_current_option_duration = 10;
            Set_Option_Duration(ai_current_option_duration);
        break;
        case AI_OPTION_AIR_IDLE:
            Turn_Off_All_Buttons();
            ai_current_option_duration = 10;
            Set_Option_Duration(ai_current_option_duration);
        break;
        case AI_OPTION_AIRDRIFT_OUT:
            Turn_Off_All_Buttons();
            Hold_Away_Target();
            ai_current_option_duration = 10;
            Set_Option_Duration(ai_current_option_duration);
        break;
        case AI_OPTION_FASTFALL:
            Turn_Off_All_Buttons();
            down_hard_pressed = true;
            ai_current_option_duration = 10;
            Set_Option_Duration(ai_current_option_duration);
        break;
        case AI_OPTION_DJUMP_IN:
            ai_current_option_duration = 10;
            Set_Option_Duration(ai_current_option_duration);
            Turn_Off_All_Buttons();
            Hold_Toward_Target();
            if(ai_current_option_timer == ai_current_option_duration){jump_pressed = true;}
        break;
        case AI_OPTION_DJUMP_NEUTRAL:
            ai_current_option_duration = 10;
            Set_Option_Duration(ai_current_option_duration);
            Turn_Off_All_Buttons();
            if(ai_current_option_timer == ai_current_option_duration){jump_pressed = true;}
        break;
        case AI_OPTION_DJUMP_OUT:
            ai_current_option_duration = 10;
            Set_Option_Duration(ai_current_option_duration);
            Turn_Off_All_Buttons();
            Hold_Away_Target();
            if(ai_current_option_timer == ai_current_option_duration){jump_pressed = true;}
        break;
        case AI_OPTION_HITFALL:
            Turn_Off_All_Buttons();
            Hold_Toward_Target();
            down_hard_pressed = true;
            // Force waiting for landing for this state and then end state during landing
            if(free){
                ai_current_option_timer = land_time;
            }
        break;
        
        default:
        break;
    }
}

#define Insert_Into_Option_Buffer(option)
{
	// Push into Array
	array_push(ai_option_buffer,option);
	
}

#define Multi_Insert_Into_Option_Buffer()

// Run a for loop that checks the number arguements and then pushes 
// them into the array linearly until all options are exhausted
for(var i = 0; i < argument_count;i++){
    array_push(ai_option_buffer,argument[i]);
}


#define Pop_Rear_From_Option_Buffer()
{
    // Pop out of array
    if(array_length(ai_option_buffer) > 0){
    	// retrieve data at store to variable
    	var option = ai_option_buffer[array_length(ai_option_buffer) - 1];
    	// Emulate array pop function to remove it from the array
    	ai_option_buffer = array_slice(ai_option_buffer,0,array_length(ai_option_buffer) - 1); 
    	//print(temp_attack);
        return option
    }
    else return "";
}

#define Pop_Front_From_Option_Buffer()
{
    // Pop out of array
    if(array_length(ai_option_buffer) > 0){
    	// retrieve data at store to variable
    	var option = ai_option_buffer[0];
    	// Emulate array pop function to remove it from the array
    	ai_option_buffer = array_slice(ai_option_buffer,1,array_length(ai_option_buffer) - 1); 
    	//print(temp_attack);
        return option
    }
    else return "";
}

#define Read_From_Option_Buffer()
{
    // Pop out of array
    if(array_length(ai_option_buffer) > 0){
    	// retrieve data at store to variable
    	var option = ai_option_buffer[array_length(ai_option_buffer) - 1];
    	// Emulate array pop function to remove it from the array
    	//ai_option_buffer = array_slice(ai_option_buffer,0,array_length(ai_option_buffer) - 1); 
    	//print(temp_attack);
        return option
    }
    else return "";
}

#define Check_Current_Attack_Active(option)
{
    // Only checks attack options
    if(attack == option && state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
        //print("current active attack:" + string(attack));
        return true;
    }
    else return false;
}

#define Set_Option_Duration(ai_current_option_duration)
{
    // Set a fresh variable only if its zero
    if(ai_current_option_timer == 0){
        ai_current_option_timer = ai_current_option_duration;
    }
}
#define Turn_Off_All_Buttons()
{
    //[direction]_hard_pressed
    attack_down = false;
    special_down = false;
    jump_down = false;
    taunt_down = false;
    shield_down = false;
    up_down = false;
    down_down = false;
    right_down = false;
    left_down = false;
    right_strong_pressed = false
    left_strong_pressed = false
    up_strong_pressed = false
    down_strong_pressed = false
    right_hard_pressed = false;
    left_hard_pressed = false;
    up_hard_pressed = false;
    down_hard_pressed = false;
}
