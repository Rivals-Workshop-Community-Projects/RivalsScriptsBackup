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

//recovery logic
if (ai_recovering)
{
    print (string(game_time) + " - CPU recovery"); //the game_time at the start of the print just makes it easier to tell when this happens
}

//fight logic
if (cpu_fight_time > 0)
{
    target_face = (x > ai_target.x && spr_dir == -1 || x < ai_target.x && spr_dir == 1); //checks if the CPU facing their target
    target_dist = point_distance(x, y, ai_target.x, ai_target.y); //distance from target
    target_angle = point_direction(x, y-char_height/2, ai_target.x, ai_target.y-ai_target.char_height/2); //angle from target
}