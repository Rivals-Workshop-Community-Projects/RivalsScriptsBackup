//ai_update.gml

with (ai_target) if ("char_height" not in self) exit; //prevents annoying error message

//CPU fight mode check
if (get_training_cpu_action() == CPU_FIGHT) cpu_fight_time ++;
else cpu_fight_time = 0;

//recovery logic
if (ai_recovering)
{
    //recovery code here
}

//fight logic
if (cpu_fight_time > 0)
{
    target_face = (x > ai_target.x && spr_dir == -1 || x < ai_target.x && spr_dir == 1);
    target_dist = point_distance(x, y, ai_target.x, ai_target.y);
    target_angle = point_direction(x, y-char_height/2, ai_target.x, ai_target.y-ai_target.char_height/2);
}

//nspecial handling (minimally tested)
if (instance_exists(ptooie_obj) && move_cooldown[AT_NSPECIAL] < 2) move_cooldown[AT_NSPECIAL] = 2;

if (attack == AT_NSPECIAL && window == 3 || window == 4) {
    var x_dist = abs(ai_target.x+ai_target.hsp-x);
    var opp_right = (ai_target.x+ai_target.hsp > x);
    var opp_above = (ai_target.y+ai_target.vsp <= ptooie_obj.y);
    
    if (ai_recovering) { // Recovering: either spit or swallow immediately
        if (x_dist < 600 || ptooie_ai_state = 1) {
            special_down = true;
            right_down = opp_right;
            left_down = !opp_right;
        } else {
            special_down = false;
            right_down = false;
            left_down = false;
        }
    }
    else if (temp_level <= 5) { // Low AI levels: toss immediately
        special_down = true;
        right_down = opp_right;
        left_down = !opp_right;
    }
    else if (x_dist < 100) { // Opponent near: hold if they're above
        special_down = opp_above;
        left_down = false;
        right_down = false;
    }
    else if (x_dist < 160) { // Opponent kinda near: throw if they're above
        if (opp_above) {
            special_down = true;
            right_down = opp_right;
            left_down = !opp_right;
        } else {
            special_down = false;
            left_down = false;
            right_down = false;
        }
    }
    else if (x_dist < 600 || ptooie_obj.y > y-95) { // Opponent mid-range, or ptooie low: throw
        special_down = true;
        right_down = opp_right;
        left_down = !opp_right;
    }
    else { // Opponent far: wait for ptooie to lower before throwing
        special_down = (ptooie_obj.state_timer < 420);
        left_down = false;
        right_down = false;
    }
}