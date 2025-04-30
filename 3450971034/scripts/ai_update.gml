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

if (attack == AT_NSPECIAL && (window == 3 || window == 4)) {
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

// Rune Code
if("PLANT_GANG" in self && plant_gang_rune){
    footstool_x = -10;
    footstool_y = -110;
    footstool_w = 20;
    footstool_h = 80;
    
    reset_inputs();
    down_down = true;
    hurtboxID.dodging = true;
    hud_offset = 99999;
    
    if !player_id.offset_camera offset_camera = false;
    ignore_camera = !offset_camera;
    
    if(free){
        set_state(PS_PRATFALL);
    }
    if(state == PS_PRATLAND && !was_parried) set_state(PS_CROUCH);
    is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
    
    if(state != PS_PRATFALL && state != PS_CROUCH && (!is_attacking || (is_attacking && attack != AT_EXTRA_1))){
        if ("spawn_buffer" not in self) spawn_buffer = true;
        else instance_destroy(self);
    }
}

// function by DinoBros
#define reset_inputs() 
attack_pressed = 0;
attack_down = 0;
special_pressed = 0;
special_down = 0;
left_strong_pressed = 0;
left_strong_down = 0;
right_strong_pressed = 0;
right_strong_down = 0;
up_strong_pressed = 0;
up_strong_down = 0;
down_strong_pressed = 0;
down_strong_down = 0;
left_stick_pressed = 0;
left_stick_down = 0;
right_stick_pressed = 0;
right_stick_down = 0;
up_stick_pressed = 0;
up_stick_down = 0;
down_stick_pressed = 0;
down_stick_down = 0;
left_pressed = 0;
left_down = 0;
left_hard_pressed = 0;
right_pressed =0;
right_down = 0;
right_hard_pressed = 0;
up_pressed = 0;
up_down = 0;
up_hard_pressed = 0;
down_pressed = 0;
down_down = 0;
down_hard_pressed = 0;
jump_pressed = 0;
jump_down = 0;
shield_pressed = 0;
shield_down = 0;