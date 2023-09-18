//ai_update.gml
//if we want something more elaborate than the random attacks that ai_init.gml gives

//some useful variables:
//  - ai_target: checks the player that is targeted by the AI - returns a player_id
//  - ai_recovering: checks if the CPU player is currently trying to recover, we can add a different attack use logic to it through this variable
//  - temp_level: returns the current CPU level, can only be a number between 1-9 (temp_level 0 means the player isn't actually a CPU)

with (ai_target) if ("char_height" not in self) exit; //prevents annoying error message


//CPU fight mode check - counts up every frame as long as the CPU is fighting
//works for things that need to happen based on timing
if (get_training_cpu_action() == CPU_FIGHT) cpu_fight_time ++;
else cpu_fight_time = 0;

target_dist = point_distance(x, y, ai_target.x, ai_target.y);
target_angle = point_direction(x, y-char_height/2, ai_target.x, ai_target.y-ai_target.char_height/2);


//recovery logic
if (ai_recovering)
{
    if (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL) {
        if ((x >= stage_left - 128 && spr_dir == 1) || (x <= stage_right + 128 && spr_dir == -1)) 
        {
            if (y <= stage_top) {
                if ((x < stage_left && spr_dir == 1) || (x > stage_right && spr_dir == -1))
                    set_attack(AT_FSPECIAL);
            }
            else {
                set_attack(AT_USPECIAL);
            }
        }
    }
}

//fight logic
if (cpu_fight_time >= 0)
{
    //checks if the CPU facing their target
    target_face = (x > ai_target.x && spr_dir == -1 || x < ai_target.x && spr_dir == 1);
    
    //Choosing an attack
    // if (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL) {
    //     if (!is_attacking && ready_to_attack && !ai_recovering) {
    //         if (ai_attack_timer % ai_attack_time == 0) {
    //             var dspecial_random = random_func(0, 100, true);
    //             if (target_dist > 96 && dspecial_random >= ease_linear(40, 90, temp_level- 1, 8) && skill_points > 0) {
    //                 set_attack(AT_DSPECIAL);
    //             }
    //         }
    //     }
    // }
    
    //Attack_update
    if (is_attacking) {
        switch (attack) {
            case AT_JAB: //Follow up jabs
                if ((window == 3 || window == 6) && window_timer == get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME)) {
                    if (target_dist <= 64 && target_face && random_level_based(0, 1, 30)) attack_pressed = true;
                }
            break;
            case AT_NSPECIAL: //Choose to charge or mash NSpecial
                if (window == 1 && window_timer == 0) {
                    ai_nspec_charge = random_func(0, 10, true) <= 5 && target_dist >= 128;
                }
                if (ai_nspec_charge) {
                    if (window != 8) special_down = true;
                    else {
                        if (target_dist <= 128 || window == 12) {
                            shield_pressed = true;
                            left_pressed = x > ai_target.x;
                            right_pressed = x < ai_target.x;
                        }
                    }
                }
                else special_pressed = true;
            break;
            case AT_FSPECIAL: //Follow up FSpecials
                if (has_hit && cpu_fight_time % 12 == 0 && random_level_based(0, 10, 50)) {
                    var chosen_followups = [0, 1, 2, 3]
                    if (off_stage(-128)) {
                        if (facing_stage(64, 1)) chosen_followups = [1, 2, 3];
                        else chosen_followups = [1, 2];
                    }
                    var followup = random_func(1, array_length(chosen_followups), true)
                    switch (followup) {
                        case 0: jump_pressed = true; break;
                        case 1: attack_pressed = true; break;
                        case 2: special_pressed = true; break;
                        case 3: strong_right_pressed = true; break;
                    }
                }
            break;
        }
    }
}

#define off_stage(_margin)
return ((x >= stage_left - _margin) || (x <= stage_right + _margin)) 

#define facing_stage(_margin, _towards)
return ((x >= stage_left - _margin && spr_dir == _towards) || (x <= stage_right + _margin && spr_dir == -_towards)) 

#define random_level_based(_seed, _min, _max)
return random_func(_seed, floor(ease_linear(_max, _min, temp_level- 1, 8)), true) == 0;