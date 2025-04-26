// update is a script that runs whatever code is in here every in-game frame.
//user_event(14);

if (!free) || (state = PS_WALL_JUMP)
{
    side_b_used = false;
    up_b_used = false;
}
if (state == PS_WALL_JUMP) 
{
    move_cooldown[AT_USPECIAL] = 0;
    move_cooldown[AT_FSPECIAL] = 0;
}
//Update.gml
if (up_b_used = true)
{
    if (move_cooldown[AT_USPECIAL] < 2)
    {
        move_cooldown[AT_USPECIAL] = 2;
    }
}

if (side_b_used = true)
{
    if (move_cooldown[AT_FSPECIAL] < 2)
    {
        move_cooldown[AT_FSPECIAL] = 2;
    }
}
if (plus_ready)
{
    sub_tick ++;
    if (sub_tick >= 12)
    {
        sub_gauge = 1;
        if (sub_tick == 48)
        {
            sub_gauge = 0;
            sub_tick = 0;
        }
    }
    if (special_pressed = true) && (attack_pressed = true) && (plus_ab_use = false) 
    {
        plus_ready = false;
        sub_tick = 0;
        sub_gauge = 0;
        set_attack(AT_EXTRA_1);
        side_b_used = false;
        up_b_used = false;
        plus_active = true;
        plus_ab_use = true;
        // Ground movement
        walk_speed = 2.75;
        walk_accel = 0.2;
        walk_turn_time = 6;
        initial_dash_time = 7;
        initial_dash_speed = 9;
        dash_speed = 11.5;
        dash_turn_time = 10;
        dash_turn_accel = 1.5;
        dash_stop_time = 4;
        dash_stop_percent = 0.35;
        ground_friction = 0.7;
        moonwalk_accel = 1.3;
        // Air movement
        leave_ground_max = 6;
        max_jump_hsp = 6;
        air_max_speed = 7.5;
        jump_change = 3;
        air_accel = 0.4;
        prat_fall_accel = 0.85;
        air_friction = 0.04;
        max_fall = 10;
        fast_fall = 14;
        gravity_speed = 0.55;
        hitstun_grav = 0.5;
    }
}

if (meter >= 50) && (plus_active = false)
{
    plus_ready = true;
}
if (meter <= 0) && (plus_active = true)
{
    if (state = PS_IDLE) || (state = PS_IDLE_AIR)
    {
        set_attack(AT_EXTRA_2);
        sub_gauge = 0;
        meter = 0;
        plus_active = false;
        plus_ready = false;
        plus_ab_use = false;
        // Ground movement
        walk_speed = 2.75;
        walk_accel = 0.2;
        walk_turn_time = 6;
        initial_dash_time = 7;
        initial_dash_speed = 9;
        dash_speed = 8.5;
        dash_turn_time = 10;
        dash_turn_accel = 1.5;
        dash_stop_time = 4;
        dash_stop_percent = 0.35;
        ground_friction = 0.7;
        moonwalk_accel = 1.3;
        // Air movement
        leave_ground_max = 6;
        max_jump_hsp = 6;
        air_max_speed = 5.5;
        jump_change = 3;
        air_accel = 0.4;
        prat_fall_accel = 0.85;
        air_friction = 0.04;
        max_fall = 10;
        fast_fall = 14;
        gravity_speed = 0.55;
        hitstun_grav = 0.5;
    }
}
if (plus_active = true)
{
    meter_tick++;
    if (meter_tick == meter_subtract)
    {
        meter--;
        meter_tick = 0;
    }
    plus_dmg = 2;
    zap_vfx ++;
    if (zap_vfx >= 6)
    {
        instance_create(x,y,"obj_article1");
        zap_vfx = 0;
    }
    set_attack_value(AT_DSPECIAL,AG_SPRITE,sprite_get("z_dspecial_air"));
}