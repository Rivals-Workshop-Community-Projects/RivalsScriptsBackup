//update.gml

//muno told me to put it at the top so i can't put it with the workshop stuff aaaaa
if (training_mode) user_event(14);

//training mode prompts
if (training_mode)
{
    if (menu_up && is_training_menu) msg_menu = false;
    if (down_down && taunt_down) msg_phone = false;
}

//AI stuff
if (is_AI) show_player_info = false;
//if bar is a CPU, then he won't show the following:
//1: equiped skills
//2: mini mana gauge

//intro
if (intro_timer >= 4 && intro_timer < 5) intro_timer += 1/7; //initial land
else if (intro_timer >= 16 && intro_timer < 17) intro_timer += 1/10; //final pose
else intro_timer += 1/5;
// the 4 in 1/4 decides the speed it will go

//intro effectwork
//theikos activation is also depending on the animation
if (sprite_index == sprite_get("intro") && !allow_bibical)
{
    //light sound
    if (intro_timer == -3)
    {
        sound_play(sound_get("sfx_introlight"));
    }
    //blast effect
    if (intro_timer == 13)
    {
        var intro_fireblast = spawn_hit_fx(x-16*spr_dir, y-34, fx_fireblow1);
        intro_fireblast.depth = -7;
        sound_play(asset_get("sfx_burnapplied"));
        shake_camera(3, 4); //power, time
    }
    //light particles
    if (intro_timer < 10)
    {
        if (get_gameplay_time() % 2 == 0)
        {
            var light_randomX = random_func(4, 80,true);
            var light_randomY = random_func(5, 32,true)*4;
            var introlight = instance_create(x + (20*spr_dir) - (light_randomX * spr_dir), y - (72*4 + light_randomY), "obj_article1");
                introlight.state = 3;
                introlight.player = player;
                introlight.depth = -7;
                introlight.vsp = 8;

            if (intro_timer > 4) introlight.depth = 2;

            //var light_randomAngle = random_func(6, 80,true)+5;    
            //var introlight = instance_create(x - 72, y - 128, "obj_article1");    
            //introlight.image_angle = light_randomAngle;
        }
    }
    //light beam
    if (intro_timer <= 10) intro_alpha = 0.5;
    else intro_alpha -= 0.05;
    intro_pillar_fx_frame += intro_pillar_fx_speed;
    //hitspark spawn
    if (intro_timer == -3)
    {
        spawn_hit_fx(x-24*spr_dir, y-128+64, fx_lightblow2);
    }
    
    //theikos stuff
    if (theikos && !has_rune("O"))
    {
        //activating theikos (it needs to be earlier so it can register the effects' colors)
        if (intro_timer > 12)
        {
            theikos_active = true;
        }
        //activation effects
        if (intro_timer == 13)
        {
            spawn_hit_fx(x+4*spr_dir, y-32, fx_lightblow3);
            sound_play(sound_get("sfx_lordpunishment"));
            shake_camera(10, 15); //power, time
        }
    }
}
else if (allow_bibical && theikos && !has_rune("O"))
{
    //activating theikos (it needs to be earlier so it can register the effects' colors)
    if (intro_timer > 12)
    {
        theikos_active = true;
    }
    //activation effects
    if (intro_timer == 13)
    {
        spawn_hit_fx(x-2*spr_dir, y-40, fx_lightblow3);
        sound_play(sound_get("sfx_lordpunishment"));
        shake_camera(10, 15); //power, time
    }
}

if (intro_timer < 13 && !was_reloaded) draw_indicator = false;
else draw_indicator = true;
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

//////////////////////////////////////////////////MOVEMENT MECHANICS SECTION//////////////////////////////////////////////////

//midair turning - free version
/*
if (state != PS_ATTACK_AIR && state_cat != SC_HITSTUN && free)
{
    if (left_down) spr_dir = -1;
    else if (right_down) spr_dir = 1;

    if (state == PS_WALL_JUMP) //to make sure walljumps work the same way as they always have
    {
        if (left_down) spr_dir = 1;
        else if (right_down) spr_dir = -1;
    }
}
*/

//midair turning - kirby version
if (state_timer == 5 && (state == PS_DOUBLE_JUMP || state == PS_FIRST_JUMP) && (prev_djumps != djumps))
{
    if (right_down && -spr_dir) {
        spr_dir = 1;
        prev_djump = djumps;
        
    } else if (left_down && spr_dir) {
        spr_dir = -1;
        prev_djumps = djumps;
    }
}

//thanks supersonic!
if (hovering && state != PS_ATTACK_AIR && state == PS_IDLE_AIR)
{
    if (abs(hsp) >= air_max_speed) spr_dir = sign(hsp); //if the absolute value of hsp is greater than or equal to air_max_speed - set the direction to the sign of hsp.
    //NOTE: normally this would be.. very unsafe as sign() returns a value of -1, 0, or 1.
    //however, since we're already guaranteeing that hsp is never 0 when this runs,
    //this is fine.
}

//gliding - credit to Jill Katze
if (can_hover)
{
    if (state_cat == SC_AIR_NEUTRAL && state != PS_FIRST_JUMP && vsp > 1 && jump_down) //vsp > 0 means the hovering only works from the apex of the jump
    {
        hovering = true;

        //constant vsp ver
        vsp = 1.5;
        if (fast_falling) vsp = fast_fall/1.6;

        if (!theikos_active)
        {
            show_glide_ui = true;

            if (godpower) glide_time -= 0.5;
            else glide_time --;

            if (glide_time <= 0)
            {
                glide_time = 0;
                can_hover = false;
            }
        }
        
        //gravity based ver
        //gravity_speed = true_gravity_speed * hover_gravity_multiplier;
        //max_fall = true_max_fall * hover_gravity_multiplier;
    }
    else
    {
        hovering = false;
        gravity_speed = true_gravity_speed;
        max_fall = true_max_fall;
    }
}
else
{
    hovering = false;
}

if (!free) //landing fully restores gliding
{
    can_hover = true;
    glide_time = glide_time_max;
    show_glide_ui = false;
}
else if (state == PS_WALL_JUMP || state == PS_WALL_TECH) //wall jumping or teching gives bar +50 extra frames to glide for
{
    if (state_timer == 1)
    {
        glide_time += glide_time_restore; //add 50 to the glide time
        if (glide_time > glide_time_max) glide_time = glide_time_max; //if glide time is over 50 and it gives over 100, give 100
        if (!can_hover)
        {
            glide_time = glide_time_restore;
            can_hover = true; //if bar couldn't hover, let him
        }
    }
}
else if (state == PS_PRATFALL) //pratfall hides the gliding UI
{
    show_glide_ui = false;
}

//lower double jumps
if (!theikos_active) //theikos bar doesn't have this limit
{
    if (jump_pressed && state == PS_DOUBLE_JUMP)
    {
        //rune B stuff
        if (has_rune("B")) djump_speed = djump_speed / 1.02;
        else if (has_rune("F")) djump_speed = djump_speed / 1.02;
        else djump_speed = djump_speed / 1.04;
    }
    else if (!free)
    {
        djump_speed = djump_speed_reset;
    }
}

//////////////////////////////////////////////////MANA SECTION//////////////////////////////////////////////////

//natural mana regen mechanic
if (mp_current < mp_max && mpGainable)
{
    mp_fc_num += mp_fc_rate;
    
    if (mp_fc_num >= mp_fc_maxNum)
    {
        mp_current ++;
        mp_fc_num = 0;
    }
    if (mp_current >= mp_max)
    {
        mp_current = mp_max;
        mpGainable = false;
    }
}
if (mp_current < 0) //prevents mp_current from going under 0
{
    mpBelowZero = true;

    if (mpBelowZero)
    {
        mp_current = 0;
    }
}
else mpBelowZero = false;

//disable MP gain if it's on the taunt
if (attack == AT_TAUNT) mpGainable = false;
else mpGainable = true;

//low MP message
if (mp_error_active)
{
    show_miniMP = true;
	miniMP_time = miniMP_noMP;
	miniMP_alpha = 1;

    mp_errorcool --;
    mp_error_frame += mp_error_speed;
    if (mp_errorcool == 19)
    {
        sound_play(sound_get("mfx_notice"), 0, 0);
        if (spr_dir == 1)
        {
            mp_message1edit = spawn_hit_fx(x-32, y-78, mp_message1);
            mp_message1edit.depth = depth - 10;
        }
        else
        {
            mp_message2edit = spawn_hit_fx(x+32, y-78, mp_message2);
            mp_message2edit.depth = depth - 10;
        }
    }
    if (mp_errorcool <= 0)
    {
        mp_error_active = false;
        mp_errorcool = 20;
    }
}

//guard aura and accel blitz both have a skill cooldown
if (cool_start)
{
    cooldown --;

    if (cooldown <= 0)
    {
        cool_start = false;
        cooldown = cool_reset;
    }
}


//on cooldown message
if (cd_error_active)
{
    cd_errorcool --;
    cd_error_frame += cd_error_speed;
    if (cd_errorcool == 19)
    {
        sound_play(sound_get("mfx_notice"), 0, 0);
        if (spr_dir == 1)
        {
            cd_message1edit = spawn_hit_fx(x-44, y-78, cd_message1);
            cd_message1edit.depth = depth - 10;
        }
        else
        {
            cd_message2edit = spawn_hit_fx(x+44, y-78, cd_message2);
            cd_message2edit.depth = depth - 10;
        }
    }
    if (cd_errorcool <= 0)
    {
        cd_error_active = false;
        cd_errorcool = 20;
    }
}


//mini MP gauge animation
if (show_miniMP)
{
    miniMP_time ++;
    if (miniMP_time >= miniMP_time_limit-20)
    {
        miniMP_alpha -= 0.05;
    }
    if (miniMP_time == miniMP_time_limit)
    {
        show_miniMP = false;
        miniMP_time = 0;
    }
}

//MP burn logic for burning fury and guard aura
//if the skill select menu is up, MP gain/burn will pause
if (!menu_up && (burningfury_active || guardaura_active))
{
    //activating buffs will burn mana over time and disable mp gaining
    mpGainable = false;
    if ((burningfury_active || guardaura_active) && phone_cheats[mp_drain] == 0) mp_fc_rate = buff_overtime_cost;
    if ((burningfury_active && guardaura_active) && phone_cheats[mp_drain] == 0) mp_fc_rate = buff_overtime_cost*2;
    if (phone_cheats[mp_drain] == 1) mp_fc_rate = 0;

    mp_fc_num += mp_fc_rate;

    if (mp_fc_num >= mp_fc_maxNum)
    {
        mp_current --;
        mp_fc_num = 0;
    }
    if (mp_current <= 0)
    {
        mp_current = 0;
        sound_play(asset_get("sfx_abyss_despawn"), 0, 0, 2);
        burningfury_active = false;
        guardaura_active = false; //if you reach 0 mp, it will just deactivate the skill without any counter attack
    }
}
else mpGainable = true;

//natural mana regen speeds
if (theikos_active && !burningfury_active) mp_fc_rate = 100;
else if (menu_up) mp_fc_rate = 0; //skill select menu
else if (!burningfury_active) mp_fc_rate = mp_rate_default;

//////////////////////////////////////////////////SKILLS AND STRONGS SECTION//////////////////////////////////////////////////

//burning fury
if (burningfury_active) 
{
    if (get_gameplay_time() % 5 == 0 && !hitpause) fire_charge(x, y); //burning fury embers effect

    //strongs deactivate burning fury's buff only on hit
    switch (attack)
    {
        case AT_FSTRONG: case AT_DSTRONG:
			if (has_hit_player && (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)) burningfury_active = false;
			break;
		case AT_USTRONG:
			if (has_hit_player && (state != PS_ATTACK_GROUND || state != PS_ATTACK_AIR) && window < 5) burningfury_active = false;
			break;
    }
}

//photon blast stored charge prevention
//also make it so if bar is hitting someone with photonblast he won't go into pratfall
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_SKILL3)
{
    if (window < 5) photon_charge = true;
    else if (window >= 5) photon_charge = false;

    if (has_hit_player || theikos_active) set_window_value(AT_SKILL3, 6, AG_WINDOW_TYPE, 0);
}
else
{
    photon_charge = false;
    photon_cycle = 0;
    blast_power = 0;
    reset_window_value(AT_SKILL3, 6, AG_WINDOW_TYPE);
}

//accel blitz logic (tis a long one chief)
if (accelblitz_active) //accel blitz's motion blur after bar's teleport
{
    //accel blitz logic
    if ((theikos_active || godpower) && !is_8bit || get_player_color(player) == 31)
    {
        var blend_color = make_colour_rgb(237, 207, 97);
    }
    else
    {
        var palNum = get_player_color(player);
        var blend_r = get_color_profile_slot_r(palNum, 6);
        var blend_g = get_color_profile_slot_g(palNum, 6);
        var blend_b = get_color_profile_slot_b(palNum, 6);
        var blend_color = make_colour_rgb(blend_r, blend_g, blend_b);
    }

    //blur logic from the joke motion blur character
    for(var i = array_length_1d(blur) - 1; i > 0; i--)
    {
	    blur[@ i] = blur[i - 1];
    }
    blur[@ i] = [sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, blend_color, image_alpha];
}
if (!accelblitz_active) blur[@ i] = [sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, blend_color, image_alpha];
//this timer will allow bar to act out of accel blitz
if (accelblitz_active_timer)
{
    accelblitz_post_timer ++;
    if (accelblitz_post_timer % 5 == 0 && accelblitz_post_timer != 20 && !runeG_blitzjump)
    {
        if (hitpause_flash) hitpause_flash = false;
        else hitpause_flash = true;
    }

    if (accelblitz_post_timer >= 20)
    {
        accelblitz_active_timer = false;
        accelblitz_active = false;
        accelblitz_post_timer = 0;
        blur_array_length = 2;

        //if bar:
        //- didn't hit
        //- is in midair
        //- isn't theikos bar
        //- isn't dodging
        //- the move was used already
        if (!has_hit && free && !theikos_active && !pHurtBox.dodging && accelblitz_done_once) set_state(PS_PRATFALL);
    }
}
else if (!accelblitz_active_timer && attack != AT_SKILL4) accelblitz_active = false; //stops motion blur
//allows bar to do accel blitz again if the conditions are met, and resets the variables to set up another accel blitz
//this code shouldsn't affect theikos bar at all
if (state == PS_LAND || state == PS_LANDING_LAG || state == PS_WAVELAND || state == PS_PRATLAND|| state == PS_WALL_JUMP || attack == AT_SKILL4 && !free) 
{
    accelblitz_active = false;
    accelblitz_active_timer = false;
    accelblitz_done_once = false;
    accelblitz_post_timer = 0;
}
//prevent bar from using it again
if (accelblitz_done_once && free && inp_skill4) state = PS_PRATFALL;
//prevernts superposition of an invincible pratfall
if (accelblitz_done_once && !accelblitz_active_timer && !pHurtBox.dodging) state = PS_PRATFALL;

//chasm burster (air) logic
if (free)
{
    set_window_value(AT_SKILL5, 1, AG_WINDOW_VSPEED_TYPE, 2);
    set_window_value(AT_SKILL5, 1, AG_WINDOW_VSPEED, -7.5);
    set_window_value(AT_SKILL5, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
    set_window_value(AT_SKILL5, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
    set_window_value(AT_SKILL5, 1, AG_WINDOW_HAS_SFX, 1);

    set_window_value(AT_SKILL5, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
    set_window_value(AT_SKILL5, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
    set_window_value(AT_SKILL5, 2, AG_WINDOW_HAS_SFX, 0);

    set_window_value(AT_SKILL5, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
    set_window_value(AT_SKILL5, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
}
else
{
    reset_window_value(AT_SKILL5, 1, AG_WINDOW_VSPEED_TYPE);
    reset_window_value(AT_SKILL5, 1, AG_WINDOW_VSPEED);
    reset_window_value(AT_SKILL5, 1, AG_WINDOW_HAS_CUSTOM_FRICTION);
    reset_window_value(AT_SKILL5, 1, AG_WINDOW_CUSTOM_AIR_FRICTION);
    reset_window_value(AT_SKILL5, 1, AG_WINDOW_HAS_SFX);

    reset_window_value(AT_SKILL5, 2, AG_WINDOW_HAS_CUSTOM_FRICTION);
    reset_window_value(AT_SKILL5, 2, AG_WINDOW_CUSTOM_AIR_FRICTION);
    reset_window_value(AT_SKILL5, 2, AG_WINDOW_HAS_SFX);

    reset_window_value(AT_SKILL5, 3, AG_WINDOW_HAS_CUSTOM_FRICTION);
    reset_window_value(AT_SKILL5, 3, AG_WINDOW_CUSTOM_AIR_FRICTION);
}
//prevents chasm burster from overshooting
if (reached_max_bursts)
{
    burst_cool ++;
    if (burst_cool >= 18)
    {
        reached_max_bursts = false;
        burst_cool = 0;
        burst_count = 0;
    }
}
//chasm effect spawning
if (spawn_earth_shatter)
{
    var earth_shatter = spawn_hit_fx(x+burst_pos*spr_dir-46*spr_dir, y, fx_earthshatter);
    earth_shatter.depth = depth - 10;
    sound_play(asset_get("sfx_burnapplied"), 0, 0, 0.7);
    spawn_earth_shatter = false;
}

//guard aura logic
if (guardaura_active)
{
    guard_time --;

    if (guard_time <= 0)
    {
        guardaura_active = false;
        sound_play(asset_get("sfx_abyss_despawn"), 0, 0, 2);
    }

    super_armor = true;
    walk_speed = 2.75*guard_slow;
    walk_turn_time = 8*guard_slow;
    initial_dash_speed = normal_initial_dash_speed*guard_slow;
    dash_speed = normal_dash_speed*guard_slow;
    dash_turn_time = 14*guard_slow;
    moonwalk_accel = 1.2*guard_slow;
    wave_land_adj = normal_wave_land_adj*guard_slow;

    //jump_change = 3*guard_slow;
    air_accel = .3*guard_slow;
    prat_fall_accel = .85*guard_slow;
    air_friction = .05*guard_slow;
}
else if (!guardaura_active)
{
    if (attack != AT_SKILL3 && attack != AT_OVERDRIVE) super_armor = false;
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
if (guard_explosion)
{
    set_attack(AT_SKILL7);
    window = 6;
    window_timer = 0;
    can_move = false;
    if (!theikos_active) cool_start = true;
}

//light hookshot
//differences between the air version and the ground version
if (free)
{
    set_window_value(AT_SKILL9, 3, AG_WINDOW_VSPEED_TYPE, 2);
    set_window_value(AT_SKILL9, 3, AG_WINDOW_VSPEED, -2);
    set_window_value(AT_SKILL9, 3, AG_WINDOW_HSPEED_TYPE, 2);
    set_window_value(AT_SKILL9, 3, AG_WINDOW_HSPEED, -4);

    set_window_value(AT_SKILL9, 4, AG_WINDOW_VSPEED, -0.1);
    set_window_value(AT_SKILL9, 4, AG_WINDOW_HSPEED, -0.1);
}
else
{
    reset_window_value(AT_SKILL9, 3, AG_WINDOW_VSPEED_TYPE);
    reset_window_value(AT_SKILL9, 3, AG_WINDOW_VSPEED);
    reset_window_value(AT_SKILL9, 3, AG_WINDOW_HSPEED_TYPE);
    reset_window_value(AT_SKILL9, 3, AG_WINDOW_HSPEED);

    reset_window_value(AT_SKILL9, 4, AG_WINDOW_VSPEED);
    reset_window_value(AT_SKILL9, 4, AG_WINDOW_HSPEED);
}
//pulling
//bar should pull if it hits anything: wall, player, article
//when bar gets parried at a certain distance the game gets confused
if (hookshot_speedboost)
{
    window = 5;
    window_timer = 0;
    hsp += hookshot_chargetime/2*spr_dir+10*spr_dir; //min: 10 || max: 15
    vsp -= hookshot_chargetime/5+4; //min: 4 || max: 6
    hookshot_speedboost = false;
}

//prat_land_time changing
if (ustrong2_cast) prat_land_time = 24; //theikos U-strong
else if (attack == AT_SKILL2 && prev_state == PS_PRATFALL && state == PS_PRATLAND) prat_land_time = 10; //force leap
else if (theikos_active) prat_land_time = 2; //theikos in general
else prat_land_time = normal_prat_land_time;

//it also needs to check if it's currently pratlanding and has that variable active
if (prev_state == PS_PRATLAND && ustrong2_cast) ustrong2_cast = false;


// if the MP cost is greater than the current MP, this will set a positive cooldown time, meaning the move can't be used before it
// this is for the initial cost only?
// original code is based off Jill Katze's sakuya

// u-strong
move_cooldown[AT_USTRONG] = 1 + ceil(strong_cost - mp_current);

// d-strong
move_cooldown[AT_DSTRONG] = 1 + ceil(strong_cost - mp_current);

// [0] light dagger
move_cooldown[AT_SKILL0] = 1 + ceil(lightdagger_cost - mp_current);
move_cooldown[AT_SKILL0_AIR] = 1 + ceil(lightdagger_cost - mp_current);

// [1] burning fury
move_cooldown[AT_SKILL1] = 1 + ceil(buff_total_cost - mp_current);
move_cooldown[AT_SKILL1_AIR] = 1 + ceil(buff_total_cost - mp_current);
if (burningfury_active) {
    move_cooldown[AT_SKILL1] = 1 + ceil(burningfury_attack_cost - mp_current);
    move_cooldown[AT_SKILL1_AIR] = 1 + ceil(burningfury_attack_cost - mp_current);
}

// [2] force leap
move_cooldown[AT_SKILL2] = 1 + ceil(forceleap_activate_cost - mp_current);

// [3] photon blast
move_cooldown[AT_SKILL3] = 1 + ceil(photonblast_cost - mp_current); 

// [4] accel blitz
move_cooldown[AT_SKILL4] = 1 + ceil(accelblitz_cost - mp_current);

// [5] chasm burster
move_cooldown[AT_SKILL5] = 1 + ceil(chasmburster_total_cost - mp_current);

// [6] power smash
move_cooldown[AT_SKILL6] = 1 + ceil(powersmash_total_cost - mp_current);

// [7] guard aura
move_cooldown[AT_SKILL7] = 1 + ceil(buff_total_cost - mp_current);
if (guardaura_active) move_cooldown[AT_SKILL7] = 1 + ceil(guardaura_counter_cost - mp_current);
else if (cool_start) move_cooldown[AT_SKILL7] = cooldown;

// [8] ember fist
move_cooldown[AT_SKILL8] = 1 + ceil(emberfist_cost - mp_current);
move_cooldown[AT_SKILL8] = 1 + ceil(emberfist_cost - mp_current);

// [9] light hookshot
move_cooldown[AT_SKILL9] = 1 + ceil(lighthookshot_total_cost - mp_current);

// theikos u-strong
move_cooldown[AT_USTRONG_2] = 1 + ceil(strong_cost*2 - mp_current);

// theikos d-strong
move_cooldown[AT_DSTRONG_2] = 1 + ceil(strong_cost*2 - mp_current);


//SKILL SELCTION MENU - thank you Splatracer!
if (state == PS_SPAWN && !menu_up && cur_select != 4)
{
    cur_select = 0;
    selected_nspec = -1;
    selected_fspec = -1;
    selected_uspec = -1;
    selected_dspec = -1;
    menu_up = true;
    if (menu_up) barPause();
}
if (was_reloaded && !menu_up && !is_training_menu)
{
    selected_nspec = 0;
    selected_fspec = 1;
    selected_uspec = 2;
    selected_dspec = 3;
}
if (training_mode)
{
    if (taunt_down && up_down && !menu_up)
    {
        burningfury_active = false;
        guardaura_active = false;
        is_training_menu = true;

        cur_select = 0;
        selected_nspec = -1;
        selected_fspec = -1;
        selected_uspec = -1;
        selected_dspec = -1;

        skill_cursor_x = skill_xpos1; //light dagger's position is the default position
        skill_cursor_y = skill_ypos1;
        menu_up = true;
        if (menu_up)
        {
            barPause();
        }
    }
}
if (state = PS_SPAWN && menu_up) //prevent some skills to be selected in the first place in here
{
    //moving SFX
    if (left_pressed || right_pressed || up_pressed || down_pressed) sound_play(asset_get("mfx_hover"), 0, 0);

    //cursor movement
    //now with added freedom
    if (skill_cursor_x > border_x1) {
        if (left_pressed) skill_cursor_x -= movement;
    }
    else if (skill_cursor_x == border_x1 && left_pressed) skill_cursor_x = border_x2;

    if (skill_cursor_x < border_x2) {
        if (right_pressed) skill_cursor_x += movement;
    }
    else if (skill_cursor_x == border_x2 && right_pressed) skill_cursor_x = border_x1;

    if (skill_cursor_y < border_y1) {
        if (up_pressed) skill_cursor_y += movement;
    }
    else if (skill_cursor_y == border_y1 && up_pressed) skill_cursor_y = border_y2;

    if (skill_cursor_y > border_y2) {
        if (down_pressed) skill_cursor_y -= movement;
    }
    else if (skill_cursor_y == border_y2 && down_pressed) skill_cursor_y = border_y1;

    if (selected_nspec != -1) cur_select = 1; //move to select F-special
    if (selected_fspec != -1) cur_select = 2; //move to select U-special
    if (selected_uspec != -1) cur_select = 3; //move to select D-special
    if (selected_dspec != -1) cur_select = 4; //this will make it so it quits the screen and apply

    //selection code itself, including limitations
    if (attack_pressed && attack_counter == 1)
    {
        clear_button_buffer( PC_ATTACK_PRESSED );
        if (cur_select = 0) //nspecial
        {
            if (skill_cursor_x == skill_xpos1 && skill_cursor_y == skill_ypos1) selected_nspec = 0;
            if (skill_cursor_x == skill_xpos2 && skill_cursor_y == skill_ypos1) selected_nspec = 1;
            if (skill_cursor_x == skill_xpos3 && skill_cursor_y == skill_ypos1) selected_nspec = 2;
            if (skill_cursor_x == skill_xpos4 && skill_cursor_y == skill_ypos1) selected_nspec = 3;
            if (skill_cursor_x == skill_xpos5 && skill_cursor_y == skill_ypos1) selected_nspec = 4;
            if (skill_cursor_x == skill_xpos1 && skill_cursor_y == skill_ypos2) selected_nspec = 5;
            if (skill_cursor_x == skill_xpos2 && skill_cursor_y == skill_ypos2) selected_nspec = 6;
            if (skill_cursor_x == skill_xpos3 && skill_cursor_y == skill_ypos2) selected_nspec = 7;
            if (skill_cursor_x == skill_xpos4 && skill_cursor_y == skill_ypos2) selected_nspec = 8;
            if (skill_cursor_x == skill_xpos5 && skill_cursor_y == skill_ypos2) selected_nspec = 9;
        }
        if (cur_select = 1) //fspecial
        {
            if (skill_cursor_x == skill_xpos1 && skill_cursor_y == skill_ypos1) selected_fspec = 0;
            if (skill_cursor_x == skill_xpos2 && skill_cursor_y == skill_ypos1) selected_fspec = 1;
            if (skill_cursor_x == skill_xpos3 && skill_cursor_y == skill_ypos1) selected_fspec = 2;
            if (skill_cursor_x == skill_xpos4 && skill_cursor_y == skill_ypos1) selected_fspec = 3;
            if (skill_cursor_x == skill_xpos5 && skill_cursor_y == skill_ypos1) selected_fspec = 4;
            if (skill_cursor_x == skill_xpos1 && skill_cursor_y == skill_ypos2) selected_fspec = 5;
            if (skill_cursor_x == skill_xpos2 && skill_cursor_y == skill_ypos2) selected_fspec = 6;
            if (skill_cursor_x == skill_xpos3 && skill_cursor_y == skill_ypos2) selected_fspec = 7;
            if (skill_cursor_x == skill_xpos4 && skill_cursor_y == skill_ypos2) selected_fspec = 8;
            if (skill_cursor_x == skill_xpos5 && skill_cursor_y == skill_ypos2) selected_fspec = 9;
        }
        if (cur_select = 2) //uspecial
        {
            if (skill_cursor_x == skill_xpos1 && skill_cursor_y == skill_ypos1) selected_uspec = 0;
            if (skill_cursor_x == skill_xpos2 && skill_cursor_y == skill_ypos1) selected_uspec = 1;
            if (skill_cursor_x == skill_xpos3 && skill_cursor_y == skill_ypos1) selected_uspec = 2;
            if (skill_cursor_x == skill_xpos4 && skill_cursor_y == skill_ypos1) selected_uspec = 3;
            if (skill_cursor_x == skill_xpos5 && skill_cursor_y == skill_ypos1) selected_uspec = 4;
            if (skill_cursor_x == skill_xpos1 && skill_cursor_y == skill_ypos2) selected_uspec = 5;
            if (skill_cursor_x == skill_xpos2 && skill_cursor_y == skill_ypos2) selected_uspec = 6;
            if (skill_cursor_x == skill_xpos3 && skill_cursor_y == skill_ypos2) selected_uspec = 7;
            if (skill_cursor_x == skill_xpos4 && skill_cursor_y == skill_ypos2) selected_uspec = 8;
            if (skill_cursor_x == skill_xpos5 && skill_cursor_y == skill_ypos2) selected_uspec = 9;
        }
        if (cur_select = 3) //dspecial
        {
            if (skill_cursor_x == skill_xpos1 && skill_cursor_y == skill_ypos1) selected_dspec = 0;
            if (skill_cursor_x == skill_xpos2 && skill_cursor_y == skill_ypos1) selected_dspec = 1;
            if (skill_cursor_x == skill_xpos3 && skill_cursor_y == skill_ypos1) selected_dspec = 2;
            if (skill_cursor_x == skill_xpos4 && skill_cursor_y == skill_ypos1) selected_dspec = 3;
            if (skill_cursor_x == skill_xpos5 && skill_cursor_y == skill_ypos1) selected_dspec = 4;
            if (skill_cursor_x == skill_xpos1 && skill_cursor_y == skill_ypos2) selected_dspec = 5;
            if (skill_cursor_x == skill_xpos2 && skill_cursor_y == skill_ypos2) selected_dspec = 6;
            if (skill_cursor_x == skill_xpos3 && skill_cursor_y == skill_ypos2) selected_dspec = 7;
            if (skill_cursor_x == skill_xpos4 && skill_cursor_y == skill_ypos2) selected_dspec = 8;
            if (skill_cursor_x == skill_xpos5 && skill_cursor_y == skill_ypos2) selected_dspec = 9;
        }

        //PREVENTS PEOPLE FROM SELECTING SKILLS THAT DON'T EXIST YET
        //also prevents you from selecting skills you already selected
        if (cur_select == 0){
            sound_play(asset_get("mfx_confirm"), 0, 0);
        }
        if (cur_select == 1) {
            if (selected_fspec == selected_nspec) {
            
                selected_fspec = -1
                sound_play(sound_get("mfx_notice"), 0, 0);
            }
            else sound_play(asset_get("mfx_confirm"), 0, 0);
        }
        if (cur_select == 2) {
            if (selected_uspec == selected_nspec || selected_uspec == selected_fspec) {
            
                selected_uspec = -1
                sound_play(sound_get("mfx_notice"), 0, 0);
            }
            else sound_play(asset_get("mfx_confirm"), 0, 0);
        }
        if (cur_select == 3) {
            if (selected_dspec == selected_nspec || selected_dspec == selected_fspec || selected_dspec == selected_uspec) {
            
                selected_dspec = -1
                sound_play(sound_get("mfx_notice"), 0, 0);
            }
            else sound_play(asset_get("mfx_confirm"), 0, 0);
        }
    }

    //goes to previous selection if you press "jump" when selecting any of the steps
    //pressing "jump" while on the N-special selection will give bar the default skills
    if (jump_pressed && jump_counter == 1)
    {
        clear_button_buffer( PC_JUMP_PRESSED );
        sound_play(asset_get("mfx_back"), 0, 0);
        if (cur_select == 0) {
            cur_select = 4;
            selected_nspec = 0;
            selected_fspec = 1;
            selected_uspec = 2;
            selected_dspec = 3;
        }
        if (cur_select == 1) {
            cur_select = 0; //moves to select the previous input
            selected_nspec = -1; //cancel the selection of the previous input
        }
        if (cur_select == 2) {
            cur_select = 1;
            selected_fspec = -1;
        }
        if (cur_select == 3) {
            cur_select = 2;
            selected_uspec = -1;
        }
    }

    //quit select screen
    if (cur_select == 4)
    {
        menu_up = false;
        if (!menu_up) {
            barUnpause();
            menu_countdown = menu_countdown_reset;
        }
    }
    else if (cur_select < 4)
    {
        go_through = true;
        attack_invince = true;
    }
}

//countdown timer so people won't stall with the skill select forever
//this only happens with the spawn menu, and if it's not training mode
if (!training_mode && menu_up)
{
    menu_countdown --;

    //5... 4... 3... 2... 1...
    if (menu_countdown == 300 || menu_countdown == 240 || menu_countdown == 180 || menu_countdown == 120 || menu_countdown == 60)
    {
        sound_play(asset_get("mfx_coin"), 0, 0);
        invincible = true;
        invince_time = 0;
    }

    //selecting default skills if you take too much time
    if (menu_countdown <= 0)
    {
        if (selected_nspec == -1) {
            selected_nspec = 0;
        }
        if (selected_fspec == -1) {
            selected_fspec = 1;
            if (selected_nspec == 1) selected_fspec = 0;
        }
        if (selected_uspec == -1) {
            selected_uspec = 2;
            if (selected_nspec == 2 || selected_fspec == 2) {
                selected_uspec = 1;
                if (selected_nspec == 1 || selected_fspec == 1) selected_uspec = 0;
            }
        }
        if (selected_dspec == -1) {
            selected_dspec = 3;
            if (selected_nspec == 3 || selected_fspec == 3 || selected_uspec == 3) {
                selected_dspec = 2;
                if (selected_nspec == 2 || selected_fspec == 2 || selected_uspec == 2) {
                    selected_dspec = 1;
                    if (selected_nspec == 2 || selected_fspec == 2 || selected_uspec == 2) selected_dspec = 0;
                }
            }
        }
        cur_select = 4;
    }
}

//this part updates the "inp_" stuff so it will connect with the actuall skill
inp_nspec = is_special_pressed( DIR_NONE );
inp_fspec = is_special_pressed( DIR_LEFT ) || is_special_pressed( DIR_RIGHT );
inp_uspec = is_special_pressed( DIR_UP );
inp_dspec = is_special_pressed( DIR_DOWN );

if (selected_nspec == 0) inp_skill0 = inp_nspec;
if (selected_nspec == 1) inp_skill1 = inp_nspec;
if (selected_nspec == 2) inp_skill2 = inp_nspec;
if (selected_nspec == 3) inp_skill3 = inp_nspec;
if (selected_nspec == 4) inp_skill4 = inp_nspec;
if (selected_nspec == 5) inp_skill5 = inp_nspec;
if (selected_nspec == 6) inp_skill6 = inp_nspec;
if (selected_nspec == 7) inp_skill7 = inp_nspec;
if (selected_nspec == 8) inp_skill8 = inp_nspec;
if (selected_nspec == 9) inp_skill9 = inp_nspec;

if (selected_fspec == 0) inp_skill0 = inp_fspec;
if (selected_fspec == 1) inp_skill1 = inp_fspec;
if (selected_fspec == 2) inp_skill2 = inp_fspec;
if (selected_fspec == 3) inp_skill3 = inp_fspec;
if (selected_fspec == 4) inp_skill4 = inp_fspec;
if (selected_fspec == 5) inp_skill5 = inp_fspec;
if (selected_fspec == 6) inp_skill6 = inp_fspec;
if (selected_fspec == 7) inp_skill7 = inp_fspec;
if (selected_fspec == 8) inp_skill8 = inp_fspec;
if (selected_fspec == 9) inp_skill9 = inp_fspec;

if (selected_uspec == 0) inp_skill0 = inp_uspec;
if (selected_uspec == 1) inp_skill1 = inp_uspec;
if (selected_uspec == 2) inp_skill2 = inp_uspec;
if (selected_uspec == 3) inp_skill3 = inp_uspec;
if (selected_uspec == 4) inp_skill4 = inp_uspec;
if (selected_uspec == 5) inp_skill5 = inp_uspec;
if (selected_uspec == 6) inp_skill6 = inp_uspec;
if (selected_uspec == 7) inp_skill7 = inp_uspec;
if (selected_uspec == 8) inp_skill8 = inp_uspec;
if (selected_uspec == 9) inp_skill9 = inp_uspec;

if (selected_dspec == 0) inp_skill0 = inp_dspec;
if (selected_dspec == 1) inp_skill1 = inp_dspec;
if (selected_dspec == 2) inp_skill2 = inp_dspec;
if (selected_dspec == 3) inp_skill3 = inp_dspec;
if (selected_dspec == 4) inp_skill4 = inp_dspec;
if (selected_dspec == 5) inp_skill5 = inp_dspec;
if (selected_dspec == 6) inp_skill6 = inp_dspec;
if (selected_dspec == 7) inp_skill7 = inp_dspec;
if (selected_dspec == 8) inp_skill8 = inp_dspec;
if (selected_dspec == 9) inp_skill9 = inp_dspec;

// this is reserved for the skill selction mechanic
// it entirely changes the special moves bar uses in a match
// it needs to pause the game while selecting skills
// to use this, bar needs to press up and taunt to open up the menu in the begining of the match

// default skills: light dagger - nspecial | burning fury - fspecial | force leap - uspecial | photon blast - dspecial

//////////////////////////////////////////////////MISC. SECTION//////////////////////////////////////////////////

//credit to delta parallax for the custom hitbox colors code
//& nackles
with (pHitBox) //references all hitbox objects
{
    if (player_id == other)
    {
        if (type == 1) //this code doesn't like projectiles, so the projectiles are on hitbox_init.gml
        {
            hitbox_shape1 = -1;
            hitbox_shape2 = -1;
            hitbox_shape3 = -1;

            with (other) //define which HG_HITBOX_COLOR is which, and apply it using the shape (weird flex but ok)
            {
                if (get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_COLOR) == 1) other.hitbox_shape1 = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE);
                else if (get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_COLOR) == 2) other.hitbox_shape2 = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE);
                else if (get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_COLOR) == 3) other.hitbox_shape3 = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE);
            }

            //after defining with HG_HITBOX_COLOR the matching number, define the actual sprite_index replacements
            switch (hitbox_shape1) //sweetspots
            {
                case 0:
                    sprite_index = other.hb_sweet_0;
                    break;
                case 1:
                    sprite_index = other.hb_sweet_1;
                    break;
                case 2:
                    sprite_index = other.hb_sweet_2;
                    break;
            }

            switch (hitbox_shape2) //holy burning
            {
                case 0:
                    sprite_index = other.hb_burn_0;
                    break;
                case 1:
                    sprite_index = other.hb_burn_1;
                    break;
                case 2:
                    sprite_index = other.hb_burn_2;
                    break;
            }

            switch (hitbox_shape3) //lightstun
            {
                case 0:
                    sprite_index = other.hb_light_0;
                    break;
                case 1:
                    sprite_index = other.hb_light_1;
                    break;
                case 2:
                    sprite_index = other.hb_light_2;
                    break;
            }
        }
    }
}

//aura color stuff
if (theikos_active && is_8bit)
{
    if (get_player_color(player) == 7) aura_color = $9AE2D3;
    else if (get_player_color(player) == 8) aura_color = $20D3EB;
    aura_alpha = 1;
}

//check if game is paused
if (!start_down) game_paused = false;
if (game_paused) start_down = false;
if (start_down) game_paused = true;

//credit to supersonic for the tutorial
/*
with (hit_fx_obj)
{
    if (player == other.player)
    {
        depth = -3;
    }
}
*/

//respawn platform
//controls the theikos platform glow
if (state == PS_RESPAWN || attack == AT_TAUNT && state == PS_ATTACK_GROUND && free == true) plat_frame += plat_animspeed;

//special charge effects
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
    switch (attack)
    {
        case AT_USTRONG:
            if (window == 2 && get_gameplay_time() % (5-floor(strong_charge/15)) == 0 && !burningfury_active) light_charge(x, y-32);

            if (window == 2 && strong_charge == 0 && !burningfury_active) sound_play(sfx_charge);
            else if (!smash_charging) sound_stop(sfx_charge);
            break;
        case AT_DTHROW: //photon blast
            if (window >= 2 && window <= 4 && photon_charge)
            {
                if (get_gameplay_time() % (4-photon_cycle) == 0)
                {
                    light_charge(x, y-40);
                }
            }

            if (window == 2 && window_timer == 1) sound_play(sfx_charge);
            else if (!photon_charge) sound_stop(sfx_charge);
            break;
        case AT_EXTRA_2: //light hookshot
            if (window == 2 && get_gameplay_time() % (4-floor(hookshot_chargetime/5)) == 0 && hookshot_chargetime != 0 && !burningfury_active)
            {
                light_charge(x-16*spr_dir, y-40);
            }
            if (window == 2 && window_timer == 1 && hookshot_chargetime == 0 && !burningfury_active) sound_play(sfx_charge);
            else if (window != 2) sound_stop(sfx_charge);
            break;
        case AT_USTRONG_2: //theikos Ustrong
            if (window == 2 && get_gameplay_time() % (5-floor(strong_charge/15)) == 0) light_charge(x, y-32);

            if (window == 2 && strong_charge == 0) sound_play(sfx_charge);
            else if (!smash_charging) sound_stop(sfx_charge);
            break;
        case AT_DSTRONG:
            if (window == 2 && get_gameplay_time() % (5-floor(strong_charge/15)) == 0) fire_charge(x, y+16);
            break;
        case AT_DSTRONG_2:
            if (window == 2 && get_gameplay_time() % (5-floor(strong_charge/15)) == 0) fire_charge(x, y);
            break;
        case AT_FSTRONG: //uses the light charge effect only with rune C
            if (has_rune("C"))
            {
                if (window == 2 && get_gameplay_time() % (5-floor(strong_charge/15)) == 0 && !burningfury_active) light_charge(x, y-32);

                if (window == 2 && strong_charge == 0 && !burningfury_active) sound_play(sfx_charge);
                else if (!smash_charging) sound_stop(sfx_charge);
            }
            break;
    }

    if (burningfury_active)
    {
        switch (attack)
        {
            case AT_USTRONG:
                if (window == 2 && strong_charge == 1) sound_play(asset_get("sfx_zetter_fireball_fire"));
                else if (!smash_charging) sound_stop(asset_get("sfx_zetter_fireball_fire"));
                break;
            case AT_EXTRA_2: //light hookshot
                if (window == 2 && window_timer == 1 && hookshot_chargetime == 0) sound_play(asset_get("sfx_zetter_fireball_fire"));
                else if (window != 2) sound_stop(asset_get("sfx_zetter_fireball_fire"));
                break;
            case AT_FSTRONG:
                if (window == 2 && strong_charge == 1) sound_play(asset_get("sfx_zetter_fireball_fire"));
                else if (!smash_charging) sound_stop(asset_get("sfx_zetter_fireball_fire"));
                break;
        }
    }
}
else
{
    sound_stop(sfx_charge);
}

//victory screen stuff
if (!theikos_active)
{
    switch (get_player_color(player))
    {
        case 7: //Gameboy
            set_victory_portrait(sprite_get("portrait_extra1"));
	        set_victory_sidebar(sprite_get("result_small_extra1"));
            set_victory_theme(sound_get("mus_victory_demake"));
            break;
        case 8: //NES
            set_victory_portrait(sprite_get("portrait_extra2"));
	        set_victory_sidebar(sprite_get("result_small_extra2"));
            set_victory_theme(sound_get("mus_victory_demake"));
            break;
        case 30: //Helel
            set_victory_portrait(sprite_get("portrait_extra3"));
	        set_victory_sidebar(sprite_get("result_small_extra3"));
            break;
        case 31: //Theikos alt
            set_victory_portrait(sprite_get("portrait_extra4"));
	        set_victory_sidebar(sprite_get("result_small_extra4"));
            break;
        default:
            set_victory_portrait(sprite_get("portrait"));
	        set_victory_sidebar(sprite_get("result_small"));
            set_victory_theme(sound_get("mus_victory"));
    }
}
else
{
    switch (get_player_color(player))
    {
        case 7: //Gameboy
            set_victory_portrait(sprite_get("portrait_extra5"));
	        set_victory_sidebar(sprite_get("result_small_extra5"));
            set_victory_theme(sound_get("mus_victory_demake"));
            break;
        case 8: //NES
            set_victory_portrait(sprite_get("portrait_extra6"));
	        set_victory_sidebar(sprite_get("result_small_extra6"));
            set_victory_theme(sound_get("mus_victory_demake"));
            break;
        default:
            set_victory_portrait(sprite_get("portrait_extra4"));
	        set_victory_sidebar(sprite_get("result_small_extra4"));
            set_victory_theme(sound_get("mus_victory"));
    }
}

//helel alt rainbow color
//the outline is with the other outlines
if (get_player_color(player) == 30)
{
    color_rate += 5;
    if (color_rate >= 255) color_rate = 0;

    var color_rgb = make_color_rgb(255, 0, 0);
    var hue = (color_get_hue(color_rgb)+color_rate) mod 255;
    var helel_hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb));

    //light
    set_color_profile_slot(30 ,6 , color_get_red(helel_hsv) ,color_get_green(helel_hsv) ,color_get_blue(helel_hsv));
    set_article_color_slot(6, color_get_red(helel_hsv), color_get_green(helel_hsv), color_get_blue(helel_hsv));

    //fire
    set_color_profile_slot(30 ,7 , color_get_red(helel_hsv)-120 ,color_get_green(helel_hsv)-120 ,color_get_blue(helel_hsv)-120);
    set_article_color_slot(7, color_get_red(helel_hsv)-120 ,color_get_green(helel_hsv)-120 ,color_get_blue(helel_hsv)-120);

    //when bar double jumps and starts a dash he will get a rainbow motion blur
    var helel_r = get_color_profile_slot_r(30, 6);
    var helel_g = get_color_profile_slot_g(30, 6);
    var helel_b = get_color_profile_slot_b(30, 6);
    var helel_blend_color = make_colour_rgb(helel_r, helel_g, helel_b);

    //blur logic from the joke motion blur character
    for(var i = array_length_1d(helel_blur) - 1; i > 0; i--) helel_blur[@ i] = helel_blur[i - 1];
    helel_blur[@ i] = [sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, helel_blend_color, image_alpha];

    init_shader();
}

//theikos stuff
if (has_rune("L") && !has_rune("O") && was_reloaded) //theikos reload check
{
    theikos = true;
    theikos_active = true;
}

//theikos stuff
user_event(0);
user_event(1);

//seriously don't be afraid, stupid mortal (also give me my outline)
if (bibical)
{
    if (state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE)
    {
        bibical = false;
        var newfx = spawn_hit_fx(x, y, hit_fx_create(sprite_get("bibical_death"), 40));
        newfx.depth = depth-1;
    }
}
else if (allow_bibical && !bibical)
{
    if (state == PS_RESPAWN or state == PS_SPAWN) bibical = true;
}
//prevents the bibically accurate bar from spawning over the birthday alt
if (birthboy) {
    allow_bibical = false;
    bibical = false;
}

//glowing outlines for different states
if (theikos_active || burningfury_active || godpower || get_player_color(player) == 31) //only start and end working if any of these are true
{
    if (increase) color_timer ++;
    else if (!increase) color_timer --;

    if (!is_8bit)
    {
        if (color_timer >= color_time_max) increase = false;
        else if (color_timer <= 0) increase = true;
    }
    else if (is_8bit)
    {
        if (color_timer >= 5) increase = false;
        else if (color_timer <= 0) increase = true;
    }
}
else
{
    increase = true;
    color_timer = 0;
}

if (!is_8bit) //color choices
{
    if (!theikos_active)
    {
        if (burningfury_active) //burning fury
        {
            color_r = 1 + color_timer*2;
            color_g = 23 + color_timer*1.7;
            color_b = 130 + color_timer*2.3;
        }
        else if (get_player_color(player) == 31)
        {
            color_r = 77 + color_timer*3; //168
            color_g = 31 + color_timer*2.1; //95
            color_b = 6 + color_timer*0.1; //8
        }
        else if (allow_bibical) //bibical alt outline
        {
            color_r = 75;
            color_g = 43;
            color_b = 43;
        }
        else if (get_player_color(player) == 30) //helel alt outline
        {
            color_r = 52;
            color_g = 52;
            color_b = 52;
        }
        else //reset color
        {
            color_r = 0;
            color_g = 0;
            color_b = 0;
        }
    }
    else if (theikos_active) //theikos alt
    {
        color_r = 77 + color_timer*3; //168
        color_g = 31 + color_timer*2.1; //95
        color_b = 6 + color_timer*0.1; //8
    }
}
else if (is_8bit)
{
    if (burningfury_active && !theikos_active)
    {
        switch (get_player_color(player))
        {
            case 7: //GAMEBOY
                if (increase) {
                    color_r = 167;
                    color_g = 186;
                    color_b = 74;
                }
                else if (!increase) {
                    color_r = 83;
                    color_g = 122;
                    color_b = 62;
                }
                break;
        
            case 8: //NES
                if (increase) {
                    color_r = 65;
                    color_g = 65;
                    color_b = 255;
                }
                else if (!increase) {
                    color_r = 32;
                    color_g = 0;
                    color_b = 178;
                }
                break;
        }
    }
    else if (theikos_active)
    {
        switch (get_player_color(player))
        {
            case 7: //GAMEBOY
                if (increase) {
                    color_r = 167;
                    color_g = 186;
                    color_b = 74;
                }
                else if (!increase) {
                    color_r = 83;
                    color_g = 122;
                    color_b = 62;
                }
                break;
        
            case 8: //NES
                palNum = 8;
                if (increase) {
                    color_r = 162;
                    color_g = 48;
                    color_b = 0;
                    set_color_profile_slot(palNum, 0, 255, 219, 162); //CLOTHWHITE
                    set_color_profile_slot(palNum, 1, 255, 121, 48); //HAIR
                    set_color_profile_slot(palNum, 2, 255, 219, 162); //SKIN
                    set_color_profile_slot(palNum, 3, 255, 121, 48); //CLOTHLIGHTBLUE
                    set_color_profile_slot(palNum, 4, color_r, color_g, color_b); //CLOTHDARKBLUE
                    set_color_profile_slot(palNum, 5, color_r, color_g, color_b); //CLOTHBLACK
                }
                else if (!increase) {
                    color_r = 121;
                    color_g = 65;
                    color_b = 0;
                    set_color_profile_slot(palNum, 0, 255, 203, 186); //CLOTHWHITE
                    set_color_profile_slot(palNum, 1, 227, 81, 0); //HAIR
                    set_color_profile_slot(palNum, 2, 255, 203, 186); //SKIN
                    set_color_profile_slot(palNum, 3, 227, 81, 0); //CLOTHLIGHTBLUE
                    set_color_profile_slot(palNum, 4, color_r, color_g, color_b); //CLOTHDARKBLUE
                    set_color_profile_slot(palNum, 5, color_r, color_g, color_b); //CLOTHBLACK
                }
                break;
        }
    }
    else //reset color
    {
        switch (get_player_color(player))
        {
            case 7: //GAMEBOY
                color_r = 15;
                color_g = 56;
                color_b = 15;
                break;

            case 8: //NES
                color_r = 32;
                color_g = 0;
                color_b = 178;
                break;
        }
    }
}

if (godpower)
{
    color_r = 77 + color_timer*3; //168
    color_g = 31 + color_timer*2.1; //95
    color_b = 6 + color_timer*0.1; //8

    if (is_8bit)
    {
        switch (get_player_color(player))
        {
            case 7: //GAMEBOY
                palNum = 7;
                if (increase) {
                    color_r = 221;
                    color_g = 226;
                    color_b = 154;
                    set_color_profile_slot(palNum, 0, 83, 122, 62); //CLOTHWHITE
                    set_color_profile_slot(palNum, 2, 83, 122, 62); //SKIN
                    set_color_profile_slot(palNum, 4, 211, 226, 154); //CLOTHDARKBLUE
                    set_color_profile_slot(palNum, 5, 211, 226, 154); //CLOTHBLACK

                }
                else if (!increase) {
                    color_r = 83;
                    color_g = 122;
                    color_b = 62;
                    set_color_profile_slot(palNum, 0, 211, 226, 154); //CLOTHWHITE
                    set_color_profile_slot(palNum, 2, 211, 226, 154); //SKIN
                    set_color_profile_slot(palNum, 4, 83, 122, 62); //CLOTHDARKBLUE
                    set_color_profile_slot(palNum, 5, 83, 122, 62); //CLOTHBLACK
                }
                break;
        
            case 8: //NES
                palNum = 8;
                if (increase) {
                    color_r = 195;
                    color_g = 113;
                    color_b = 0;
                    set_color_profile_slot(palNum, 4, color_r, color_g, color_b); //CLOTHDARKBLUE
                    set_color_profile_slot(palNum, 5, color_r, color_g, color_b); //CLOTHBLACK
                }
                else if (!increase) {
                    color_r = 121;
                    color_g = 65;
                    color_b = 0;
                    set_color_profile_slot(palNum, 4, color_r, color_g, color_b); //CLOTHDARKBLUE
                    set_color_profile_slot(palNum, 5, color_r, color_g, color_b); //CLOTHBLACK
                }
                break;
        }
    }
}
else if (!godpower && is_8bit && !theikos_active)//reset the colors
{
    switch (get_player_color(player))
    {
        case 7: //GAMEBOY
            set_color_profile_slot(7, 0, 211, 226, 154); //CLOTHWHITE
            set_color_profile_slot(7, 2, 211, 226, 154); //SKIN
            set_color_profile_slot(7, 4, 83, 122, 62); //CLOTHDARKBLUE
            set_color_profile_slot(7, 5, 83, 122, 62); //CLOTHBLACK
            break;

        case 8: //NES
            set_color_profile_slot(8, 0, 255, 203, 186); //CLOTHWHITE
            set_color_profile_slot(8, 1, 227, 81, 0); //HAIR
            set_color_profile_slot(8, 2, 255, 203, 186); //SKIN
            set_color_profile_slot(8, 3, 227, 81, 0); //CLOTHLIGHTBLUE
            set_color_profile_slot(8, 4, 32, 0, 178); //CLOTHDARKBLUE
            set_color_profile_slot(8, 5, 32, 0, 178); //CLOTHBLACK
            break;
    }
}

outline_color = [color_r, color_g, color_b];
init_shader();

if (has_rune("N")) //holy light mechanic
{
    with (oPlayer)
    {
        if (lightstun_timer > 0) lightstun_timer --;
        
        //when the timer ends
        if (lightstun_timer == 0)
        {
            lightstun_timer = -1;
            if (lightstun_pre_stun) with (other)
            {
                var lightstunner = create_hitbox(48, 10, other.x, other.y-char_height/2);
                if ((godpower || od_already_active || theikos_active) && !is_8bit || get_player_color(player) == 31) lightstun_hit.fx_particles = 5;
                else lightstun_hit.fx_particles = 1;
            }
            lightstun_pre_stun = false;
        }

        //effect work
        if (lightstun_pre_stun)
        {
            if (lightstun_timer % 3 == 0) with (other) //spawn sparkles particles
            {
                var sparks = instance_create(other.x - 16*other.spr_dir, other.y - 32, "obj_article1");
                    sparks.spr_dir = other.spr_dir;
                    sparks.state = 5;
                    sparks.vsp = random_func(0, 5, true)-2;
                    sparks.hsp = random_func(1, 5, true)-2;
            }
            
            if (lightstun_timer % 60 == 0) //indicator
            {
                sound_play(asset_get("sfx_frog_fspecial_cancel"), 0);
                with (other) spawn_hit_fx(other.x, other.y-24, fx_lightblow1);
            }
        }
        
        //the lightstun itself
        if (lightstun)
        {
            lightstun_pre_stun = false;

            hitpause = true;
            hitstop = 2;
            set_state(PS_HITSTUN);

            //stun aura animation work
            fx_lightstunned_frame += fx_lightstunned_speed;
            fx_lightstunned_rot += fx_lightstunned_speed*20;

            if (fx_lightstunned_alpha >= 1) fx_lightstunned_alphaincrease = false;
            else if (fx_lightstunned_alpha <= 0.25) fx_lightstunned_alphaincrease = true;
            if (fx_lightstunned_alphaincrease) fx_lightstunned_alpha += 0.05;
            else if (!fx_lightstunned_alphaincrease) fx_lightstunned_alpha -= 0.05;

            if (lightstun_timer == 119) //visual cue work
            {
                with (other)
                {
                    var lightstun_hit = spawn_hit_fx(other.x-2, other.y-(char_height/1.8), fx_lightblow3);
                    lightstun_hit.depth = -7;
                }
                sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"), false, 0);
            }
            if (lightstun_timer <= 0) //timer cue to stop
            {
                lightstun = false;
                fx_lightstunned_frame = 0;
                fx_lightstunned_rot = 0;
                fx_lightstunned_alpha = 1;
            }
        }

        //if they die before the lightstun reset the variables
        if (state == PS_DEAD || state == PS_RESPAWN)
        {
            lightstun_timer = -1;
            lightstun = false;
            lightstun_pre_stun = false;
        }
    }

    //if bar manages to dodge his own lightstun
    if (lightstun_parried)
    {
        if (lightstun_timer == -1)
        {
            lightstun_parried_timer --;

            if (lightstun_parried_timer == 0)
            {
                lightstun_parried = false;
                lightstun_parried_timer = -1;
            }
        }
        else
        {
            lightstun_parried_timer = 10;
        }
    }
}
else //holy burn mechanic
{
    //thanks lukaru!
    with (asset_get("oPlayer")) if (holyburning == other.player)
    {
        if (!hitpause)
        {
            holyburn_counter += 1;
            outline_color = hit_player_obj.burn_outline; //make it so it changes colors depending on the alt
            var randomX = random_func(1, 8,true)*8;
            var randomY = random_func(2, 8,true);
        
            if (holyburn_counter % 20 == 0) take_damage(player, other.player, 1); //every 20 frames hurt foe (CHANGE THIS TO 30)

            if (holyburn_counter % 3 == 0) with (other) //spawn fire particles
            {
                var holyburneffect = instance_create(other.x - (48*other.spr_dir) + (randomX*other.spr_dir), other.y - (80 + randomY), "obj_article1");
                holyburneffect.spr_dir = other.spr_dir;
                holyburneffect.state = 0;
            }

            if (holyburn_counter >= holyburn_maxcount) 
            {
                holyburning = false;

                if (!holyburning)
                {
                    holyburn_counter = 0;
                    outline_color = [0, 0, 0];
                    sound_play(asset_get("sfx_burnend"), 0, 0);
                }
            }

            if (state == PS_DEAD || state == PS_RESPAWN)
            {
                holyburning = false;
                outline_color = [0, 0, 0];
            }
            init_shader();
        }
    }
}

//////////////////////////////////////////////////ABYSS RUNES SECTION//////////////////////////////////////////////////

if (has_rune("A"))
{
    //initial activation
    if (free && state != PS_HITSTUN && state != PS_PRATFALL && state != PS_ATTACK_AIR && runeA_dash_timer >= runeA_dash_time_max && (runeA_dash_cooldown >= runeA_dash_cooldown_max || theikos))
    {
        //if bar faces away from the direction pressed he will turn in midair and dash the other way
        if (left_hard_pressed && spr_dir || right_hard_pressed && -spr_dir) spr_dir = -spr_dir;

        //dash activated
        if (left_hard_pressed && -spr_dir || right_hard_pressed && spr_dir)
        {
            runeA_dash_dir = spr_dir;
            runeA_dash_timer = 0;
            runeA_dash = true;
        }
    }

    //dash properties
    if (runeA_dash)
    {
        state = PS_DASH_START;
        runeA_dash_timer ++;
        vsp = 0;
        hsp = initial_dash_speed*1.5*runeA_dash_dir;
    }

    //activate cooldown
    if (runeA_dash && runeA_dash_timer >= runeA_dash_time_max)
    {
        runeA_dash = false;
        if (!theikos_active) runeA_dash_cool_active = true;
    }
    
    //dash cooldown (does not apply to theikos bar)
    if (runeA_dash_cool_active)
    {
        runeA_dash_cooldown --;
        if (runeA_dash_cooldown <= 0)
        {
            runeA_dash_cool_active = false;
            runeA_dash_cooldown = runeA_dash_cooldown_max;
        }
    }
}

if (has_rune("B")) //the djump speed change is on the double jump code above
{
    can_hover = false;
    max_djumps = 5;
}

if (has_rune("E"))
{
    initial_dash_speed = 10;
    dash_turn_time = 20;
    dash_turn_accel = 1.8;
    dash_stop_percent = .8; //the value to multiply your hsp by when going into idle from dash or dashstop
    ground_friction = .3;
    moonwalk_accel = 1.8;
    wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
    wave_friction = .2; //grounded deceleration when wavelanding

    if (state_timer == 1)
    {
        if (state == PS_WAVELAND || state == PS_DASH_START) spawn_hit_fx(x, y, 6);
        if (state == PS_DASH_STOP || state == PS_DASH_TURN) spawn_hit_fx(x, y, 9);
    }
}

if (has_rune("F")) //heavy bar
{
    jump_speed = 15;
    short_hop_speed = 9;
    fast_fall = 22; //fast fall speed
    knockback_adj = 0.8;
    djump_speed_reset = 8;

    if (!can_hover || !hovering || state != PS_ATTACK_AIR)
    {
        max_fall = 17; //maximum fall speed without fastfalling
        gravity_speed = 1;
    }
}

if (has_rune("G")) //teleporting to spears
{
    if (window == 3)
    {
        if (attack == AT_SKILL0 || attack == AT_SKILL0_AIR || attack == AT_USTRONG || attack == AT_SKILL9) runeG_blitzjump = false;
    }

    if (runeG_blitzjump)
    {
        accelblitz_active = false;
        accelblitz_done_once = false;
        set_window_value(AT_SKILL4, 5, AG_WINDOW_LENGTH, 6);
        set_window_value(AT_SKILL4, 5, AG_WINDOW_HSPEED_TYPE, 0);
        set_window_value(AT_SKILL4, 5, AG_WINDOW_VSPEED_TYPE, 0);
        set_window_value(AT_SKILL4, 5, AG_WINDOW_VSPEED, -runeG_attack_kb_y);
    }
    else
    {
        reset_window_value(AT_SKILL4, 5, AG_WINDOW_LENGTH);
        reset_window_value(AT_SKILL4, 5, AG_WINDOW_HSPEED_TYPE);
        reset_window_value(AT_SKILL4, 5, AG_WINDOW_VSPEED_TYPE);
        reset_window_value(AT_SKILL4, 5, AG_WINDOW_VSPEED);
    }
}

if (has_rune("H")) //hookshot u-strong
{
    var atk = AT_USTRONG;
    var hitboxNum = 4;
    set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 1);
    set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
    set_hitbox_value(atk, hitboxNum, HG_TECHABLE, 2);

    if (runeH_target != noone)
    {
        if (runeH_target.state == PS_DEAD || runeH_target.state == PS_RESPAWN) runeH_target = noone;

		with (runeH_target)
		{
			if (!freemd)
			{
				free = true;
				set_state(PS_HITSTUN);

				hsp = -other.runeH_pullx;
        		vsp = -other.runeH_pully;

                can_wall_jump = false;
                can_wall_tech = false;
			}
            else if (!free) other.runeH_target = noone;
		}

        if (runeH_target && !hitpause)
        {
            with (obj_article1)
		    {
			    particletime = 41;
		    }
        }
    }
}

if (has_rune("K")) //overcharged mana - flashing gauge (the mana stuff itself is with the mana debug cheat)
{
    if (get_gameplay_time() % 20 == 0) gauge_EX_timer_active = true;

    if (gauge_EX_timer_active)
    {
        gauge_EX_color = c_white;
        gauge_EX_timer ++;

        if (gauge_EX_timer >= 5)
        {
            gauge_EX_timer_active = false;
            gauge_EX_timer = 0;
        }
    }
    else gauge_EX_color = gauge_EX_color_return;
}

if (has_rune("N")) //light spark mechanic - anti-spam
{
    if (lightstun_has_hit && (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)) lightstun_has_hit = false;
}

if (has_rune("O")) //overdrive meter
{
    if (od_current <= 0) od_current = 0;

    if (od_current >= 100 && !od_ready)
    {
        sound_play(sound_get("sfx_od_ready"));
        od_ready = true;
    }

    if (get_gameplay_time() % 10 == 0 && (godpower || od_current >= od_max)) gauge_OD_timer_active = true;

    if (gauge_OD_timer_active)
    {
        gauge_OD_color = c_white;
        gauge_OD_timer ++;

        if (gauge_OD_timer >= 5)
        {
            gauge_OD_timer_active = false;
            gauge_OD_timer = 0;
        }
    }
    else gauge_OD_color = gauge_OD_color_return;
}
//LORD'S PUNISHMENT - activation methods
if (has_rune("O") && od_current >= od_max && !od_already_active && (state != PS_ATTACK_AIR || state != PS_ATTACK_GROUND)) //rune version
{
    if (attack_pressed && special_pressed)
    {
        if (!has_rune("L") && !free) set_attack(AT_OVERDRIVE);
        else if (has_rune("L") && !theikos_active) set_attack(47);
    }
}
else if ("fs_charge" in self && fs_charge >= 200 && (state != PS_ATTACK_AIR || state != PS_ATTACK_GROUND)
&& "fs_char_initialized" in self && fs_char_initialized) //final smash version
{
    if (special_pressed && !up_down && !down_down && !left_down && !right_down && !free && attack != AT_USTRONG) fs_force_fs = true;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//FINAL SMASH/OVERDRIVE POST ATTACK EFFECT: LORD'S BLESSING

//resetting variables for the overdrive
if (attack == AT_OVERDRIVE && (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL))
{
    OD_stop_timer = OD_stop_timer_max;
}

if (godpower)
{
    od_prepare_godpower = false;
    //timer work
    god_time --;
    od_current = god_time/9;

    if (theikos_active) od_current = (god_time/9)/2;

    if (god_time == god_time_reset-1)
    {
        sound_play(sound_get("sfx_lordpunishment"), 0, 0, 2);
        od_ready = false;
    }

    if (god_time == 0)
    {
        godpower = false;
        god_time = god_time_reset;
        sound_play(asset_get("sfx_abyss_despawn"), 0, 0, 2);
        if (theikos_active)
        {
            theikos_active = false;
            od_already_active = false;
        }
    }

    //extra burning
    with (asset_get("oPlayer")) if (player != other.player) holyburn_maxcount = god_burn_time;
}
else if (!godpower && !od_already_active) // for some reason this doesn't wanna work with theia evlogia
{
    od_cooldown ++;
    if (od_cooldown == 5) od_gainable = true;
    if (od_gainable) od_cooldown = 0;
}

//aura logic
if (!theikos_active)
{
    if (godpower)
    {
        //flame aura
        aura_frame += aura_speed;
        if (hsp == 0) aura_speed = base_aura_speed;
        else if (hsp > 0) aura_speed = base_aura_speed + hsp / 16;
        else if (hsp < 0) aura_speed = base_aura_speed + hsp / 16 * spr_dir;

        if (is_8bit && !theikos_active)
        {
            if (god_time > 120) aura_alpha = 1;
            if (god_time <= 120) aura_alpha = increase;
        }
        else if (!theikos_active)
        {
            if (god_time > 120) aura_alpha = 0.3;
            else if (god_time <= 120) aura_alpha = god_time/400;
        }
    }
    else
    {
        with (asset_get("oPlayer"))
        {
            damage_scaling = 1;
            holyburn_maxcount = holyburn_default_maxcount;
        }
    }
}
else if (theikos_active)
{
    //aura gone
    if (is_8bit && !theikos_active)
    {
        if (god_time > 120) aura_alpha = 1;
        if (god_time <= 120) aura_alpha = increase;
    }
    else if (!theikos_active)
    {
        if (god_time > 120) aura_alpha = 0.3;
        else if (god_time <= 120) aura_alpha = god_time/400;
    }
}

//////////////////////////////////////////////////WORKSHOP INTERRACTION SECTION//////////////////////////////////////////////////

//Final Smash stuff
charge_color = make_color_hsv(get_gameplay_time() % 255, 255, 255); //custom color for the charge gauge
if ("fs_char_initialized" in self) if (fs_char_initialized && has_rune("O")) fs_charge = 0; //make sure it doesn't work with the OD rune

switch (get_player_color(player)) //fs portrait changer
{
    case 7: //Gameboy
        fs_char_portrait_override = sprite_get("fs_portrait2");
        break;
    case 8: //NES
        fs_char_portrait_override = sprite_get("fs_portrait3");
        break;
    default:
        fs_char_portrait_override = sprite_get("fs_portrait1");
        break;
}

//Phone cheats
//Mana Debug
if (theikos_active) mp_fc_rate = 100;
else if (has_rune("K"))
{
    if (mp_current < 100) mp_fc_rate = runeK_mana_regen;
    else mp_fc_rate = 0;
}
else if (has_rune("O") && godpower) 
{
    mp_fc_rate = god_mp_rate;

    if (has_rune("K"))
    {
        if (mp_current < 100) mp_fc_rate = god_mp_rate;
        else mp_fc_rate = 0;
    }
}
else
{
    if (phone_cheats[mana_debug] > 0) manaDebug = true;

    if (phone_cheats[mana_debug] == 1) mp_fc_rate = mp_rate_default;
    else if (phone_cheats[mana_debug] == 2) mp_fc_rate = 5;
    else if (phone_cheats[mana_debug] == 3) mp_fc_rate = 10;
    else if (phone_cheats[mana_debug] == 4) mp_fc_rate = 20;
    else if (phone_cheats[mana_debug] == 5) mp_fc_rate = 50;
    else if (phone_cheats[mana_debug] == 6) mp_fc_rate = 100;
    else mp_fc_rate = 0;
}

//Steve Death Messages
//because steve only actually allows for 1 on munophone

//steve_death1 = normal death message
//steve_death2 = death from an attack that uses bar's gauntlet
//steve_death3 = death from light based attacks
//steve_death4 = death from an attack that inflicts holy burning, but i also want it to be done as long as steve burns
//steve_death5 = death from bar's taunt
switch (attack)
{
    case AT_JAB: case AT_FTILT: case AT_DTILT: case AT_NAIR: case AT_UAIR: case AT_BAIR: case AT_UTHROW:
        steve_death_message = steve_death1;
        break;

    case AT_UTILT: case AT_FAIR: case AT_DAIR: case AT_FSTRONG:
        steve_death_message = steve_death2;
        break;

    case AT_USTRONG: case AT_NTHROW: case AT_NSPECIAL_AIR: case AT_DTHROW: case AT_NSPECIAL_2: case AT_USPECIAL_2: case AT_EXTRA_2:
        steve_death_message = steve_death3;
        break;

    case AT_DSTRONG: case AT_FTHROW: case AT_FSPECIAL_AIR: case AT_EXTRA_1: case AT_FSPECIAL_2: case AT_DSPECIAL_2:
        steve_death_message = steve_death4;
        break;
            
    case AT_TAUNT:
        steve_death_message = steve_death5;
        break;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//menu pausing everything define

//just stop bar, and nobody else, while making him invincible
#define barPause {
    hurtboxID.sprite_index = sprite_get("empty");
    destroy_hitboxes();
    can_move = false;
    can_attack = false;
    can_jump = false;
    can_strong = false;
    can_ustrong = false;
    can_special = false;
    can_shield = false;
    can_fast_fall = false;
    hitpause = true;
    hitstop = 999999;
    hitstop_full = 999999;
    state = PS_SPAWN;
}
//a special unpause for bar
#define barUnpause {
    hurtboxID.sprite_index = hurtbox_spr;
    can_move = true;
    can_attack = true;
    can_jump = true;
    can_strong = true;
    can_ustrong = true;
    can_special = true;
    can_shield = true;
    can_fast_fall = true;
    hitpause = false;
    hitstop = 0;
    hitstop_full = 0;
    go_through = false;
    //recorded_time = get_gameplay_time(); //used for testing

    if (get_gameplay_time() >= 125) state = PS_IDLE;
    else state_timer = get_gameplay_time();

    if (is_training_menu)
    {
        invince_time = 0; //in practice mode, it disables the extra invincibility
        invincible = false;
    }
    else
    {
        invince_time = 90; //it takes a sec and a half after the versus mode selection to get be invincible
        invincible = true;
    }
}

//charging effects
//light
#define light_charge
{
    sprite_change_offset("fx_introlight", 16, 96);
    sprite_change_offset("theikos_fx_introlight", 16, 96);

    var x = argument[0], y = argument[1];

    var light_randomAngle = random_func(6, 360,true);    
    var light = instance_create(x, y, "obj_article1");
        light.state = 3;
        light.player = player;
        light.depth = -7;
        light.image_angle = light_randomAngle;
}
//fire
#define fire_charge
{
    var x = argument[0], y = argument[1];

    var random = random_func(9, 8,true)*4;
    var random_dir = random_func(10, 2,true);
    if (random_dir == 0) random_dir = -1;
        
    var embers = instance_create(x - (16*spr_dir) + (random*spr_dir), y - (40 + random), "obj_article1");
        embers.spr_dir = random_dir;
        embers.state = 4;
        embers.depth = -random/2;
}

//unused
#define playerPause
with (asset_get("oPlayer")) //stop everyone in game, i'm not using this
{
    can_move = false;
    can_attack = false;
    can_jump = false;
    can_strong = false;
    can_ustrong = false;
    can_special = false;
    can_shield = false;
    can_fast_fall = false;
    hitpause = true;
    hitstop = 999999;
    hitstop_full = 999999;
    if (invincible == false)
    {
        invincible = true;
        invince_time = 999;
    }
    state = PS_SPAWN;
}
#define playerUnpause
with (asset_get("oPlayer")) //unstop everyone in game, i'm not using this too
{
    can_move = true;
    can_attack = true;
    can_jump = true;
    can_strong = true;
    can_ustrong = true;
    can_special = true;
    can_shield = true;
    can_fast_fall = true;
    hitpause = false;
    hitstop = 0;
    hitstop_full = 0;
    invincible = false;
    invince_time = 0;
    if (get_gameplay_time() > 30) state = PS_IDLE;
    else state = PS_SPAWN;
}
#define inDitto
with (asset_get("oPlayer")) //not using this because bar's pause is dependant only on himself
{
    if (url == other.url and !("is_ai" in self)) return true;
}