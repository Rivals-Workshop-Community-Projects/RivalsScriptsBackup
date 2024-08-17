//uses some aspects of Fudgepop's AI Framework as a base. (twitter.com/fudgepop01)

if (is_master_player) exit;
if (!custom_clone) {
    disable_ai = !(get_training_cpu_action() == CPU_FIGHT);
    
    //default AI for specials
    if (state == PS_ATTACK_AIR) {
        switch (attack) {
            case AT_USPECIAL:
            case AT_USPECIAL_2:
                //mash special
                special_pressed = true;
                //try to walljump
                jump_pressed = true;
            break;
            case AT_FSPECIAL:
            case AT_FSPECIAL_2:
                //try to walljump
                jump_pressed = true;
                //desync too if the partner is onstage
                special_down = (instance_exists(teammate_player_id) && !(teammate_player_id.free));
            break;
            
        }
    }
    
    exit;
}
disable_ai = true;

// platform data object indexes
#macro PD_DATA 0
#macro PD_COUNT 1

// raw platform data object indexes
#macro RPD_BBOX 0
#macro RPD_TYPE 1

// platform distance data object indexes
#macro PDD_DIST 0
#macro PDD_BBOX 1
#macro PDD_TYPE 2

// bounding box indexes
#macro BBOX_TOP 0
#macro BBOX_BOTTOM 1
#macro BBOX_LEFT 2
#macro BBOX_RIGHT 3

// input values
#macro INP_ATTACK 1 << 0
#macro INP_SPECIAL 1 << 1
#macro INP_JUMP 1 << 2
#macro INP_SHIELD 1 << 3

#macro INP_LEFT 1 << 4
#macro INP_RIGHT 1 << 5
#macro INP_UP 1 << 6
#macro INP_DOWN 1 << 7

#macro INP_LEFT_HARD 1 << 8
#macro INP_RIGHT_HARD 1 << 9
#macro INP_UP_HARD 1 << 10
#macro INP_DOWN_HARD 1 << 11

#macro INP_LEFT_STRONG 1 << 12
#macro INP_RIGHT_STRONG 1 << 13
#macro INP_UP_STRONG 1 << 14
#macro INP_DOWN_STRONG 1 << 15

#macro INP_TAUNT 1 << 16

#macro INP_ATTACK_PRESSED 1 << 17
#macro INP_SPECIAL_PRESSED 1 << 18
#macro INP_JUMP_PRESSED 1 << 19
#macro INP_SHIELD_PRESSED 1 << 20

#macro INP_LEFT_STICK 1 << 21
#macro INP_RIGHT_STICK 1 << 22
#macro INP_UP_STICK 1 << 23
#macro INP_DOWN_STICK 1 << 24

//minun attack indexes

#macro AT_MINUN_JAB 0
#macro AT_MINUN_FTILT 2
#macro AT_MINUN_DTILT 3
#macro AT_MINUN_UTILT 39

#macro AT_MINUN_DATTACK 44
#macro AT_MINUN_FAIR 45
#macro AT_MINUN_BAIR 46
#macro AT_MINUN_DAIR 47
#macro AT_MINUN_UAIR 48
#macro AT_MINUN_NAIR 49

if (!bboxes_obtained) obtain_stage_bboxes();
if (!jump_data_obtained) obtain_jump_data();

ai_inputs = 0;

if (host_player == self) ds_map_clear(ai_fn_cache);
//clear_ai_inputs();
//ct = current_time;
  if instance_exists(teammate_player_id) main();
//ct = current_time - ct;
process_inputs();





// ====================== "AI SCRIPTS" ======================

// the main AI "hub" script that controls stuff 
#define main()
    disable_ai = true;
    var b 
    var leader_x;
    with (teammate_player_id) {
        //if (master_player_id.special_held) b = (buffer_counter + partner_input_buffer_delay - 1) mod (partner_input_buffer_delay);
        if (master_player_id.special_held) b = (buffer_counter + partner_input_buffer_delay - 1 - species_id) mod (partner_input_buffer_delay);
        else b = (buffer_counter + !species_id) mod (partner_input_buffer_delay);
        leader_x = buffer_x_position[b];// + round(hsp * 6 - spr_dir * (40 * (state != PS_WALK_TURN && state != PS_DASH_TURN)));
        
    }
    predicted_x = predict_x_position();
    
    var leader_x_distance = abs((teammate_player_id.x + teammate_player_id.hsp) - (x + hsp));//abs(teammate_player_id.x - x);
    var leader_x_direction = sign((teammate_player_id.x + teammate_player_id.hsp) - (x + hsp));//sign((teammate_player_id.x - (2 * teammate_player_id.spr_dir)) - x);
    //var leader_x_direction = sign((teammate_player_id.x - (2 * teammate_player_id.spr_dir)) - x);
    
    var leader_target_x_distance, leader_target_x_direction;
    
    if (y + 16 < teammate_player_id.y) {
        leader_target_x_distance = leader_x_distance;
        leader_target_x_direction = leader_x_direction;
    }
    else {
        leader_target_x_distance = abs(leader_x - x);
        leader_target_x_direction = sign(leader_x - x);
    }
    
    
    
    artificial_dash = sign(artificial_dash) * (abs(artificial_dash) - 1); 
    
    ai_prev_inputs_raw = ai_inputs_raw;

    clear_ai_inputs();
    
    ai_prev_inputs_raw = ai_inputs_raw;
    ai_inputs = teammate_player_id.buffer_ai_inputs[b];
    ai_inputs_raw = teammate_player_id.buffer_ai_inputs[b];
    joy_dir = teammate_player_id.buffer_joy_dir[b];
    joy_pad_idle = teammate_player_id.buffer_joy_pad_idle[b];
    do_not_jump = false;
    
    var run_predicted_routine = false;
    var run_recovery_routine = false;
    var master_special_held = master_player_id.special_held;
    
    //check if the ai has made any attack input (that it can actually perform)
    var made_an_attack_input = 
     ( ((ai_inputs & INP_SHIELD_PRESSED) != 0) //|| ((ai_inputs |= INP_TAUNT) != 0 && !free)
    || (can_attack && (ai_inputs & INP_ATTACK_PRESSED) != 0)
    || (can_strong && ( (ai_inputs & INP_LEFT_STRONG) != 0 || (ai_inputs & INP_RIGHT_STRONG) != 0 || (ai_inputs & INP_DOWN_STRONG) != 0 ) )
    || (can_ustrong && (ai_inputs & INP_UP_STRONG) != 0)  );
    
    
    //don't jump if grounded and the leader is way lower down - unless the player also inputted an attack.
    //if (!free && !made_an_attack_input && teammate_player_id.buffer_y_position[b] > y) {
    if (!master_special_held) {
        if (!made_an_attack_input && teammate_player_id.buffer_y_position[b] > y + (free) * djump_height) {
            ai_inputs &= ~(INP_JUMP_PRESSED | INP_JUMP);
            //jump_pressed = false;
            jump_counter = 10;
            do_not_jump = true;
        }
        
        //don't fastfall if below the leader and the leader is grounded
        else if (free && y > teammate_player_id.buffer_y_position[b] + (!(teammate_player_id.free)) * djump_height) {
            ai_inputs &= INP_DOWN_HARD;
            down_hard_counter = 10;
        }
    }
    

    if ((made_an_attack_input || jump_pressed) && state != PS_PRATFALL && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) {
        run_predicted_routine = false;
        //face the right direction when jumping off of the ground
        if (teammate_player_id.buffer_sync_state[b]== PS_JUMPSQUAT && state == PS_JUMPSQUAT && teammate_player_id.free && !master_special_held ) {
            spr_dir = teammate_player_id.spr_dir;
        }

    }
    else {

        switch (state) {
            case PS_HITSTUN_LAND:
            case PS_WRAPPED:
            case PS_FROZEN:
                clear_dir();
            break;
            
            case PS_HITSTUN:
            //case PS_TUMBLE:

                
                clear_dir();
                if (hitpause) {
                    //in hitstun, always DI towards the partner and drift in. 
                    //joy_dir = round(point_direction(x, y, teammate_player_id.x, teammate_player_id.y));
                    //joy_pad_idle = false;
                    
                    if (hitstop > 1) {
                        //SDI towards the partner.
                        joy_dir = round( point_direction(x, y, teammate_player_id.x, teammate_player_id.y) );
                        joy_pad_idle = true = false;
                    }
                    else {
                        //no-DI when hitstun ends.
                        joy_dir = 90;
                        joy_pad_idle = true;
                        
                    }
                    //drift towards the partner.
                    var teammate_dir = sign(teammate_player_id.x - x);
                    move_in_x_direction(-sign(teammate_dir), false);
                }

                else if (hsp != 0) {
                    move_in_x_direction(-sign(hsp), false);
                }
            break;
            
            
            case PS_DOUBLE_JUMP:
                if (state_timer <= 0) { 
                    jump_counter = 10; up_hard_counter = 10; 
                }
                /*
                else if (state_timer == 2) {
                    print("leader x dir: " + string(leader_x_direction));
                    print("holding dir: " + string((ai_inputs & INP_LEFT != 0) - (ai_inputs & INP_RIGHT != 0)))
                    if ( !(master_player_id.special_held) && leader_x_direction == (ai_inputs & INP_LEFT != 0) - (ai_inputs & INP_RIGHT != 0) && !hitpause ) {
                        hsp -= leader_x_direction * jump_change;
                        print("don't jump too far -- hsp changed by " + string(leader_x_direction * jump_change));
                    }
                }
                */
                run_recovery_routine = true;
            break;
            
            case PS_WALL_JUMP:
                if (state_timer <= 0) { jump_counter = 10; up_hard_counter = 10; }
                //always hold in after a walljump, unless the leader is further out *and holding out.
                var teammate_dir = sign(teammate_player_id.x - x);
                var holding_dir = (ai_inputs & INP_RIGHT != 0) - (ai_inputs & INP_LEFT != 0);
                if (teammate_dir == holding_dir) break;
                
                move_in_x_direction(-sign(hsp), false);
                if (vsp >= 0) run_recovery_routine = true;
            break;
            
            case PS_PRATFALL:
                
                //drift back to stage if offstage. otherwise drift to the leader. 
                // 
                var recover_x;
                //if y >= teammate_player_id.y || 
                if ((teammate_player_id.state != PS_PRATFALL && get_floor_from(x, y) == noone) || teammate_player_id.activated_kill_effect) {
                    recover_x = round(room_width / 2);
                }
                else if (!master_special_held) {
                    recover_x = teammate_player_id.x;
                }
                //still drift to the leader if the player wants to desync, but on a delay.
                else {
                    recover_x = leader_x;
                }
                move_towards_x_position(recover_x, false);
                ai_inputs |= INP_JUMP_PRESSED;
                //else {
                //    run_recovery_routine = true;
                //}
            break;
            
            case PS_DASH:
                if (master_special_held) break;
                //var holding_dir = (ai_inputs & INP_RIGHT != 0) - (ai_inputs & INP_LEFT != 0);
                run_predicted_routine = true;
            break;
            
            case PS_DASH_START:
                if (master_special_held) break;
                //var holding_dir = (ai_inputs & INP_RIGHT != 0) - (ai_inputs & INP_LEFT != 0);
                //clause for moonwalk inputs
                if (sign(hsp) == spr_dir || state_timer <= 0) run_predicted_routine = true;
            break;
            
            case PS_FIRST_JUMP:
                if (state_timer <= 0) jump_counter = 10;
                
                if (!master_special_held) {
                    
                    //if we're jumping out of sync with the player, input a long jump if the player is way higher up AND not in a committed state AND the player doesn't want to desync.
                    if (state_timer <= 0 
                     && teammate_player_id.state_cat != SC_AIR_COMMITTED 
                     && teammate_player_id.buffer_y_position[b]< y - 30 
                     && teammate_player_id.y < y - 30) {
                        ai_inputs |= INP_JUMP;
                    }
                    //double jump if necessary
                    else if (state_timer > 0 && vsp > 0.5 
                     && !teammate_player_id.free 
                     && teammate_player_id.buffer_y_position[b]< y 
                     && teammate_player_id.y < y - 100 ) {
                        ai_inputs |= INP_JUMP_PRESSED;
                     }
                }
                    
                //then do all of the normal stuff
                run_recovery_routine = true;
            break;
            
            case PS_LAND:
            case PS_LANDING_LAG:
            case PS_WAVELAND:
                if (state_timer <= 0) { jump_counter = 10; up_hard_counter = 10; down_hard_counter = 10; }
                run_recovery_routine = true;
            break;
            
            case PS_PARRY_START:
                if (state_timer <= 0) { shield_counter = 10; down_hard_counter = 10; }
            break;
            
            case PS_AIR_DODGE:
                if (state_timer <= 0) { shield_counter = 10; down_hard_counter = 10; }
                run_recovery_routine = true;
            break;
            
            case PS_DASH_STOP:
            case PS_SPAWN:
                //do nothing.
            break;
            
            
            case PS_RESPAWN:
            break;
            
            
            
            case PS_ATTACK_AIR:
            case PS_ATTACK_GROUND:
                if (state_timer <= 0) { 
                    attack_counter = 10; 
                    special_counter = 10; 
                    up_stick_counter = 10; 
                    left_stick_counter = 10; 
                    down_stick_counter = 10;
                    right_stick_counter = 10;
                    //break; 
                }

                switch (attack) {
                    //always uspecial diagonally if this is not a team-up move.
                    case AT_USPECIAL:
                    case AT_USPECIAL_2:
                        if (teammate_player_id.attack == AT_USPECIAL_GROUND 
                        && (teammate_player_id.state == PS_ATTACK_AIR || teammate_player_id.state == PS_ATTACK_GROUND)) {
                            //if teaming up, ignore the buffer and inherit the player's inputs directly
                            joy_pad_idle = teammate_player_id.joy_pad_idle;
                            joy_dir = teammate_player_id.joy_dir;
                        }
                        else {
                            //otherwise, hold towards the stage.
                            //hold straight up if at the wall AND the top of the ledge is more than a few pixels away.
                            joy_pad_idle = false;
                            var recover_dir = sign((room_width / 2) - x);
                            if (window == 2 && is_end_of_window() 
                             &&  place_meeting(x + recover_dir * 16, y, asset_get("par_block")) 
                             &&  place_meeting(x + recover_dir * 16, y - round(uspecial_travel_speed * 2), asset_get("par_block"))) {
                                joy_dir = 90;
                            }
                            else {
                                joy_dir = 90 - 45 * recover_dir;
                            }
                            //mash jump.
                            jump_pressed = true;
                            //hold in the direction pressed.
                            move_in_x_direction(recover_dir, false);
                        }
                    break;
                    
                    case AT_TAUNT:
                    case AT_TAUNT_2:
                        //do nothing, it's a taunt
                    break;
                    
                    //drift back to the leader during aerial recovery frames.
                    case AT_NAIR:
                    case AT_FAIR:
                    case AT_BAIR:
                    case AT_DAIR:
                    case AT_UAIR:
                    case AT_MINUN_FAIR:
                    case AT_MINUN_BAIR:
                    case AT_MINUN_DAIR:
                    case AT_MINUN_UAIR:
                    case AT_MINUN_NAIR:
                    //case AT_USPECIAL_GROUND:
                        //if (state_timer <= 1 || window == get_attack_value(attack, AG_NUM_WINDOWS)) {
                        if (state_timer >= 1) {
                            move_towards_x_position_unless_player_is_holding_opposite_direction(leader_x, true);
                            break;
                        } 
                        
                        //the partner can wall-jump out of aerials, try to do that if necessary
                        if (!hitpause && vsp >= 0 && free && state_timer > 1 && get_floor_from(predicted_x, y) == noone && djumps < max_djumps) {
                            jump_pressed = true;
                        }
                    break;
                    
                    case AT_EXTRA_3:
                        //the partner is ko'd; this script shouldn't be running in this case, but just in case it is, do nothing.
                    break;
                    
                    //all the other non-ground inputs:    
                    
                    default:
                        if (free) run_recovery_routine = true;
                    break;
                }
            break;
            

            default: //catch-all for general recovering
                run_recovery_routine = true;
                
            break;
        }
    }
    
    var should_recover = (!hitpause && free && (vsp >= 0 || y > teammate_player_id.y + djump_height) && ( (state != PS_DOUBLE_JUMP && state != PS_FIRST_JUMP) || state_timer >= 10) && get_floor_from(predicted_x, y) == noone);
    
    if (should_recover && !master_special_held) {
        put_aerials_on_cooldown();
    } 
    
    if (run_recovery_routine) {
        //do the predicted routines too
        run_predicted_routine = !master_special_held;
        //print("running recovery routine")
        if (should_recover) {
            
            
            
            var recover_dir = sign((room_width / 2) - x);
            
            //print("can_special: " + string(can_special))
            //print("recover at: " + string((1 + has_walljump - djumps) * 60))
            //if the player's really abandoned their partner, try to double-jump
            if (djumps > 0 && y > teammate_player_id.y + 200) {
                if (recover_dir < 0) ai_inputs |= INP_LEFT;
                if (recover_dir > 0) ai_inputs |= INP_RIGHT;
                //ai_inputs |= INP_JUMP_PRESSED;
            }
            
            //if double-jump has been used but they're still in trouble, recover with uspecial and airdodge
            
            else if ( ((!has_walljump && y > teammate_player_id.y + 8) || (y > teammate_player_id.y + (1 + has_walljump - djumps) * 60 ) ) 
              && (can_special ) ) {
                clear_dir();
                joy_dir = 90 - 45 * recover_dir;
                joy_pad_idle = false;
                ai_airdodge_direction = joy_dir;
                if (recover_dir < 0) ai_inputs |= INP_LEFT;
                if (recover_dir > 0) ai_inputs |= INP_RIGHT;
                if ((!has_walljump || leader_x_distance >= 400) && has_airdodge) { 
                    //can't make AIs perform directional dodges without setting the state directly, as far as I know.
                    set_state(PS_AIR_DODGE);
                    ai_inputs |= INP_UP;
                    run_predicted_routine = false;
                } 
                else if (state_cat == SC_AIR_NEUTRAL && 
                 (teammate_player_id.state_cat != SC_AIR_NEUTRAL 
                 || point_distance(x, y, teammate_player_id.x, teammate_player_id.y) > uspecial_maximum_team_up_distance) ) {
                    move_cooldown[AT_USPECIAL] = 0;
                    set_attack(AT_USPECIAL);
                    run_predicted_routine = false;
                }
            }
            //as a last resort, jump when barely touching the blastzone.
            else if (djumps < max_djumps && y > master_player_id.blastzone_b - 100 && y > teammate_player_id.y + djump_height) {
                ai_inputs |= INP_JUMP_PRESSED;
            }
        }
    }




    if (!made_an_attack_input && run_predicted_routine) {
    

    
    //switch (sync_next_predicted_state) {
    switch (teammate_player_id.buffer_sync_state[b]) {
        
        case PS_IDLE:
        case PS_WALK:
        case PS_WALK_TURN:
        case PS_LAND:
        case PS_LANDING_LAG:
        case PS_PRATFALL:
        case PS_PRATLAND:
        //case PS_ATTACK_GROUND:
        //case PS_ATTACK_AIR:
       
            //if in a grounded neutral state, jump or fall.
            if (!free && state_cat == SC_GROUND_NEUTRAL) {
                if (teammate_player_id.buffer_y_position[b]> y) {
                    ai_inputs |= INP_DOWN_HARD;
                }
                else if (teammate_player_id.buffer_y_position[b]< y && teammate_player_id.y + 4 < y) {
                    ai_inputs |= INP_JUMP_PRESSED;
                }
            }
        
            if (leader_x_distance > follow_distance * 3 && (state == PS_IDLE || state == PS_WALK || state == PS_WALK_TURN)) {
                //if (teammate_player_id.buffer_sync_state[b]) == PS_WALK_TURN {
                    //move_towards_x_position(leader_x, true);
                    //move_towards_x_position_unless_player_is_holding_opposite_direction(leader_x, true);
                //}
                //else {
                    move_towards_x_position_unless_player_is_holding_opposite_direction(leader_x, true);
                //}
                if (state == PS_WALK_TURN && sign(hsp) != leader_x_direction) hsp *= 0.5;
                artificial_dash = 2;
                break;
            }
            else if (leader_x_distance < follow_distance * 2 && (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_TURN)) {
                ai_inputs &= ~(INP_LEFT_HARD | INP_RIGHT_HARD | INP_LEFT | INP_RIGHT);
                artificial_dash = 2;
                break;
            }
            else if (leader_target_x_distance > 10) {
                //go to the leader
                move_towards_x_position(leader_x, false);
                if (state == PS_WALK_TURN && sign(hsp) != leader_x_direction) hsp *= 0.5;
            }
            else if (spr_dir != teammate_player_id.spr_dir && !master_player_id.special_down && teammate_player_id.state != PS_WALK_TURN) {
                //face the same direction as the leader
                move_in_x_direction(-spr_dir, false);
            }
            
            //push the leader if they're too close to the edge.
            if (sign(hsp) != leader_x_direction && spr_dir == teammate_player_id.spr_dir && teammate_player_id.state == PS_IDLE && y == teammate_player_id.y && abs(x - teammate_player_id.x) < 18) {
                teammate_player_id.x += teammate_player_id.spr_dir;
            }
            
        break;
        case PS_DASH_START:
        var run_direction = (ai_inputs & INP_RIGHT != 0) - (ai_inputs & INP_LEFT != 0);
            if (run_direction != leader_target_x_direction) {
                ai_inputs &= ~(INP_LEFT_HARD | INP_RIGHT_HARD);
                if (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_TURN) ai_inputs &= ~(INP_LEFT | INP_RIGHT);
                artificial_dash = -2;
            }
            //check if this a cpu-decided dash and not a player-inputted dash
            //if ((ai_inputs & INP_RIGHT_HARD != 0) - (ai_inputs & INP_LEFT_HARD != 0) != spr_dir) {
            //    artificial_dash = 2;
            //}
        break;
        case PS_DASH:
        case PS_DASH_TURN:
        
            if (state == PS_DASH) {
                //move_in_x_direction(leader_x_direction, true);
                move_towards_x_position_unless_player_is_holding_opposite_direction(teammate_player_id.x, true);
                break;
            }
            if (state == PS_DASH_TURN) {
                move_in_x_direction(spr_dir, true);
                break;
            }

            var run_direction = (ai_inputs & INP_RIGHT != 0) - (ai_inputs & INP_LEFT != 0);
            if (run_direction != leader_target_x_direction) {
                ai_inputs &= ~(INP_LEFT_HARD | INP_RIGHT_HARD);
                if (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_TURN) ai_inputs &= ~(INP_LEFT | INP_RIGHT);
                artificial_dash = -2;
            }
            else if ((state != PS_DASH && state != PS_DASH_TURN && state != PS_DASH_START) || spr_dir != run_direction) {
                if (run_direction == -1) ai_inputs |= INP_LEFT_HARD;
                else if (run_direction == 1) ai_inputs |= INP_RIGHT_HARD;
            }
        break;
        
        case PS_DASH_STOP:
            move_towards_x_position_unless_player_is_holding_opposite_direction(leader_x, true);
        //    move_in_x_direction(spr_dir, false);
        break;
        
        case PS_JUMPSQUAT:
            if (state == PS_JUMPSQUAT && teammate_player_id.free) {//(leader_x_distance <= follow_distance ) {
                spr_dir = teammate_player_id.spr_dir;
                var run_direction = (ai_inputs & INP_RIGHT != 0) - (ai_inputs & INP_LEFT != 0);
                if (run_direction == -1) {ai_inputs &= INP_RIGHT; ai_inputs |= INP_LEFT;}
                else if (run_direction == 1) {ai_inputs &= INP_LEFT; ai_inputs |= INP_RIGHT;}
            }
        break;
        
        case PS_FIRST_JUMP:
            move_towards_x_position_unless_player_is_holding_opposite_direction(leader_x, false);
        break;
        
        case PS_IDLE_AIR:
        case PS_TUMBLE:
        case PS_DOUBLE_JUMP:
            //if in a grounded neutral state, fall.
            if (!free && state_cat == SC_GROUND_NEUTRAL) {
                if (teammate_player_id.buffer_y_position[b]> y) {
                    ai_inputs |= INP_DOWN_HARD;
                }
            }
            
            if (y + 16 > teammate_player_id.y) {
                move_towards_x_position(leader_x, leader_x_distance > follow_distance * 3);
            }
            else {
                move_towards_x_position_unless_player_is_holding_opposite_direction(leader_x, leader_x_distance > follow_distance * 3);
            }
            
            //if ((ai_inputs & INP_RIGHT == 0) && (ai_inputs & INP_LEFT == 0)) {
                //move_towards_x_position_unless_player_is_holding_opposite_direction(leader_x, false);
                //move_towards_x_position(leader_x, false);
                //go_to_target_position(leader_x, y, noone, 10, false);
            //}
            
        break;
        /*
        case PS_DOUBLE_JUMP:
            //if in a grounded neutral state, jump or fall.
            if (!free && state_cat == SC_GROUND_NEUTRAL) {
                if (teammate_player_id.buffer_y_position[b]> y) {
                    ai_inputs |= INP_DOWN_HARD;
                }
            }
            
            if (state != PS_DOUBLE_JUMP || state_timer > 1) {
                break;
            }
            else if ((ai_inputs & INP_RIGHT == 0) && (ai_inputs & INP_LEFT == 0)) {
                move_towards_x_position_unless_player_is_holding_opposite_direction(leader_x, false);
                //go_to_target_position(leader_x, y, noone, 10, false);
            }
            
        break;
        */
        case PS_CROUCH:
        case PS_PARRY_START:
        break;
        
        case PS_ATTACK_GROUND:
        case PS_ATTACK_AIR:
            //don't do anything special for attacks
            //print(get_state_name(sync_next_predicted_state))
            //if (sync_next_predicted_state != PS_ATTACK_GROUND && sync_next_predicted_state != PS_ATTACK_AIR) break;
        
        default:
            //return to the player if special is held.
            //if (master_player_id.special_held) break;
            
            if (leader_x_distance < follow_distance * 2 && (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_TURN)) {
                ai_inputs &= ~(INP_LEFT_HARD | INP_RIGHT_HARD | INP_LEFT | INP_RIGHT);
                artificial_dash = 2;
                break;
            }
            else if (leader_target_x_distance > 10 && leader_x_distance > 10) {
                //go to the player
                move_towards_x_position(leader_x, false);
                if (state == PS_WALK_TURN && sign(hsp) != leader_x_direction) hsp *= 0.5;
            }
            else {
                ai_inputs &= ~(INP_LEFT_HARD | INP_RIGHT_HARD | INP_LEFT | INP_RIGHT);
            }
            //else if (spr_dir != teammate_player_id.spr_dir && !master_player_id.special_down && teammate_player_id.state != PS_WALK_TURN) {
                //face the same direction as the player
                //move_in_x_direction(-spr_dir, false);
            //}
            
            //if (free || leader_x_distance <= follow_distance * 3)
            //    move_towards_x_position_unless_player_is_holding_opposite_direction(leader_x, false);
            //else
            //    move_towards_x_position_unless_player_is_holding_opposite_direction(leader_x, true);
            //break;
        
        }
    }
        

    sync_next_predicted_state = teammate_player_id.buffer_sync_state[b];

 






// ====================== "COMMANDS" THAT TELL THE GAME / AI SYSTEM TO DO SPECIFIC THINGS ======================
#define clear_dir()
  ai_inputs &= 
    ~(INP_LEFT_HARD
    | INP_RIGHT_HARD
    | INP_UP_HARD
    | INP_DOWN_HARD
    | INP_LEFT
    | INP_RIGHT
    | INP_UP
    | INP_DOWN);

// ====================== functions that DON'T get cached (due to having actual arguments) ======================
#define get_floor_from(x1, y1)
  var nearestPlat = get_floor_plat_from(x1, y1);
  var nearestSolid = get_floor_solid_from(x1, y1);
  if (nearestPlat == noone && nearestSolid == noone) return noone;
  else if (nearestPlat == noone && nearestSolid != noone) return nearestSolid;
  else if (nearestPlat != noone && nearestSolid == noone) return nearestPlat;
  else if (nearestPlat[@ PDD_DIST] < nearestSolid[@ PDD_DIST]) return nearestPlat;
  else return nearestSolid;

#define get_floor_plat_from(x1, y1)
  var nearestPlat = [9999, noone, "Plat"];
  for (var i = 0; i < plat_bboxes[@ PD_COUNT]; i++) {
    var bbox = plat_bboxes[@ PD_DATA][| i];
    if (bbox[@ BBOX_LEFT] <= x1 && x1 <= bbox[@ BBOX_RIGHT]) {
      var dist = bbox[@ BBOX_TOP] - y1;
      if (dist >= 0 && dist < nearestPlat[@ PDD_DIST]) {
        nearestPlat[@ PDD_DIST] = dist;
        nearestPlat[@ PDD_BBOX] = bbox;
      } 
    }
  }
  if (nearestPlat[@ PDD_BBOX] == noone) return noone;
  return nearestPlat;

#define get_floor_solid_from(x1, y1)
  var nearestSolid = [9999, noone, "Solid"];
  for (var i = 0; i < solid_bboxes[@ PD_COUNT]; i++) {
    var bbox = solid_bboxes[@ PD_DATA][| i];
    if (bbox[@ BBOX_LEFT] <= x && x1 <= bbox[@ BBOX_RIGHT]) {
      var dist = bbox[@ BBOX_TOP] - y1;
      if (dist >= 0 && dist < nearestSolid[@ PDD_DIST]) {
        nearestSolid[@ PDD_DIST] = dist;
        nearestSolid[@ PDD_BBOX] = bbox;
      } 
    }
  }
  if (nearestSolid[@ PDD_BBOX] == noone) return noone;
  return nearestSolid;




#define get_floor_at(x1, y1)
  for (var i = 0; i < plat_bboxes[@ PD_COUNT]; i++) {
    var p = plat_bboxes[@ PD_DATA][| i];
    if (p[@ BBOX_LEFT] <= x1 && x1 <= p[@ BBOX_RIGHT] && p[@ BBOX_TOP] <= y1 && y1 <= p[@ BBOX_BOTTOM]) return [p, "plat"];
  }
  for (var i = 0; i < solid_bboxes[@ PD_COUNT]; i++) {
    var p = solid_bboxes[@ PD_DATA][| i];
    if (p[@ BBOX_LEFT] <= x1 && x1 <= p[@ BBOX_RIGHT] && p[@ BBOX_TOP] <= y1 && y1 <= p[@ BBOX_BOTTOM]) return [p, "solid"];
  }
  return noone;

#define get_plat_at(x1, y1)
  var count = plat_bboxes[@ PD_COUNT];
  for (var i = 0; i < count; i++) {
    var p = plat_bboxes[@ PD_DATA][| i];
    if (p[@ BBOX_LEFT] <= x1 && x1 <= p[@ BBOX_RIGHT] && p[@ BBOX_TOP] <= y1 && y1 <= p[@ BBOX_BOTTOM]) return [p, "plat"];
  }
  return noone;

#define get_solid_at(x1, y1)
  var count = solid_bboxes[@ PD_COUNT];
  for (var i = 0; i < count; i++) {
    var p = solid_bboxes[@ PD_DATA][| i];
    if (p[@ BBOX_LEFT] <= x1 && x1 <= p[@ BBOX_RIGHT] && p[@ BBOX_TOP] <= y1 && y1 <= p[@ BBOX_BOTTOM]) return [p, "solid"];
  }
  return noone;

#define player_color(tgt)
  switch(tgt.player) {
    case 1: return $241CED
    case 2: return $EFB700
    case 3: return $B1A3FF
    case 4: return $1DE6A8
  }
  return $000000;


// ====================== "FUNCTIONS" THAT ARE AUTOMATICALLY CACHED WITH "fn(name)" ======================
// caches the result of the given function for later use, ensuring that it's as efficient as possible.
#define fn(name, tgt)
  // if the result has been cached, return the result
  var toFind = `${name}|${tgt.id}`;
  if (ds_map_exists(host_player.ai_fn_cache, toFind)) {
    return host_player.ai_fn_cache[? toFind];
  }
  var out = script_execute(script_get_index(name), tgt);
  ds_map_set(host_player.ai_fn_cache, toFind, out);
  return out;
// returns what direction the player is relative to the AI
#define OPos(tgt)
  if ((tgt).x < (self).x) return "left";
  else return "right";

// returns the nearest floor that the target is above, if one exists
// contains the distance to the floor as well as the floor's bounding box
#define GetFloor(tgt)
  var nearestPlat = fn("GetFloorPlat", tgt);
  var nearestSolid = fn("GetFloorSolid", tgt);
  if (nearestPlat == noone && nearestSolid == noone) return noone;
  else if (nearestPlat == noone && nearestSolid != noone) return nearestSolid;
  else if (nearestPlat != noone && nearestSolid == noone) return nearestPlat;
  else if (nearestPlat[@ PDD_DIST] < nearestSolid[@ PDD_DIST]) return nearestPlat;
  else return nearestSolid;
  
// returns the nearest PLATFORM that the target is above, if one exists
// contains the distance to the floor as well as the floor's bounding box
#define GetFloorPlat(tgt)
  var nearestPlat = [9999, noone, "Plat"];
  var w = fn("HurtboxWidth", tgt) / 4;
  var xCollLeft = (tgt).x - w;
  var xCollRight = (tgt).x + w;
  var platCount = plat_bboxes[@ PD_COUNT];
  for (var i = 0; i < platCount; i++) {
    var bbox = plat_bboxes[@ PD_DATA][| i];
    if (bbox[@ BBOX_LEFT] <= xCollLeft && xCollRight <= bbox[@ BBOX_RIGHT]) {
      var dist = bbox[@ BBOX_TOP] - (tgt).y;
      if (sign(dist) != -1 && dist < nearestPlat[@ PDD_DIST]) {
        nearestPlat[@ PDD_DIST] = dist;
        nearestPlat[@ PDD_BBOX] = bbox;
      } 
    }
  }
  if (nearestPlat[@ PDD_BBOX] == noone) return noone;
  return nearestPlat;

// returns the nearest SOLID floor that the target is above, if one exists
// contains the distance to the floor as well as the floor's bounding box
#define GetFloorSolid(tgt)
  var nearestSolid = [9999, noone, "Solid"];
  var w = fn("HurtboxWidth", tgt) / 4;
  var xCollLeft = (tgt).x - w;
  var xCollRight = (tgt).x + w;
  var solidCount = solid_bboxes[@ PD_COUNT];
  for (var i = 0; i < solidCount; i++) {
    var bbox = solid_bboxes[@ PD_DATA][| i];
    if (bbox[@ BBOX_LEFT] <= xCollLeft && xCollRight <= bbox[@ BBOX_RIGHT]) {
      var dist = bbox[@ BBOX_TOP] - (tgt).y;
      if (dist >= 0 && dist < nearestSolid[@ PDD_DIST]) {
        nearestSolid[@ PDD_DIST] = dist;
        nearestSolid[@ PDD_BBOX] = bbox;
      } 
    }
  }
  if (nearestSolid[@ PDD_BBOX] == noone) return noone;
  return nearestSolid;



// used at the start to prevent anything from happening without explicit commands
#define clear_ai_inputs()
  
  if (do_a_fast_fall || (!free && state_timer == 0)) down_hard_counter = 10;
  
  /*
  up_stick_pressed    = up_stick_counter    < 7;
  left_stick_pressed  = left_stick_counter  < 7;
  down_stick_pressed  = down_stick_counter  < 7;
  right_stick_pressed = right_stick_counter < 7;
  */
  if (master_player_id.special_held || point_distance(x, y, teammate_player_id.x, teammate_player_id.y) < 150) {
  
  attack_pressed    = attack_counter    < 6 && (up_stick_pressed + down_stick_pressed + left_stick_pressed + right_stick_pressed == 0);
  special_pressed   = special_counter   < 6;
  jump_pressed      = jump_counter      < 6; //7
  shield_pressed    = shield_counter    < 3; //3
  
  up_hard_pressed   = up_hard_counter   < 3;
  down_hard_pressed = down_hard_counter < 3;
  }
  else {
  attack_pressed    = 0;
  special_pressed   = special_counter < 6;
  jump_pressed      = 0;
  shield_pressed    = 0;
  
  up_hard_pressed   = 0;
  down_hard_pressed = 0;
  }
  
  attack_counter    = min(attack_counter+1, 10);
  special_counter   = min(special_counter+1, 10);
  jump_counter      = min(jump_counter+1, 10);
  shield_counter    = min(shield_counter+1, 10);
  
  up_hard_counter   = min(up_hard_counter+1, 10);
  down_hard_counter = min(down_hard_counter+1, 10);
  
  
  //jump_pressed = false;
  //shield_pressed = false;
  
  /*
  attack_pressed = false;
  special_pressed = false;
  jump_pressed = false;
  shield_pressed = false;
  */
  taunt_pressed = false;
  
  
  left_strong_pressed = false;
  right_strong_pressed = false;
  up_strong_pressed = false;
  down_strong_pressed = false;
  

  up_pressed = false;
  left_pressed = false;
  down_pressed = false;
  right_pressed = false;

  //up_hard_pressed = false;
  left_hard_pressed = false;
  //down_hard_pressed = false;
  right_hard_pressed = false;

  attack_down = false;
  special_down = false;
  jump_down = false;
  shield_down = false;
  taunt_down = false;

  up_strong_down = false;
  left_strong_down = false;
  down_strong_down = false;
  right_strong_down = false;
  strong_down = false;
  
  up_stick_pressed = false;
  left_stick_pressed = false;
  down_stick_pressed = false;
  right_stick_pressed = false;

  up_hard_down = false;
  left_hard_down = false;
  down_hard_down = false;
  right_hard_down = false;
  
  up_down = false;
  left_down = false;
  down_down = false;
  right_down = false;

  ai_going_left = false;
  ai_going_right = false;
  ai_going_into_fromtack = false;
  ai_fromtack_timer = 0;
  ai_attack_time = 5;
  //ai_recovering = false;
  
  joy_dir = 90;
  joy_pad_idle = true;

// presses attack, special, jump, or shield based on the "ai_inputs" variable.
// automatically switches between "pressed" and "down" variants
#define process_inputs()

var inputs = [
[INP_ATTACK, "attack_down"],
[INP_SPECIAL, "special_down"],
[INP_JUMP, "jump_down"],
[INP_SHIELD, "shield_down"],
[INP_LEFT, "left_down"],
[INP_RIGHT, "right_down"],
[INP_UP, "up_down"],
[INP_DOWN, "down_down"],
[INP_LEFT_HARD, "left_hard_pressed"],
[INP_RIGHT_HARD, "right_hard_pressed"],
[INP_UP_HARD, "up_hard_pressed"],
[INP_DOWN_HARD, "down_hard_pressed"],
[INP_LEFT_STRONG, "left_strong_pressed"],
[INP_RIGHT_STRONG, "right_strong_pressed"],
[INP_UP_STRONG, "up_strong_pressed"],
[INP_DOWN_STRONG, "down_strong_pressed"],
[INP_TAUNT, "taunt_pressed"],
[INP_ATTACK_PRESSED, "attack_pressed"],
[INP_SPECIAL_PRESSED, "special_pressed"],
[INP_JUMP_PRESSED, "jump_pressed"],
[INP_SHIELD_PRESSED, "shield_pressed"],
[INP_LEFT_STICK, "left_stick_pressed"],
[INP_RIGHT_STICK, "right_stick_pressed"],
[INP_UP_STICK, "up_stick_pressed"],
[INP_DOWN_STICK, "down_stick_pressed"]
];

var len = array_length_1d(inputs);
  
for (var i = 0; i < len; i++) {
    var input = inputs[@ i][@ 0];
    var input_name = inputs[@ i][@ 1];
    
    if (ai_inputs_raw & input != 0) {
            switch (i) {
            case 10: up_hard_counter    = 0; break;
            case 11: down_hard_counter  = 0; break;
            
            case 0: 
            if (ai_prev_inputs_raw & input == 0) { attack_pressed = true; attack_counter = 0; } break;
            case 2: 
            if (ai_prev_inputs_raw & input == 0 && !do_not_jump) { jump_pressed = true; jump_counter = 0; } break;
            case 3: 
            if (ai_prev_inputs_raw & input == 0) { shield_pressed = true; shield_counter = 0; } break;
            
        }
    }
    if ai_inputs & input != 0 {
        if (input) variable_instance_set(self, `${input_name}`, true);
    }
 }


#define obtain_stage_bboxes()
  with (platform_asset) {
    var x = get_instance_x(self);
    var y = get_instance_y(self);
    var exists = false;
    for (var i = 0; i < ds_list_size((other).plat_bboxes[@ PD_DATA]) && !exists; i++) {
      var bbox = (other).plat_bboxes[@ PD_DATA][| i];
      if (bbox[@ BBOX_LEFT] <= x && x <= bbox[@ BBOX_RIGHT] && bbox[@ BBOX_TOP] <= y && y <= bbox[@ BBOX_BOTTOM]) exists = true;
    }
    if (!exists) {
      var xScan = x;
      var yScan = y;
      while (instance_position(xScan, y, (other).platform_asset) != noone) xScan -= 32;
      xScan += 32;
      while (instance_position(xScan, yScan, (other).platform_asset) != noone) yScan -= 32;
      yScan += 32;
      var left = xScan;
      var top = yScan;
      while (instance_position(xScan, y, (other).platform_asset) != noone) xScan += 32;
      while (instance_position(x, yScan, (other).platform_asset) != noone) yScan += 32;
      var right = xScan - 1;
      var bottom = yScan - 16;

      ds_list_add((other).plat_bboxes[@ PD_DATA], [top, bottom, left, right]);
      (other).plat_bboxes[@ PD_COUNT] ++;
    }
  }
  with (solid_asset) { 
    var x = get_instance_x(self);
    var y = get_instance_y(self);
    var exists = false;
    for (var i = 0; i < ds_list_size((other).solid_bboxes[@ PD_DATA]) && !exists; i++) {
      var bbox = (other).solid_bboxes[@ PD_DATA][| i];
      if (bbox[@ BBOX_LEFT] <= x && x <= bbox[@ BBOX_RIGHT] && bbox[@ BBOX_TOP] <= y && y <= bbox[@ BBOX_BOTTOM]) exists = true;
    }
    if (!exists) {
      var xScan = x;
      var yScan = y;
      while (instance_position(xScan, y, (other).solid_asset) != noone) xScan -= 32;
      xScan += 32;
      while (instance_position(xScan, yScan, (other).solid_asset) != noone) yScan -= 32;
      yScan += 32;
      var left = xScan;
      var top = yScan;
      while (instance_position(xScan, y, (other).solid_asset) != noone) xScan += 32;
      while (instance_position(x, yScan, (other).solid_asset) != noone) yScan += 32;
      var right = xScan - 1;
      var bottom = yScan - 1;

      ds_list_add((other).solid_bboxes[@ PD_DATA], [top, bottom, left, right]);
      (other).solid_bboxes[@ PD_COUNT] ++;
    }
  }
  bboxes_obtained = true;
#define obtain_jump_data()
    jump_data_obtained = true;
  var height = 0;
  var vel = jump_speed;
  var frame_count = 0
  while (vel > 0) {
    height += vel;
    vel -= gravity_speed;
    frame_count ++;
  }
  jump_height = height;
  jump_vert_time = frame_count;

  height = 0;
  vel = short_hop_speed;
  frame_count = 0
  while (vel > 0) {
    height += vel;
    vel -= gravity_speed;
    frame_count ++;
  }
  short_hop_height = height;
  short_hop_vert_time = frame_count;

  height = 0;
  vel = djump_speed;
  frame_count = 0
  
  while (vel > 0 || frame_count < djump_accel_end_time) {
    height += vel;
    if (frame_count >= djump_accel_start_time && frame_count < djump_accel_end_time) vel += djump_accel;
    vel -= gravity_speed;
    frame_count ++;
  }
  djump_height = height;
  //print("djump height = " + string(djump_height))
  djump_vert_time = frame_count;
  
  
#define predict_x_position
var x_mod;
switch (state) {
    case PS_DASH:
    case PS_DASH_TURN:
    case PS_DASH_START:
        x_mod = (hsp * dash_stop_percent) / (2 * ground_friction);
    break;
    default:
        if (free) {
            x_mod = hsp / (2 * air_friction);//(air_friction + air_accel));
        }
        else {
            x_mod = hsp / (2 * ground_friction);
        }
    break;
}
return x + x_mod;

#define move_towards_x_position(x_pos, add_dash)

ai_inputs &= ~(INP_LEFT_HARD | INP_RIGHT_HARD | INP_LEFT | INP_RIGHT);

var predict_x = predict_x_position();

//var move_distance = x_pos - x;

//if (predicted_x == 0 && move_distance == 0) return;

var move_dir = sign(x_pos - x);
var predicted_move_dir = sign(x_pos - predict_x)

if (move_dir != predicted_move_dir) {
    if (!free) return;
    move_dir *= -1;
}

if (move_dir == -1) { ai_inputs |= INP_LEFT;  if (add_dash) ai_inputs |= INP_LEFT_HARD; }
if (move_dir == 1) { ai_inputs |= INP_RIGHT; if (add_dash) ai_inputs |= INP_RIGHT_HARD; }
return;


#define move_towards_x_position_unless_player_is_holding_opposite_direction(x_pos, add_dash)

//ai_inputs &= ~(INP_LEFT_HARD | INP_RIGHT_HARD | INP_LEFT | INP_RIGHT);

var move_dir = sign(x_pos - x);

var player_holding_direction;


if (!master_player_id.special_held) { player_holding_direction = move_dir; }
else { 
    player_holding_direction = (ai_inputs & INP_RIGHT != 0) - (ai_inputs & INP_LEFT != 0);
}

//rint ("holding dir:" + string(player_holding_direction))

//print ("move dir:" + string(move_dir))
//if (player_holding_direction != 0 && move_dir != player_holding_direction) {
if ( move_dir != player_holding_direction) {
    //print ("holding dir is opposite desired dir")
    return;
}

//if (move_dir == 0) return;

ai_inputs &= ~(INP_LEFT_HARD | INP_RIGHT_HARD | INP_LEFT | INP_RIGHT);



var predict_x = predict_x_position();
var predicted_move_dir = sign(x_pos - predict_x)

if (move_dir != predicted_move_dir) return;

if (move_dir == -1) { ai_inputs |= INP_LEFT;  if (add_dash) ai_inputs |= INP_LEFT_HARD; }
if (move_dir == 1) { ai_inputs |= INP_RIGHT; if (add_dash) ai_inputs |= INP_RIGHT_HARD; }
return;






#define move_in_x_direction(x_dir, add_dash)
ai_inputs &= ~(INP_LEFT_HARD | INP_RIGHT_HARD | INP_LEFT | INP_RIGHT);
if (x_dir == -1) { ai_inputs |= INP_LEFT;  if (add_dash) ai_inputs |= INP_LEFT_HARD; }
if (x_dir == 1) { ai_inputs |= INP_RIGHT; if (add_dash) ai_inputs |= INP_RIGHT_HARD; }



#define is_end_of_window
return (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1);

#define put_aerials_on_cooldown
move_cooldown[AT_NAIR] = 2;
move_cooldown[AT_UAIR] = 2;
move_cooldown[AT_DAIR] = 2;
move_cooldown[AT_FAIR] = 2;
move_cooldown[AT_BAIR] = 2;
return;
