//ai_update.gml

var surface_left = get_stage_data(SD_X_POS);
var surface_right = room_width - get_stage_data(SD_X_POS);
var surface_top = get_stage_data(SD_Y_POS);

if (get_training_cpu_action() == CPU_FIGHT) ai_fight_time ++;
else ai_fight_time = 0;

if (ai_fight_time > 0)
{
    //if a stilleto doesn't exist, randomize a chance for her to use nspec
    //as long as she isn't in any hitstun state
    if (state_cat != SC_HITSTUN) var ai_use_nspec = random_func(73, 90, true);

    //use nspec
    if (!instance_exists(artc_marker) && ai_use_nspec == 1)
    {
        left_down = false;
        right_down = false;
        up_down = false;
        down_down = false;
        special_pressed = true;
    }
    else if (instance_exists(artc_marker)) //if the stilleto exists and the target enemy is close to it, make keqing use one of her strongs
    {
        if (point_distance(artc_marker.x, artc_marker.y, ai_target.x, ai_target.y) < 120)
        {
            var choose_strong = random_func(14, 12, true);

            switch (choose_strong)
            {
                case 0: //F-strong (left)
                    left_strong_pressed = true;
                    right_strong_pressed = false;
                    up_strong_pressed = false;
                    down_strong_pressed = false;
                    break;
                case 1: //F-strong (right)
                    left_strong_pressed = false;
                    right_strong_pressed = true;
                    up_strong_pressed = false;
                    down_strong_pressed = false;
                    break;
                case 2: //U-strong
                    left_strong_pressed = false;
                    right_strong_pressed = false;
                    up_strong_pressed = true;
                    down_strong_pressed = false;
                    break;
                case 3: //D-strong
                    left_strong_pressed = false;
                    right_strong_pressed = false;
                    up_strong_pressed = false;
                    down_strong_pressed = true;
                    break;
                default:
                    left_strong_pressed = false;
                    right_strong_pressed = false;
                    up_strong_pressed = false;
                    down_strong_pressed = false;
                    break;
            }
        }
    }
}

if (ai_recovering)
{
    //if a stilleto doesn't exist she uses uspec
    if (!instance_exists(artc_marker))
    {
        if (attack == AT_USPECIAL)
        {
            //make keqing hold down special if she is too far so she does the 2nd part of the move
            if (y > surface_top || x < surface_left - 48 || x > surface_right + 48) special_down = true;

            //aim accordingly
            if (x < surface_left - 48) joy_dir = 45 - (surface_top - y)/10;
            if (x > surface_right + 48) joy_dir = 135 + (surface_top - y)/10;

            //joy_dir = 90 - (surface_left + x)/10; //x axis only
        }
    }

    //if a stilleto does exist she will warp to it
    if (instance_exists(artc_marker))
    {
        if (y > surface_top - 48 || x < surface_left - 80 || x > surface_right + 80)
        {
            left_down = false;
            right_down = false;
            up_down = false;
            down_down = false;
            special_pressed = true;
        }
    }
}