//ai_update.gml

with (ai_target) if ("char_height" not in self) exit; //prevents annoying error message

//CPU fight mode check
if (get_training_cpu_action() == CPU_FIGHT) cpu_fight_time ++;
else cpu_fight_time = 0;

target_dist = point_distance(x, y, ai_target.x, ai_target.y);
target_angle = point_direction(x, y-char_height/2, ai_target.x, ai_target.y-ai_target.char_height/2);

which_dir_is_stage = (point_distance(x, 0, stage_left, 0) < point_distance(x, 0, stage_right, 0)) ? "go right" : "go left";

//recovery logic
if (ai_recovering)
{
    if (state_cat == SC_HITSTUN && state_timer == 1 || state == PS_WALL_JUMP) //reset on hitstun
    {
        ring_rng = -1;
        recovery_rng = -1;
    }

    can_wall_jump = (recovery_rng == 0);
    

    switch (recovery_rng)
    {
        case -1: //undefined
            recovery_rng = random_func(1, 4, true);
            special_pressed = false;
            break;
        case 0: //using the rainbow ring
            if (instance_exists(artc_trickring))
            {
                if (artc_trickring.state <= 1)
                {
                    switch (ring_rng)
                    {
                        case -1: //undefined
                            if (y > blastzone_bottom - 300 && has_walljump) ring_rng = random_func(0, 2, true);
                            else if (y > blastzone_bottom - 200) ring_rng = 1;
                            else
                            {
                                ring_rng = random_func(0, 5, true);
                                
                                //if sonic is too close to the blastzone filter that out
                                if (ring_rng == 3 && (x - 150 < blastzone_left || x + 150 > blastzone_right)) ring_rng = random_func(0, 2, true);
                                if (ring_rng == 4 && !has_airdodge) ring_rng = random_func(0, 4, true); //if sonic has not airdodge he rerolls without it
                            }
                            break;
                        case 0: case 1: //0 = dspecial (1 = +fastfall)
                            jump_pressed = false;
                            left_down = false;
                            right_down = false;
                            if (state_cat == SC_AIR_NEUTRAL) set_attack(AT_DSPECIAL);
                            else if (is_attacking && attack == AT_DSPECIAL && ring_rng == 1) fast_falling = true;
                            break;
                        case 2: //fastfall
                            jump_pressed = false;
                            left_down = false;
                            right_down = false;
                            down_hard_pressed = true;
                            break;
                        case 3: //fspec/fair into ring
                            jump_pressed = false;
                            shield_pressed = false;

                            if (attack == AT_USPECIAL)
                            {
                                if (is_attacking)
                                {
                                    right_down = (which_dir_is_stage == "go left" && x > blastzone_left);
                                    left_down = (which_dir_is_stage == "go right" && x < blastzone_right);

                                    if (x <= blastzone_left - 1 || x >= blastzone_right) hsp = 0;
                                }
                                else
                                {
                                    spr_dir = (x < artc_trickring.x) ? 1 : -1
                                    state = PS_ATTACK_AIR;
                                    attack = can_fspec ? AT_FSPECIAL : AT_FAIR;
                                    window = 1;
                                    window_timer = 0;
                                }
                            }

                            if (is_attacking && attack == AT_FSPECIAL)
                            {
                                if (window < 4)
                                {
                                    right_down = false;
                                    left_down = false;
                                }
                                special_down = (y < artc_trickring.y - 16);
                            }
                            break;
                        case 4: //airdodge
                            if (!has_airdodge) ring_rng = 3;

                            jump_pressed = false;

                            if (is_attacking && attack == AT_USPECIAL)
                            {
                                right_down = (which_dir_is_stage == "go left");
                                left_down = (which_dir_is_stage == "go right");
                            }
                            else if (state_cat == SC_AIR_NEUTRAL && state != PS_AIR_DODGE && point_distance(x, y, artc_trickring.x, artc_trickring.y) < 110 && has_airdodge) shield_pressed = true;
                            else if (state == PS_AIR_DODGE) joy_dir = -point_distance(x, y, artc_trickring.x, artc_trickring.y) + 90;
                            break;
                    }
                }
                if (is_attacking && attack == AT_USPECIAL_2 && ring_rng != -1) ring_rng = random_func(0, 3, true) + 1;
                
                //if sonic notices someone is next to the rainbow ring while recovering he will try to dspec them
                if (y < ai_target.y && point_distance(x, 0, ai_target.x, 0) < 80 && point_distance(ai_target.x, ai_target.y, artc_trickring.x, artc_trickring.y) < 120)
                {
                    if (ring_rng != -2) ring_rng = -2;
                    if (state_cat != SC_HITSTUN && state_cat == SC_AIR_NEUTRAL) set_attack(AT_DSPECIAL);
                }
                if (ring_rng == -2)
                {
                    var which_dir_is_ring = (x > ai_target.x) ? "go right" : "go left";
                    right_down = (which_dir_is_ring == "go left");
                    left_down = (which_dir_is_ring == "go right");
                }
            }
            else if (!can_spawn_trick_ring) //if he can't spawn the rainbow ring he will just try to get to the wall
            {
                right_down = (which_dir_is_stage == "go left");
                left_down = (which_dir_is_stage == "go right");
            }
            break;
        case 1: //using fair to get closer to the wall (should probably be disabled if he is facing away from the wall)
            spr_dir = (which_dir_is_stage == "go right") ? 1 : -1;
            right_down = (which_dir_is_stage == "go right");
            left_down = (which_dir_is_stage == "go left");
            up_down = false;
            attack_pressed = true;
            special_pressed = false;

            recovery_rng = 0; //use uspec next
            break;
        case 2: //using fspec to get closer to the wall
            spr_dir = (which_dir_is_stage == "go right") ? 1 : -1;
            up_down = false;
            attack_pressed = false;
            jump_pressed = true;

            if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)
            {
                right_down = (which_dir_is_stage == "go right");
                left_down = (which_dir_is_stage == "go left");
                special_pressed = true;
            }
            else if (attack == AT_FSPECIAL)
            {
                if (y < stage_top) special_down = true;
                if (window > 3) recovery_rng = 0; //use uspec next
            }
            break;
        case 3: //using nspec to get closer to the wall
            spr_dir = (which_dir_is_stage == "go right") ? 1 : -1;
            if (state_cat == SC_AIR_NEUTRAL)
            {
                right_down = false;
                left_down = false;
                special_pressed = true;
            }
            else //go towards stage after inputting the attack
            {
                right_down = (which_dir_is_stage == "go right");
                left_down = (which_dir_is_stage == "go left");
                recovery_rng = 0; //use uspec next
            }
            up_pressed = false;
            break;
    }

    if (can_wall_jump && place_meeting(x + 8 * spr_dir, y, asset_get("par_block")) && vsp >= 2)
    {
        jump_pressed = true;
        right_down = (which_dir_is_stage == "go right");
        left_down = (which_dir_is_stage == "go left");
    }
}
else
{
    ring_rng = -1;
    recovery_rng = -1;
}


//fight logic
if (cpu_fight_time > 0)
{
    target_face = (x > ai_target.x && spr_dir == -1 || x < ai_target.x && spr_dir == 1);
    can_hitfall = (state == PS_ATTACK_AIR && has_hit_player && can_fast_fall && hitpause && x > stage_left && x < stage_right);
    
    //tricks
    if (taunt_pressed && trick_input_time == 0)
    {
        taunt_pressed = false;
        trick_chance = -1;
    }
    if (floor(hitstop) == floor(hitstop_full))
    {
        if (combo_hits >= combo_display_hits[0] && is_attacking && attack != AT_TAUNT_2 && !taunt_pressed && ai_target.hitstun_full >= 50)
        {
            trick_chance = random_func(4, combo_display_hits[array_length(combo_display_hits)-1], true);

            //if the combo hits are higher than the RNG it means he is going to trick (more likely if he has a longer combo) (also if it's safe enough)
            if (trick_chance > -1 && trick_chance <= combo_hits && free) taunt_pressed = true;
        }
    }
    else trick_chance = -1;

    //attack specific
    if (is_attacking) switch (attack)
    {
        case AT_UTILT:
            if (has_hit_player) attack_pressed = true;
            break;
        case AT_JAB:
            if (state_timer == 0) combo_seed = random_func(2, 3, true);
            if (has_hit_player)
            {
                attack_pressed = true;
                switch (combo_seed)
                {
                    case 1:
                        if (window == 3 && window_timer >= get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME))
                        {
                            up_down = random_func(3, 3, true) == 0;
                            down_down = random_func(3, 3, true) == 1;
                            left_down = (target_face == -1 && random_func(3, 3, true) == 2);
                            right_down = (target_face == 1 && random_func(3, 3, true) == 2);
                        }
                        break;
                    case 2:
                        if (window == 6 && window_timer >= get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME))
                        {
                            up_down = random_func(3, 3, true) == 0;
                            down_down = random_func(3, 3, true) == 1;
                            left_down = (target_face == -1 && random_func(3, 3, true) == 2);
                            right_down = (target_face == 1 && random_func(3, 3, true) == 2);
                        }
                        break;
                }
            }
            break;
        case AT_NAIR: case AT_UAIR: case AT_DAIR: case AT_BAIR:
            if (can_hitfall) do_a_fast_fall = true;
            break;
        case AT_NSPECIAL: //would probably need to know to aim it
            if ("bar_sonic_reticle_owner" in ai_target) special_pressed = (ai_target.bar_sonic_reticle_owner == self);
            break;
        case AT_FSPECIAL: //would probably need to know to aim it
            if (!ai_recovering) special_down = (target_dist >= 120);
            break;
        case AT_DSPECIAL: //can bounce multiple times with the bounce attack
            if (state_timer == 1) dspec_bounce_amount = random_func(4, dspec_jumps_max, true);
            if (dspec_bounce_amount > dspec_jumps && !has_hit && window == 5 && window_timer < 10)
            {
                special_pressed = true;
                down_down = true;
            }
            break;
    }
}