//ai_update.gml

with (ai_target) if ("char_height" not in self) exit; //prevents annoying error message

//CPU fight mode check
if (get_training_cpu_action() == CPU_FIGHT) cpu_fight_time ++;
else cpu_fight_time = 0;

target_dist = point_distance(x, y, ai_target.x, ai_target.y);
target_angle = point_direction(x, y-char_height/2, ai_target.x, ai_target.y-ai_target.char_height/2);

//recovery logic
if (ai_recovering)
{
    //recovery code here
}

//fight logic
if (cpu_fight_time > 0)
{
    //facing target check
    target_face = (x > ai_target.x && spr_dir == -1 || x < ai_target.x && spr_dir == 1);

    if (temp_level >= 5)
    {
        var proj_dist = 9999999999999;

        with (pHitBox) if (player != other.player && type == 2 && !plasma_safe)
        {
            if (point_distance(other.x, other.y-other.char_height/2, x + hsp, y + vsp) < 200 - point_distance(0, 0, hsp, vsp)*2)
            {
                proj_dist = point_distance(other.x, other.y-other.char_height/2, x + hsp, y + vsp);
                other.proj_check = self;
            }
        }
        if (!is_attacking && can_attack && instance_exists(proj_check) && attack != AT_NSPECIAL) set_attack(AT_NSPECIAL);
    }

    if (place_rune_cd > 0) place_rune_cd --;

    if (is_attacking) switch (attack)
    {
        //moves that need custom behaviour
        case AT_JAB:
            //combo into more jabs/tilts
            if (has_hit_player && window_timer > window_cancel_time && get_window_value(attack, window, AG_WINDOW_CANCEL_TYPE) == 1)
            {
                jab_path = random_func(floor(cpu_fight_time/10), 4, true);
                switch (jab_path)
                {
                    case 0: //continiue jab
                        up_down = false;
                        down_down = false;
                        left_down = false;
                        right_down = false;
                        break;
                    case 1: //jab -> utilt
                        up_down = true;
                        down_down = false;
                        left_down = false;
                        right_down = false;
                        break;
                    case 2: //jab -> ftilt
                        up_down = false;
                        down_down = false;
                        if (spr_dir)
                        {
                            left_down = false;
                            right_down = true;
                        }
                        else
                        {
                            left_down = true;
                            right_down = false;
                        }
                        break;
                    case 3: //jab -> dtilt
                        up_down = false;
                        down_down = true;
                        left_down = false;
                        right_down = false;
                        break;
                }
                has_hit_player = false;
                attack_pressed = true;
                    
            }
            break;
        case AT_USTRONG: case AT_DSTRONG:
            strong_down = (target_dist > 100);
            break;
        case AT_NSPECIAL:
            if (window == 1 && should_stop_nspec)
            {
                nspec_rune_end_delay = random_func(0, 7, true)*2 + 8;
                should_stop_nspec = false;
            }

            if (instance_exists(proj_check)) //check above
            {
                special_down = true;
                joy_pad_idle = false;
                joy_dir = point_direction(x, y-char_height/2, proj_check.x, proj_check.y);

                if (temp_level >= 7 && point_distance(x, y-char_height/2, ai_target.x, ai_target.y) < 90) proj_check = noone;
            }
            else if (!instance_exists(proj_check))
            {
                if (nspec_rune_end_delay > 0) nspec_rune_end_delay --;
                else
                {
                    if (!should_stop_nspec)
                    {
                        should_stop_nspec = true;
                        ai_nspec_shield_cancel = random_func(6, 2, true);
                    }

                    if (ai_nspec_shield_cancel && place_rune_cd > 0)
                    {
                        shield_pressed = true;
                        special_down = true;
                    }
                    else
                    {
                        special_down = false;
                        place_rune_cd = place_rune_cd_set;
                    }
                    proj_check = noone;
                }
            }
            break;
        case AT_USPECIAL:
            //if she is near a rune off stage she will fspec instead (assuming the rune's angle will bounce her away from the stage)
            break;
        /////////////////////////////////
        case AT_FSTRONG:
            if (window == 5 && target_face && point_distance(x, 0, ai_target.x, 0) < 200 && point_distance(0, y-char_height/2, 0, ai_target.y-char_height/2) < 32)
            {
                special_down = true;
            }
            break;
        case AT_FSPECIAL:
            if (window == 2)
            {
                if (point_distance(x, 0, ai_target.x, 0) < 150 && point_distance(0, y-char_height/2, 0, ai_target.y-char_height/2) < 32) attack_pressed = true;
                else if (point_distance(x, 0, ai_target.x, 0) > 400 && point_distance(0, y-char_height/2, 0, ai_target.y-char_height/2) > 80 && djumps < max_djumps)
                {
                    jump_pressed = true;
                }
            }
            if (window == 3)
            {
                if (ai_target.y < y - 48) jump_pressed = true;
                if (point_distance(0, y, 0, ai_target.y) < 2) attack_pressed = true;
            }
            break;
        case AT_DSPECIAL:
            var check_dist = 99999999999999;
            with (oPlayer) if (player != other.player && check_dist > point_distance(x, y-char_height/2, other.x, other.y-other.char_height/2))
            {
                check_dist = point_distance(x, y-char_height/2, other.x, other.y-other.char_height/2);
            }
            special_down = (check_dist > stop_charge_dist);
            break;
    }
}