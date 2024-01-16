//ai_update
with (ai_target) if ("char_height" not in self) exit; //prevents annoying error message

if (get_training_cpu_action() == CPU_FIGHT)
{
    //get bar to te menu select instantly
    if (cpu_fight_time == 0)
    {
        menu_active = true;
        set_state(PS_SPAWN);
    }
    cpu_fight_time ++;
    
    //skill select right off the bat
    if (menu_active)
    {
        if (cpu_fight_time % 5 == 0)
        {
            var cur_index = random_func(current_second, ds_list_size(cpu_skill_pool), true); //find a random index from the current list
            cur_value = ds_list_find_value(cpu_skill_pool, cur_index); //check the value of said index

            cur_skill_hover = cur_value;
        }
        if (cpu_fight_time % cpu_select_time == 0)
        {
            menu_dir = -1;
            ds_list_delete(cpu_skill_pool, cur_index); //delete the index from the list, making the list one element shorter

            if (cur_select == 4) ds_list_destroy(cpu_skill_pool);
        }
    }
}
else
{
    cpu_fight_time = 0;
    cur_select = 0;
}

target_dist = point_distance(x, y, ai_target.x, ai_target.y);
target_angle = point_direction(x, y-char_height/2, ai_target.x, ai_target.y-ai_target.char_height/2);

if (ai_recovering)
{
    skill_check();

    for (var i = 0; i < 4; i++)
    {
        //if bar has burning fury on he lets it rip, doesn't happen if he has searing descent since he automatically uses it
        if (burnbuff_active && mp_current < 30 && skill[cur_skills[i]].skill_id != 10)
        {
            up_down = false;
            if (x < surface_left) right_down = true;
            if (x > surface_right) left_down = true;
            use_skill(1);
        }
        //light hookshot off stage (might need to check if there's actually a wall in front of him lmao)
        if (skill[cur_skills[i]].skill_id == 9 && mp_current >= skill[9].mp_use_cost && y - char_height > surface_top)
        {
            if (x < surface_left - 300) right_down = true;
            if (x > surface_right + 300) left_down = true;
            use_skill(1);
        }
        //disable polaris if offstage
        if (skill[cur_skills[i]].skill_id == 7)
        {
            for (var j = 0; j < polaris_shots_left; j++)
            {
                spawn_hit_fx(polaris_shot_ids[j].x, polaris_shot_ids[j].y, fx_skill7_afterimage);
                polaris_shot_ids[j].length = 0;
            }

            lightbuff_active = false;
        }
    }

    switch (cpu_cur_skill)
    {
        case 1: //burning fury
            if (bbox_right + 1 == surface_left || bbox_left - 1 == surface_right) jump_pressed = true;
            break;
        case 2: //force leap
            joy_pad_idle = false;

            angle_limier(2, true);

            //prevents bar from accidentally using the attack part of force leap when recovering
            attack_pressed = false;
            attack_down = false;
            special_pressed = false;
            special_down = false;
            break;
        case 6: //accel blitz
            joy_pad_idle = false;
            if (window <= 2) special_down = true;

            joy_dir = point_direction(x, y, spr_dir ? surface_left-32 : surface_right-32, surface_top - 32);
            break;
        case 9: //light hookshot
            if (attack == skill[9].skill_attack && window == 2)
            {
                if (hook_charge < (surface_left-50)/100 && spr_dir) special_down = true;
                else if (hook_charge < (surface_right-50)/100 && -spr_dir) special_down = true;
                else special_down = false;
            }
            break;
    }
}

if (cpu_fight_time > 0)
{
    if (bar_should_parry > 0) bar_should_parry --;
    if (state == PS_PARRY && window == 2 && window_timer == 0) bar_should_parry += 190-temp_level*10; //lvl 1: 180 frames | lvl 9: 90 frames

    //general stuff
    skill_check();
    input = random_func(floor(cpu_fight_time/10), 2, true);
    if (!ai_recovering && jump_down) jump_down = false;

    facing_target = (x > ai_target.x && spr_dir == -1 || x < ai_target.x && spr_dir == 1);

    //high level shenaningans
    if (temp_level >= 7) mp_gain_rate = temp_level*2-8; //lvl 7: 6 mp | lvl 8: 8 mp | lvl 9: 10 mp
    if (temp_level == 9) lightstun_active = true;

    //makes bar attempt to parry when enemies are close
    if (!hurtboxID.dodging && !invincible && !free && bar_should_parry <= 0 && temp_level > 5)
    {
        if (instance_exists(pHitBox)) with (pHitBox)
        {
            if (player != other.player)
            {
                if (point_distance(other.x, other.y, x + hsp, y + vsp) < 100 && type == 2 && other.can_shield)
                {
                    with (other)
                    {
                        right_down = false;
                        left_down = false;
                        shield_pressed = true;
                    }
                }
            }
        }
        
        with (oPlayer)
        {
            if (player != other.player)
            {
                if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && point_distance(other.x, other.y, x + hsp / 2, y + vsp / 2) < 150 && other.can_shield)
                {
                    with (other)
                    {
                        right_down = false;
                        left_down = false;
                        shield_pressed = true;
                    }
                }
            }
        }
    }

    //normal attack logic
    //bar knows some specific ways to use certain attacks like jab combo strings
    if (is_attacking) switch (attack)
    {
        case AT_JAB:
            if (has_hit_player && window_timer > window_cancel_time)
            {
                switch (window)
                {
                    case 3:
                        switch (input)
                        {
                            case 0: //continiue jab
                                up_down = false;
                                down_down = false;
                                left_down = false;
                                right_down = false;
                                has_hit_player = false;
                                break;
                            case 1: //jab -> up tilt
                                up_down = true;
                                down_down = false;
                                left_down = false;
                                right_down = false;
                                has_hit_player = false;
                                break;
                            case 2: //jab -> down tilt
                                down_down = true;
                                up_down = false;
                                left_down = false;
                                right_down = false;
                                has_hit_player = false;
                                break;
                        }
                        attack_pressed = true;
                        break;
                    case 6:
                        switch (input)
                        {
                            case 0: //continiue jab
                                up_down = false;
                                down_down = false;
                                left_down = false;
                                right_down = false;
                                break;
                            case 1: //jab -> forward tilt
                                if (spr_dir) right_down = true;
                                else left_down = true;
                                up_down = false;
                                down_down = false;
                                break;
                            case 2: //jab -> down tilt
                                down_down = true;
                                up_down = false;
                                left_down = false;
                                right_down = false;
                                break;
                        }
                        attack_pressed = true;
                        break;
                    case 9:
                        switch (input)
                        {
                            case 0: //continiue jab
                                up_down = false;
                                down_down = false;
                                left_down = false;
                                right_down = false;
                                break;
                            case 1: //jab -> up tilt
                                up_down = true;
                                down_down = false;
                                left_down = false;
                                right_down = false;
                                break;
                            case 2: //jab -> down tilt
                                down_down = true;
                                up_down = false;
                                left_down = false;
                                right_down = false;
                                break;
                        }
                        attack_pressed = true;
                        break;
                }
            }
            break;
        case AT_DTILT:
            if (has_hit_player && window == window_last && window_timer > window_cancel_time)
            {
                switch (input)
                {
                    case 0: //do nothing
                        up_down = false;
                        down_down = false;
                        left_down = false;
                        right_down = false;
                        has_hit_player = false;
                        break;
                    case 1: //dtilt -> jump
                        up_down = false;
                        down_down = false;
                        left_down = false;
                        right_down = false;
                        has_hit_player = false;
                        break;
                    case 2: //dtilt -> utilt
                        up_down = true;
                        down_down = false;
                        left_down = false;
                        right_down = false;
                        has_hit_player = false;
                        break;
                }
                attack_pressed = true;
            }
            break;
        case AT_NAIR: case AT_FAIR: case AT_UAIR: case AT_DAIR: case AT_BAIR:
            if (has_hit_player && can_fast_fall && x > surface_left && x < surface_right && !fast_falling) do_a_fast_fall = true;
            break;
        case AT_USTRONG:
            switch (window)
            {
                case 5: //throw spear if bar is below the ai_target
                    if (ai_target.y < y && ai_target.x < x + 100 && ai_target.x > x - 100) special_pressed = true;
                    break;
                case 7: //aim towards ai_target
                    joy_pad_idle = false;
                    joy_dir = target_angle;
                    break;
            }
            break
        case AT_DSTRONG:
            //if bar manages to catch someone or they are the ai_target is relatively close he will charge more
            strong_down = ((strong_charge < 15 || has_hit_player || target_dist > 50 && target_dist < 150 && strong_charge <= 30) && window == 2);
            break;
    }

    //skill usage manual for dummies
    for (var i = 0; i < 4; i++)
    {
        switch (skill[cur_skills[i]].skill_id)
        {
            case 0: //light dagger
                if (cpu_fight_time % 500 == 0 && daggers_used > 2) daggers_used = 0; //allows him to use light dagger again
                if (mp_current >= skill[0].mp_use_cost && facing_target && (y == ai_target.y && !free || y < ai_target.y && free) && daggers_used <= 2)
                {
                    if ((target_dist < 350 || target_dist < 500 && burnbuff_active) && target_dist > 160)
                    {
                        if (cpu_cur_skill == 0 && (window == 1 || window == 4) && window_timer == 0) daggers_used ++;
                        use_skill(0);
                    }
                }
                break;
            case 4: //flashbang
                if (mp_current >= skill[4].mp_use_cost && target_dist <= 40 && facing_target) use_skill(0);
                break;
            case 8: //ember fist
                if (mp_current >= skill[8].mp_use_cost && (!burnbuff_active && target_dist < 120 &&
                (y > ai_target.y + ai_target.char_height/2 - 32 || y < ai_target.y - ai_target.char_height/2 + 32) || burnbuff_active && target_dist < 70)
                && facing_target)
                {
                    use_skill(0);
                }
                if (attack == skill[8].skill_attack && window == 3)
                {
                    angle_limier(8, false);
                }
                break;
            case 1: //burning fury
                if (!burnbuff_active && !lightbuff_active)
                {
                    burnbuff_time = 0;
                    burnbuff_end_time = random_func(924, 120, true);

                    //the input keeps going back to nspec because i'm forcing it out of fspec, overwriting the code above
                    if (mp_current >= skill[1].mp_use_cost && target_dist < 250) use_skill(1);
                }
                else
                {
                    burnbuff_time ++;
                    if (burnbuff_time >= burnbuff_end_time)
                    {
                        if (mp_current >= skill[1].mp_cost2 && facing_target && (y == ai_target.y && !free || y < ai_target.y && free))
                        {
                            if (target_dist < 200) use_skill(1);
                        }
                    }
                }
            case 5: //power smash
                if (mp_current >= skill[5].mp_use_cost && target_dist < 180 && facing_target) use_skill(1);
                break;
            case 9: //light hookshot
                if (mp_current >= skill[9].mp_use_cost && target_dist < 600 && target_dist > 300 && (ai_target.y > y + 32 || ai_target.y < y - 32))
                {
                    use_skill(1);
                    if (attack == skill[9].skill_attack && window == 2)
                    {
                        if (hook_charge < target_dist/100 && facing_target) special_down = true;
                        else if (!facing_target && !ai_recovering) shield_pressed = true;
                    }
                }
                break;
            case 2: //force leap
                if (mp_current >= skill[2].mp_use_cost && target_dist < 250 && y > ai_target.y && !ai_recovering)
                {
                    use_skill(2);

                    //turn to player
                    if (x > ai_target.x && spr_dir) left_pressed = true;
                    else if (x < ai_target.x && -spr_dir) right_pressed = true;
                }
                if (attack == skill[2].skill_attack)
                {
                    if (window < 3) angle_limier(2, false);
                    else
                    {
                        if (target_dist < 100) attack_pressed = true;
                    }
                }
                break;
            case 6: //accel blitz
                if (mp_current >= skill[6].mp_use_cost && target_dist < 320 && !burnbuff_active && !ai_recovering)
                {
                    joy_pad_idle = false;

                    angle_limier(6, false);
                }
            case 10: //searing descent
                if (mp_current >= skill[10].mp_use_cost && ai_target.y - 64 < y && (ai_target.x > x + 60 || ai_target.x < x - 60)) use_skill(2);
                if (mp_current >= skill[10].mp_cost2 && ai_target.y + 64 > y && (ai_target.x > x + 60 || ai_target.x < x - 60) && (window == 3 || window == 4) && !ai_recovering)
                {
                    special_down = true;
                }
                break;
            case 3: //photon blast
                if (mp_current >= skill[3].mp_use_cost && target_dist < 140 && !burnbuff_active) use_skill(3);
                break;
            case 7: //polaris
                if (!lightbuff_active && !burnbuff_active)
                {
                    lightbuff_time = 0;
                    if (mp_current >= skill[7].mp_use_cost && target_dist < 1000)
                    {
                        use_skill(3);
                    }
                }
                else
                {
                    lightbuff_time ++;
                    if (lightbuff_time > lightbuff_end_time)
                    {
                        down_pressed = true;
                        special_pressed = true;
                    }
                }
                break;
            case 11: //chasm burster
                if (mp_current >= skill[11].mp_use_cost && target_dist < 200 && (ai_target.y > y + 32 || ai_target.y < y - 32) && facing_target) use_skill(3);
                break;
        }
    }

    if (target_dist < 200 && !free && od_cast == 1)
    {
        if (can_overdrive)
        {
            special_down = true;
            attack_down = true;
            
            jump_down = false;
            up_down = false;
            left_down = false;
            right_down = false;
            down_down = false;
        }
        else if ("fs_char_initialized" in self) fs_ai_attempt_use = true;
        //couldn't figure out how to use the super in the fighters thing
    }
}

/////////////////////////////////////////////////////////////// #DEFINE SECTION ///////////////////////////////////////////////////////////////

#define skill_check
{
    if (is_attacking)
    {
        switch (attack)
        {
            default: cpu_cur_skill = -1; break;
            case AT_NTHROW: case AT_NSPECIAL_AIR: cpu_cur_skill = 0; break;
            case AT_FTHROW: case AT_FSPECIAL_AIR: cpu_cur_skill = 1; break;
            case AT_UTHROW: cpu_cur_skill = 2; break;
            case AT_DTHROW: cpu_cur_skill = 3; break;
            case 39: cpu_cur_skill = 4; break;
            case AT_FSPECIAL_2: cpu_cur_skill = 5; break;
            case AT_NSPECIAL_2: cpu_cur_skill = 6; break;
            case AT_USPECIAL_2: cpu_cur_skill = 7; break;
            case AT_DSPECIAL_2: cpu_cur_skill = 8; break;
            case AT_EXTRA_2: cpu_cur_skill = 9; break;
            case AT_EXTRA_3: cpu_cur_skill = 10; break;
            case AT_EXTRA_1: cpu_cur_skill = 11; break;
        }
    }
    else cpu_cur_skill = -1;
}
#define use_skill(input)
{
    var maybe_use_skill = random_func_2(current_second, 100-temp_level*5, true);
    if (state_cat != SC_GROUND_COMMITTED && state_cat != SC_AIR_COMMITTED && state_cat != SC_HITSTUN && maybe_use_skill == input
    && ai_target.state != PS_DEAD && ai_target.state != PS_RESPAWN)
    {
        switch (input)
        {
            case 0: set_attack(AT_NSPECIAL); break;
            case 1: set_attack(AT_FSPECIAL); break;
            case 2: set_attack(AT_USPECIAL); break;
            case 3: set_attack(AT_DSPECIAL); break;
        }
    }
}
#define angle_limier(skill, recovering)
{
    if (recovering)
    {
        if (x < surface_left) joy_dir = point_direction(x, y, surface_left, surface_top - 48);
        if (x > surface_right) joy_dir = point_direction(x, y, surface_right, surface_top - 48);
    }
    else joy_dir = target_angle;
    
    switch (skill) //specific skill setup
    {
        case 2: //force leap
            if (up_down && (joy_dir > 70 && spr_dir || joy_dir < 110 && -spr_dir)) joy_dir = spr_dir ? 70 : 110;
            else if (down_down
                ||left_down && joy_dir > 160 && -spr_dir
                || right_down && (joy_dir < 20 || joy_dir > 160) && spr_dir) joy_dir = spr_dir ? 20 : 160;
            else
            {
                if (right_down && -spr_dir) joy_dir = 135;
                else if (left_down && spr_dir) joy_dir = 45;
            }
            break;
        case 6: //accel blitz
            if (window <= 2)
            {
                if (!instance_exists(accel_marker_artc)) special_down = true;
                else if (accel_marker_artc.state == "accel_indc")
                {
                    joy_dir = point_direction(accel_marker_artc.x, accel_marker_artc.y-32, ai_target.x, ai_target.y-ai_target.char_height/2);

                    if (point_distance(accel_marker_artc.x, accel_marker_artc.y-32, ai_target.x, ai_target.y-ai_target.char_height/2) >= 20) special_down = true;
                    else special_down = false;
                } 
            }
            break;
        case 8: //ember fist
            if (spr_dir) angle_saved = joy_dir > 180 ? clamp(joy_dir, 360 - ember_range, 360) : clamp(joy_dir, 0, 0 + ember_range);
            else angle_saved = clamp(joy_dir, 180 - ember_range, 180 + ember_range);
            break;
    }
}