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

// debrug draw
// Draw AI Variables

// Variable Info
/*
ai_target -	The current target of the AI.
ai_recovering -	Is true while the AI is attempting to recover back onto the stage.
temp_level -	The difficulty level of the AI, from 1 to 9.
ai_attack_timer -	The amount of frames since the AI last attacked.
ai_attack_time -	The minimum amount of frames before the AI can try attacking again.
ready_to_attack -	Is true if the AI can perform an attack.
ai_going_into_attack -	Is true if the AI is attempting to attack.
ai_going_left -	Is true if the AI is moving left.
ai_going_right -	Is true if the AI is moving right.

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
/*
// Left Side Data - AI Built in stuff
// Temp variables to move the draw
//if (get_training_cpu_action() == CPU_FIGHT) {
    
    // Convert Macros to text
    var ai_self_zone_string;
    switch(ai_self_zone){
        case AI_STAGE_ZONE_MID_STAGE_ON_STAGE:
            ai_self_zone_string = "MID_STAGE_ON_STAGE";
        break;
        case AI_STAGE_ZONE_MID_STAGE_MID_ZONE:
            ai_self_zone_string = "MID_STAGE_MID_ZONE";
        break;
        case AI_STAGE_ZONE_MID_STAGE_DANGER_ZONE:
            ai_self_zone_string = "MID_STAGE_DANGER_ZONE";
        break;
        case AI_STAGE_ZONE_NEAR_LEDGE_ON_STAGE:
            ai_self_zone_string = "NEAR_LEDGE_ON_STAGE";
        break;
        case AI_STAGE_ZONE_NEAR_LEDGE_MID_ZONE:
            ai_self_zone_string = "NEAR_LEDGE_MID_ZONE";
        break;
        case AI_STAGE_ZONE_NEAR_LEDGE_DANGER_ZONE:
            ai_self_zone_string = "NEAR_LEDGE_DANGER_ZONE";
        break;
        case AI_STAGE_ZONE_OFF_LEDGE_LEVEL_STAGE:
            ai_self_zone_string = "OFF_LEDGE_LEVEL_STAGE";
        break;
        case AI_STAGE_ZONE_OFF_LEDGE_MID_ZONE:
            ai_self_zone_string = "OFF_LEDGE_MID_ZONE";
        break;
        case AI_STAGE_ZONE_OFF_LEDGE_DANGER_ZONE:
            ai_self_zone_string = "OFF_LEDGE_DANGER_ZONE";
        break;
        case AI_STAGE_ZONE_FAR_OFF_LEDGE_LEVEL_STAGE:
            ai_self_zone_string = "FAR_OFF_LEDGE_LEVEL_STAGE";
        break;
        case AI_STAGE_ZONE_FAR_OFF_LEDGE_MID_ZONE:
            ai_self_zone_string = "FAR_OFF_LEDGE_MID_ZONE";
        break;
        case AI_STAGE_ZONE_FAR_OFF_LEDGE_DANGER_ZONE:
            ai_self_zone_string = "FAR_OFF_LEDGE_DANGER_ZONE";
        break;
    }

    
    // Print Variables
    var current_x = floor(view_get_xview() + 100);
    var current_y = floor(view_get_yview() + 10);
    var y_offset_per_line = 13;
    
    // ---AI Built In Variables---
    draw_debug_text(current_x, current_y,"---AI Variables---");
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"Target:" + string(get_char_info(ai_target.player, INFO_STR_NAME))); // Target
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"temp_level:"+ string(temp_level)); 
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"ai_attack_timer:"+ string(ai_attack_timer)); 
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"ai_attack_time:"+ string(ai_attack_time));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"ready_to_attack:"+ string(ready_to_attack));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"going_into_attack:"+ string(ai_going_into_attack));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"going_left:"+ string(ai_going_left));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"going_right:"+ string(ai_going_right));
    current_y += y_offset_per_line;
    current_y += y_offset_per_line;
    
    //State Variables
    draw_debug_text(current_x, current_y,"---State Variables---");
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"Recovering:"+ string(ai_recovering)); 
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"state:" + get_state_name( state )); 
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"state_timer:" + string(state_timer)); 
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"state_cat:" + string(state_cat));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"window:" + string(window));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"window_timer:" + string(window_timer));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"self_zone:" + string(ai_self_zone_string));
    current_y += y_offset_per_line;
    current_y += y_offset_per_line;
    // --- AI Input Reading ---
    draw_debug_text(current_x, current_y,"---AI Input Reading---"); //Attack
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"Atk input:" + string(attack_pressed)); //Attack
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"Spl input:" + string(special_pressed)); //special
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"Sld input:" + string(shield_pressed)); //special
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"Jmp input:" + string(jump_pressed)); //special
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"Tnt input:" + string(taunt_pressed)); //special
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"L.STR input:" + string(left_strong_pressed)); //special
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"U.STR input:" + string(up_strong_pressed)); //special
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"R.STR input:" + string(right_strong_pressed)); //special
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"D.STR input:" + string(down_strong_pressed)); //special
    current_y += y_offset_per_line;
    //draw_debug_text(current_x, current_y,"Joy Idle:" + string(joy_idle));
    //current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"Joy Direction:" + string(joy_dir));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"Left Down:" + string(left_down));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"Up Down:" + string(up_down));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"Right Down:" + string(right_down));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"Down Down:" + string(down_down));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"Left Hard Pressed:" + string(left_hard_pressed));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"Up Hard Pressed:" + string(up_hard_pressed));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"Right Hard Pressed:" + string(right_hard_pressed));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"Down Hard Pressed:" + string(down_hard_pressed));
    current_y += y_offset_per_line;
    
    // Right Side Data - Custom AI Stff
    // Temp variables to move the draw
    var current_x = floor(view_get_xview() + view_get_wview() - 210);
    var current_y = floor(view_get_yview() + 10);
    var y_offset_per_line = 13;
    
    draw_debug_text(current_x, current_y,"---Resource Variables---");
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"djumps:" + string(djumps));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"has_airdodge:" + string(has_airdodge));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"has_walljump:" + string(has_walljump));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"ai_near_wall:" + string(ai_near_wall));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"djump_given_back_flag:" + string(djump_given_back_flag));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"dspecial_recov_command:" + string(ai_dspecial_recovery_commanded));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"fspecial_recovery_enabled:" + string(fspecial_recovery_enabled_flag));
    current_y += y_offset_per_line;
    
    // Custom Variables
    draw_debug_text(current_x, current_y,"---Target Location---");
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"self_x:" + string(x));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"self_y:" + string(y));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"target_x:" + string(ai_target.x));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"target_y:" + string(ai_target.y));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"target_zone:" + string(ai_target_zone));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"target_relative_x:" + string(ai_target_relative_x));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"target_relative_y:" + string(ai_target_relative_y));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"target_relative_zone:" + string(ai_target_relative_zone));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"target_relative_direction_x:" + string(ai_target_relative_direction_x));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"target_relative_direction_y:" + string(ai_target_relative_direction_y));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"ai_facing_target:" + string(ai_facing_target));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"facing_target_dist_x:" + string(ai_facing_target_distance_x));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"facing_target_dist_y:" + string(ai_facing_target_distance_y));
    current_y += y_offset_per_line;
    

    draw_debug_text(current_x, current_y,"---Advantage Variables---");
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"target_percent:" + string(ai_target_percent));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"target_mark_status:" + string(ai_target_mark_status));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"ai_target_DI_weight:" + string(ai_target_DI_weight));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"guess_target_DI_val:" + string(ai_guess_target_DI_direction_value));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"guess_target_DI_dir:" + string(ai_guess_target_DI_direction));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"has_hit:" + string(has_hit));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"attack_that_hit:" + string(ai_attack_that_hit));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"adv_option_select:" + string(ai_advantage_option_selector));
    current_y += y_offset_per_line;
    
    
    draw_debug_text(current_x, current_y,"---Disadvan Variables---");
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"DI Angle:" + string(ai_disadv_di_angle));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"Angle Sent:" + string(ai_disadv_angle_being_sent));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"KB Sent:" + string(ai_disadv_kb_value));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"DI_weight:" + string(ai_self_DI_weight));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"DI_direction_value:" + string(ai_self_DI_direction_value));
    current_y += y_offset_per_line;
    
    var temp_string;
    switch(ai_self_DI_direction){
            case -1: temp_string = "IN";break;
            case 0: temp_string = "NO DI";break;
            case 1: temp_string = "OUT";break;
    }
    draw_debug_text(current_x, current_y,"DI_direction:" + string(temp_string));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"ai_disadv_drift_weight:" + string(ai_disadv_drift_weight));
    current_y += y_offset_per_line;
    
    switch(ai_disadv_drift_direction){
            case -1: temp_string = "IN";break;
            case 0: temp_string = "NO DI";break;
            case 1: temp_string = "OUT";break;
    }
    draw_debug_text(current_x, current_y,"drift_direction:" + string(temp_string));

    // AI Option Buffer and Sequence
    current_x = floor(view_get_xview() + 250);
    current_y = floor(view_get_yview() + 10);
    draw_debug_text(current_x, current_y,"---Sequence Variables---");
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"current_mode:" + string(ai_current_mode));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"option_buffer:" + string(ai_option_buffer));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"current_option:" + string(ai_current_option));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"current_option_timer:" + string(ai_current_option_timer));
    current_y += y_offset_per_line;
    draw_debug_text(current_x, current_y,"current_option_duration:" + string(ai_current_option_duration));
    current_y += y_offset_per_line;   
    current_y += y_offset_per_line;
    
    if(ai_current_mode == 20 && !ai_recovering){
    draw_sprite_ext(asset_get("knock_back_arrow_spr"),0,x,y - 100,1,1,ai_disadv_di_angle,c_white,1);
    draw_sprite_ext(asset_get("knock_back_arrow_spr"),0,x,y - 100,1,1,ai_disadv_angle_being_sent,c_dkgray,1);
    draw_sprite_ext(asset_get("knock_back_arrow_spr"),0,x,y - 130,ai_disadv_drift_direction * ai_target_relative_direction_x * -1,1,0,c_blue,1);
    }
    
    //Target DI Indicator
    if(instance_exists(ai_target) && ai_target.state_cat == SC_HITSTUN){
        var temp_string;
        switch(ai_guess_target_DI_direction){
            case -1: temp_string = "IN";break;
            case 0: temp_string = "NO DI";break;
            case 1: temp_string = "OUT";break;
        }
        draw_debug_text(ai_target.x - 40, ai_target.y - ai_target.char_height - 30,"guessed DI:" + temp_string);
    }
    
    // Geographical
    
//}