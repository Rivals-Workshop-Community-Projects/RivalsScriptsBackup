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
    
    if (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL) {
        if (!is_attacking && ready_to_attack && !ai_recovering) {
            if (ai_attack_timer % ai_attack_time == 0) {
                var dspecial_random = random_func(0, 100, true);
                if (target_dist > 96 && dspecial_random >= ease_linear(40, 90, temp_level- 1, 8) && skill_points > 0) {
                    set_attack(AT_DSPECIAL);
                }
            }
        }
    }
    
    if (is_attacking) {
        if (attack == AT_DSPECIAL) {
            if (window == 4 && window_timer == 1) {
                skill_index = random_func(0, 3, true);
            }
            
            if (window == 4) {
                if (window_timer >= 16 + random_func(0, window_end - 16, true)) {
                    if (skill_points > 0)
                        attack_pressed = true;
                    else shield_pressed = true;
                }
            }
        }
    }
}