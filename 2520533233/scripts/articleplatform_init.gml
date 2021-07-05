//article_platform_init
//print_debug("KRAGG");


enum ROCK{
    INIT,
    MOVE,
    DROP,
    IDLE_1,
    IDLE_2
}

hold_time = 60;
hold_timer = 0;

float_timer = 0;
float_time = 120;
float_phase = 1;
float_y = 0;

glow_timer = 0;
glow_time = 60;
glow_phase = 1;

fast_fire = false;
fast_fire_angle = 0;

rock_y_offset = 0;
rock_init_y = 0;
rock_apply_ymod = true;
rock_state = ROCK.INIT;
rock_first_move = true;
rock_goal_y = 0;
rock_goal_x = 0;
rock_init_x = 0;
hsp = 0;
sprite_index = sprite_get("rock");
mask_index = sprite_get("rock_collision");

rock_move_timer = 0;
rock_move_timer_max = 30;

rock_spd = 15;
rock_anim_spd = 0.2;
rock_anim_frame = 0.0;
rock_anim_max = 11;