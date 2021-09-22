//user event 0 - theikos bar rune

if (theikos_active)
{
    //////////////////////////////////////////////////VISUALS SECTION//////////////////////////////////////////////////

    //flame aura
    aura_frame += aura_speed;
    if (hsp == 0) aura_speed = base_aura_speed;
    else if (hsp > 0) aura_speed = base_aura_speed + hsp / 16;
    else if (hsp < 0) aura_speed = base_aura_speed + hsp / 16 * spr_dir;

    //ancient text aura
    if (get_gameplay_time() % 3 == 0)
    {
        var text_randomX = random_func(4, 8,true)*8;
        var text_randomY = random_func(5, 8,true)*10;
        var textdepth = random_func(6, 10,true);
        var holytext = instance_create(x - (8 + (28*spr_dir) - (text_randomX * spr_dir)), y - (16 + text_randomY), "obj_article1");
            holytext.state = 2;
            holytext.player = player;
            holytext.spr_dir = spr_dir;
            holytext.vsp -= 2;
            holytext.depth = textdepth-7;
            if (spr_dir == -1) holytext.spr_dir = -spr_dir;
    }

    //theikos music
    bossMusic_start = true;
    if (bossMusic_start)
    {
        bossMusic_count ++; //this is just a state timer thing to prevent it from playing multiple times and making it consistent

        if (bossMusic_count == 1)
        {
            var volume = get_local_setting(3);
            if (!is_8bit) sound_play(sound_get("mus_theikos"), true, noone, min(volume*2, 1));
            else sound_play(sound_get("mus_theikos_demake"), true, noone, min(volume*2, 1));
        }
    }

    //////////////////////////////////////////////////STATS SECTION//////////////////////////////////////////////////

    //INIT CHANGES
    dash_anim_speed = .5;
    walk_speed = 2.1;
    walk_accel = 0.6;
    walk_turn_time = 1;
    initial_dash_time = 8;
    initial_dash_speed = 16;
    dash_speed = 10;
    dash_turn_time = 4;
    leave_ground_max = 0; //the maximum hsp you can have when you go from grounded to aerial without jumping
    max_jump_hsp = 50; //the maximum hsp you can have when jumping from the ground
    air_max_speed = 10; //the maximum hsp you can accelerate to when in a normal aerial state
    prat_fall_accel = 1.25; //multiplier of air_accel while in pratfall
    air_accel = .5;
    max_djumps = 50;
    fast_fall = 40; //fast fall speed
    knockback_adj = 0.8; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
    wave_land_time = 2;
    wave_land_adj = 2.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
    wave_friction = .2; //grounded deceleration when wavelanding

    if (state == PS_ATTACK_AIR && (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG)) air_friction = .3;
    else air_friction = 0;

    //EXTRA FEATURES
    soft_armor = 10; //free real estate soft armor
    if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) soft_armor = 9999; //basically invincible
    if (state == PS_DASH_START || has_rune("A") && runeA_dash && free) shake_camera(4, 3);

    if (fast_falling) heavy_land = true; //fastfalling logic
    if (heavy_land && (state == PS_LAND || state == PS_LANDING_LAG))
    {
        shake_camera(6, 5);

        land_time = 16;
        set_attack_value(attack, AG_LANDING_LAG, 16);

        heavy_land_start_count = true;

        if (heavy_land_start_count)
        {
            heavy_land_count++;

            if (heavy_land_count >= 10)
            {
                heavy_land_start_count = false;
                heavy_land_count = 0;
                heavy_land = false;
                reset_attack_value(attack, AG_LANDING_LAG);
            }
        }
    }
    else land_time = 4;

    set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 30); //taunt knockback basically insta-kills

    if (smash_charging) shake_camera(strong_charge/10, 10); //charging a strong will make the screen shake depending on the power

    //healing if you have full mana... which is basically always buuuuut it makes things more interesting for the 1 sec you don't lol
    if (mp_current == mp_max)
    {
        heal_count ++;
        if (heal_count == heal_count_max) damage_heal = heal_me_now;
        if (heal_count > heal_count_max)
        {
            heal_count = 0;
            damage_heal = 0;
        }
    }
    take_damage(player, player, damage_heal);

    turbo_time = true; //theikos bar has turbo mode

    holyburn_maxcount = god_burn_time;

    //this will make the normal strongs' vspeed stop in midair
    for(i = 0; i <= 9; i ++)
    {
        set_window_value(AT_FSTRONG, i, AG_WINDOW_VSPEED_TYPE, 1);
        set_window_value(AT_FSTRONG, i, AG_WINDOW_VSPEED, 0);

        set_window_value(AT_USTRONG, i, AG_WINDOW_VSPEED_TYPE, 1);
        set_window_value(AT_USTRONG, i, AG_WINDOW_VSPEED, 0);

        set_window_value(AT_DSTRONG, i, AG_WINDOW_VSPEED_TYPE, 1);
        set_window_value(AT_DSTRONG, i, AG_WINDOW_VSPEED, 0);
    }
}
else
{
    if (!theikos_active)
    {
        bossMusic_count = 0;
        sound_stop(sound_get("mus_theikos"));
        sound_stop(sound_get("mus_theikos_demake"));
    }

    //INIT CHANGES
    if (!guardaura_active)
    {
        walk_speed = normal_walk_speed;
        walk_turn_time = normal_walk_turn_time;
        initial_dash_speed = normal_initial_dash_speed;
        dash_speed = normal_dash_speed;
        dash_turn_time = normal_dash_turn_time;
        moonwalk_accel = normal_moonwalk_accel;
        wave_land_adj = normal_wave_land_adj;

        air_accel = normal_air_accel;
        prat_fall_accel = normal_prat_fall_accel;
        air_friction = normal_air_friction;
    }
    dash_anim_speed = .3;
    walk_accel = 0.2;
    initial_dash_time = 10;
    leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
    max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
    air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
    max_djumps = 3;
    fast_fall = 12; //fast fall speed
    knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
    wave_land_time = 8;
    wave_friction = .4; //grounded deceleration when wavelanding

    //EXTRA FEATURES
    reset_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK); //taunt knockback basically insta-kills
    holyburn_maxcount = holyburn_default_maxcount;
    turbo_time = false; //theikos bar has turbo mode
}