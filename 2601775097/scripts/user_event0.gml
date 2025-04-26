//user_event0
//theikos state changes

/////////////////////////////////////////////////////////// THEIKOS INIT ///////////////////////////////////////////////////////////

if (theikos_event_runtime == 0)
{
    //outline
    if (alt_cur != 14 && alt_cur != 15) no_effect_line_color = [97, 45, 2];
    theikos_theme = noone;

    light_col = make_colour_rgb(get_color_profile_slot_r(26, 6), get_color_profile_slot_g(26, 6), get_color_profile_slot_g(26, 6));
	line_color = [get_color_profile_slot_r(26, 7), get_color_profile_slot_g(26, 7), get_color_profile_slot_b(26, 7)];
    
    fire_col = make_colour_rgb(line_color[0], line_color[1], line_color[2]);

    //music cue
    if (!playtesting) theikos_music = true;
    if (theikos_music)
    {
        with (oPlayer) if ("theikos_music" in self && theikos_music && self != other) do_i_hear_boss_music(false);
        do_i_hear_boss_music(true);
    }

    //stats 
    knockback_adj               = 0.7       // 1.15

    walk_speed          		= 2.1;      // 2.75
    walk_accel          		= 0.6;      // 0.2
    walk_turn_time      		= 1;        // 8
    initial_dash_time   		= 8;        // 10
    initial_dash_speed  		= 16;       // 7.5
    dash_speed          		= 10;       // 7
    dash_turn_time      		= 4;        // 14
    moonwalk_accel 		        = 2;        // 1.2

    leave_ground_max 			= 0;        //7
    max_jump_hsp 				= 50;       //7
    air_max_speed 				= 10;       //6
    air_accel 					= 0.5;      //0.3
    prat_fall_accel 			= 1.25;     //0.85
    air_friction 				= 0;        //0.05
    fast_fall 					= 40;       //15

    wave_friction 				= 0.2;      //0.4
    wave_land_time 				= 2;        //8
    wave_land_adj 				= 2.25;     //1.35

    dash_anim_speed             = 0.2;      //0.3

    wait_time                   = 0; //theikos bar has no wait animation

    mp_gain_rate = 100;
    lightstun_active_set = lightstun_active_set * theikos_mult;

    rune_A_airdash_speed = 22;
}

theikos_event_runtime ++;

////////////////////////////////////////////////////////// THEIKOS UPDATE //////////////////////////////////////////////////////////

if (theikos_event_runtime > 0)
{
    //let the theikos music play
    if (!playtesting) suppress_stage_music(0, 100);

    if (djumps > 0) djumps = 0; //he used to have 50 djumps but now his jumps just constnatly refresh
    glide_stamina = glide_stamina_max;
    rune_A_cd = 0;
    soft_armor = (is_attacking) ? 999999 : 16;
    if (state == PS_PRATLAND || state == PS_PRATFALL) set_state(free ? PS_IDLE_AIR : PS_IDLE);

    //taunt insta kill
    if (is_attacking && attack == AT_TAUNT && window == 7 && has_hit_player)
    {
        create_deathbox(x-16, y-42, 100, 100, has_hit_id.player, true, 1, 1, 1);
        if (!hitpause) has_hit = false;
    }

    //screenshakes of raw POWER (should also screenshake on landing after a fastfall)
    if ((state == PS_DASH_START || state == PS_AIRDASH) && state_timer == 1) shake_camera(2, 12);

    if (smash_charging) shake_camera(ceil(strong_charge/10), 10); //charging a strong will make the screen shake depending on the power

    //turbo stuff (some stuff is in attack_update)
    if (window == 1 && window_timer == 1) move_cooldown[attack] = 2; //give all attacks cooldown (after it's registered)
    if (!is_attacking) move_cooldown[attack] = 0; //if bar isn't attacking, let him attack
    if (prev_attack != attack || attack == AT_NAIR) move_cooldown[prev_attack] = 0; //if the attack isn't the previous attack put no cooldown

    prev_attack = attack;
}

////////////////////////////////////////////////////////// #DEFINE SECTION //////////////////////////////////////////////////////////

#define do_i_hear_boss_music(enable)
{
    if (!enable)
    {
        if (alt_cur != 14 || alt_cur != 15) sound_stop(theikos_theme);
        else sound_stop(theikos_theme);
        theikos_theme = noone;
    }
    else
    {
        var volume = get_local_setting(3);
        if (alt_cur != 14 && alt_cur != 15) theikos_theme = sound_play(sound_get("mus_theikos"), true, noone, min(volume*2, 1));
        else theikos_theme = sound_play(sound_get("mus_theikos_demake"), true, noone, min(volume*2, 1));
    }
}