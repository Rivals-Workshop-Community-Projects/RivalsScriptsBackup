//debug_draw.gml

//Stat Debug cheat
if (phone_cheats[CHEAT_STATS] == 1)
{
    var view_x_title = floor(view_get_xview()+16);
    var view_x_stat = floor(view_get_xview()+32);

    var view_y0 = floor(view_get_yview()+0);
    var view_y1 = floor(view_get_yview()+16);
    var view_y2 = floor(view_get_yview()+32);
    var view_y3 = floor(view_get_yview()+48);
    var view_y4 = floor(view_get_yview()+64);
    var view_y5 = floor(view_get_yview()+80);
    var view_y6 = floor(view_get_yview()+96);

    //stat 1 = coordinates and speed
    var stat_x1 = 0;
    var stat_y1 = 128;
    //stat 2 = window/state
    var stat_x2 = 0;
    var stat_y2 = 224;
    //stat 3 = mana stuff
    var stat_x3 = 208;
    var stat_y3 = 128;
    //stat 4 = rune specifics
    var stat_x4 = 208;
    var stat_y4 = 224;

    //stats 1 - coordinates
    draw_debug_text(view_x_title + stat_x1, view_y0 + stat_y1, "COORDINATES:");
    draw_debug_text(view_x_stat + stat_x1, view_y1 + stat_y1, "x = " + string(x));
    draw_debug_text(view_x_stat + stat_x1, view_y2 + stat_y1, "y = " + string(y));
    draw_debug_text(view_x_stat + stat_x1, view_y3 + stat_y1, "hsp = " + string(abs(hsp)));
    draw_debug_text(view_x_stat + stat_x1, view_y4 + stat_y1, "vsp = " + string(abs(vsp)));

    //stats 2 - states
    draw_debug_text(view_x_title + stat_x2, view_y0 + stat_y2, "STATE:");
    if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) //attacks
    {
        draw_debug_text(view_x_stat + stat_x2, view_y1 + stat_y2, "Attack = " + string(move_names[attack]));
        draw_debug_text(view_x_stat + stat_x2, view_y2 + stat_y2, "Time = " + string(window_timer));
        draw_debug_text(view_x_stat + stat_x2, view_y3 + stat_y2, "Window = " + string(window));
        
        if (free)
        {
            draw_debug_text(view_x_stat + stat_x2, view_y4 + stat_y2, "Djumps Left = " + string(max_djumps-djumps));
            draw_debug_text(view_x_stat + stat_x2, view_y5 + stat_y2, "Fastfall = " + string(fastfall_word));
        }
    }
    else if (state == PS_PARRY_START || state == PS_PARRY || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD) //shield actions
    {
        draw_debug_text(view_x_stat + stat_x2, view_y1 + stat_y2, "State = " + string(get_state_name(state)));
        draw_debug_text(view_x_stat + stat_x2, view_y2 + stat_y2, "Time = " + string(window_timer));
        draw_debug_text(view_x_stat + stat_x2, view_y3 + stat_y2, "Window = " + string(window));
    }
    else //everything else
    {
        draw_debug_text(view_x_stat + stat_x2, view_y1 + stat_y2, "State = " + string(get_state_name(state)));
        draw_debug_text(view_x_stat + stat_x2, view_y2 + stat_y2, "Time = " + string(state_timer));

        //air states
        if (state != PS_PRATFALL && (state == PS_FIRST_JUMP && state_timer > 0) || state == PS_DOUBLE_JUMP ||
        state == PS_IDLE_AIR || state == PS_WALL_JUMP || show_glide_ui)
        {
            draw_debug_text(view_x_stat + stat_x2, view_y3 + stat_y2, "Glide Stamina = " + string(floor(glide_time)) + " / " + string(glide_time_max));
            draw_debug_text(view_x_stat + stat_x2, view_y4 + stat_y2, "Djumps Left = " + string(max_djumps-djumps));
            draw_debug_text(view_x_stat + stat_x2, view_y5 + stat_y2, "Fastfall = " + string(fastfall_word));
        }
    }

    //stats 3 - mana stuff
    draw_debug_text(view_x_title + stat_x3, view_y0 + stat_y3, "BAR SPECIFIC:");
    draw_debug_text(view_x_stat + stat_x3, view_y1 + stat_y3, "Current MP = " + string(floor(mp_current)) + " / 100");
    draw_debug_text(view_x_stat + stat_x3, view_y2 + stat_y3, "Can Gain MP = " + string(mp_gain_word));
    draw_debug_text(view_x_stat + stat_x3, view_y3 + stat_y3, "MP Passive Gain = " + string(mp_fc_rate));
    draw_debug_text(view_x_stat + stat_x3, view_y4 + stat_y3, "MP Active Gain = " + string(mp_gain_hit));

    //stats 4 - rune specifics
    if (has_rune("O") || has_rune("L") || has_rune("O") && has_rune("L"))
    {
        draw_debug_text(view_x_title + stat_x4, view_y0 + stat_y4, "OVERDRIVE:");
        if (has_rune("L") && !has_rune("O")) draw_debug_text(view_x_stat + stat_x4, view_y1 + stat_y4, "Theïkós = " + string(theikos_word));
        else if (has_rune("O") && !has_rune("L"))
        {
            draw_debug_text(view_x_stat + stat_x4, view_y1 + stat_y4, "current ODP = " + string(floor(od_current)) + " / 100");
            draw_debug_text(view_x_stat + stat_x4, view_y2 + stat_y4, "Can Gain OD = " + string(od_gain_word));
        }
        else if (has_rune("L") && has_rune("O"))
        {
            draw_debug_text(view_x_stat + stat_x4, view_y1 + stat_y4, "current ODP = " + string(floor(od_current)) + " / 100");
            draw_debug_text(view_x_stat + stat_x4, view_y2 + stat_y4, "Can Gain OD = " + string(od_gain_word));
            draw_debug_text(view_x_stat + stat_x4, view_y3 + stat_y4, "Theïkós = " + string(theikos_word));
        }
    }

    if (mpGainable) mp_gain_word = "true";
    else mp_gain_word = "false";

    if (fast_falling) fastfall_word = "true";
    else fastfall_word = "false";

    if (theikos_active) theikos_word = "true";
    else theikos_word = "false";

    if (od_gainable) od_gain_word = "true";
    else od_gain_word = "false";
}

//draw_debug_text(x, y, "text = " + string(variable));

//draw_debug_text(x, y-128, "menu_open = " + string(menu_open));
//draw_debug_text(x, y-128+16, "menu_confirm = " + string(menu_confirm));
//draw_debug_text(x, y-128+32, "menu_close = " + string(menu_close));

//draw_debug_text(x, y, "burningfury_target = " + string(burningfury_target));

//if (burningfury_target != noone) draw_debug_text(x, y, string(burningfury_target.hsp) + "," + string(burningfury_target.vsp));

//draw_debug_text(x, y, "descent_timer = " + string(descent_timer));


//actuall variable checking stuff i did over time
{
    // this was used to test the natural mana gaining mechanic

    //draw_debug_text(x,y,"mana = " + string(mp_current) + "/" + string(mp_max));
    //draw_debug_text(x,y+16,"rate = " + string(mp_fc_num) + "/" + string(mp_fc_maxNum));


    // this was used to test the if statements on theikos bar's colors
    //draw_debug_text(x,y,"theikos_color_alpha = " + string(theikos_color_alpha) + "/"  + string(theikos_color_maxTime));
    //draw_debug_text(x,y+16,"theikos_color_increase = " + string(theikos_color_increase));


    // this was also used for theikos bar's pallete, to test the seprate RGB channels
    //draw_debug_text(x,y,"theikos_red = " + string(theikos_red));
    //draw_debug_text(x,y+16,"theikos_green = " + string(theikos_green));
    //draw_debug_text(x,y+32,"theikos_blue = " + string(theikos_blue));

    //if (theikos_red > 255) draw_debug_text(x,y+64,"red stop");
    //if (theikos_green > 255) draw_debug_text(x,y+16+64,"green stop");
    //if (theikos_blue > 255) draw_debug_text(x,y+32+64,"blue stop");

    //draw_debug_text(x,y,"theikos = " + string(theikos));

    //draw_debug_text(x,y,"text_time = " + string(text_time) + "/" + string(text_maxTime));

    //if (text_time == text_maxTime-1) draw_debug_text(x,y+16,"text_time is max");

    //if (theikos && free)
    //{
        //if (left_strong_pressed || right_strong_pressed) draw_debug_text(x,y,"F-strong in the air");
        //if (up_strong_pressed) draw_debug_text(x,y,"U-strong in the air");
        //if (down_strong_pressed)  draw_debug_text(x,y,"D-strong in the air");
    //}

    //if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR)     //the problem is probably on set_attack.gml, it doesn't actually consume mana
    //{
        //if ((window == 2 || window == 5) && window_timer == 0) draw_debug_text(x,y,"consuming mana now");
    //}

    //draw_debug_text(x,y,"my current state = " + get_state_name(state));
    //draw_debug_text(x,y+16,"HSPEED TYPE FTILT = " + string(get_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED_TYPE)));

    //draw_debug_text(x,y,"ustrong_loops_remaining = " + string(ustrong_loops_remaining));
    //draw_debug_text(x,y+16,"ustrong_countup = " + string(ustrong_countup));

    //draw_debug_text(x,y+32,"WINDOW_CANCEL_TYPE = " + string(get_window_value(AT_USPECIAL, 2, AG_WINDOW_CANCEL_TYPE)));

    //draw_debug_text(x,y+32,"photon_charge = " + string(photon_charge));
    //draw_debug_text(x,y+48,"photon_cycle = " + string(photon_cycle));
    //draw_debug_text(x,y+64,"power = " + string(blast_power));

    //draw_debug_text(x,y+48,"HSPEED = " + string(get_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED)));
    //draw_debug_text(x,y+64,"VSPEED = " + string(get_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED)));

    //draw_debug_text(x,y+48,"mpGainable = " + string(mpGainable));


    //draw_debug_text(x,y,"color_r = " + string(color_r));
    //draw_debug_text(x,y+16,"color_g = " + string(color_g));
    //draw_debug_text(x,y+32,"color_b = " + string(color_b));
    //draw_debug_text(x,y+48,"increase = " + string(increase));
    //draw_debug_text(x,y+64,"color_timer = " + string(color_timer));

    //draw_debug_text(x-80,y+70,"respawn_taunt_cd = " + string(respawn_taunt_cd));
    //draw_debug_text( x-50, y+10, "state: " + get_state_name( state ));

    //draw_debug_text(x,y,"sparks: " + string(sparks_applied));
    //draw_debug_text(x, y+16, "stunned: " + string(lightstun));

    //draw_debug_text(x,y,"lightstop_timer = " + string(lightstop_timer));

    //draw_debug_text(x,y,"mp_messageY = " + string(mp_messageY));
    //draw_debug_text(x,y+16,"mp_messageY_movement = " + string(mp_messageY_movement));
    //draw_debug_text(x,y+32,"allow_message_movement = " + string(allow_message_movement));

    //draw_debug_text(x,y,"window = " + string(window));
    //draw_debug_text(x,y+16,"window_timer = " + string(window_timer));
    //draw_debug_text(x,y+32,"accelblitz_count = " + string(accelblitz_count));


    //draw_debug_text(x,y,"spr_dir = " + string(spr_dir));
    //draw_debug_text(x,y+16,"hsp = " + string(hsp));

    //draw_debug_text(x,y+16,"miniMP_time = " + string(miniMP_time));

    //draw_debug_text(x,y+32,"image_index = " + string(image_index));

    //draw_debug_text(x,y+16,"did_i_turn = " + string(did_i_turn));
    //draw_debug_text(x,y+32,"turn_timer = " + string(turn_timer));

    //draw_debug_text(x,y,"godpower = " + string(godpower));
    //draw_debug_text(x,y+16,"god_time = " + string(god_time));

    //draw_debug_text(x,y-64,"menu_up = " + string(menu_up));

    //draw_debug_text(x,y-112-32,"skill_cursor_y = " + string(skill_cursor_y));
    //draw_debug_text(x,y-112-48,"skill_cursor_x = " + string(skill_cursor_x));

    //draw_debug_text(x,y,"mp_error_active = " + string(mp_error_active));
    //draw_debug_text(x,y+16,"mp_errorcool = " + string(mp_errorcool));

    //draw_debug_text(x,y,"reached_max_bursts = " + string(reached_max_bursts));
    //draw_debug_text(x,y+16,"burst_pos = " + string(burst_pos));

    //draw_debug_text(x+16, y-80, "selected_nspec = " + string(selected_nspec));
    //draw_debug_text(x+16, y-64, "selected_fspec = " + string(selected_fspec));
    //draw_debug_text(x+16, y-48, "selected_uspec = " + string(selected_uspec));
    //draw_debug_text(x+16, y-32, "selected_dspec = " + string(selected_dspec));

    //draw_debug_text(x,y,"holyburn_counter = " + string(holyburn_counter));

    //draw_debug_text(x,y,"attack = " + string(attack));

    //draw_debug_text(x,y,"guardaura_active = " + string(guardaura_active));
    //draw_debug_text(x,y+16,"guard_time = " + string(guard_time));

    //draw_debug_text(x,y+16,"guard aura CD = " + string(guard_cooldown) + "/" + string(guard_cool_reset));

    //draw_debug_text(x+32,y-64,"invincible = " + string(invincible));
    //draw_debug_text(x+32,y-48,"invince_time = " + string(invince_time));

    //draw_debug_text(x,y,"accelblitz_active = " + string(accelblitz_active));
    //draw_debug_text(x,y+16,"dash_speed = " + string(dash_speed));

    //draw_debug_text(x,y,"cool_start = " + string(cool_start));
    //draw_debug_text(x,y+16,"move_cooldown[AT_SKILL4] = " + string(move_cooldown[AT_SKILL4]));

    //draw_debug_text(x,y,"accelblitz_done_once = " + string(accelblitz_done_once));
    //draw_debug_text(x,y+16,"accelblitz_post_timer = " + string(accelblitz_post_timer));
    //draw_debug_text(x,y+32,"accelblitz_active = " + string(accelblitz_active));

    //draw_debug_text(x,y,"tp_dist = " + string(tp_dist));

    //draw_debug_text(x,y,"color_rate = " + string(color_rate));

    //draw_debug_text(x,y,"soft armor = " + string(soft_armor));
    //draw_debug_text(x,y+16,"super armor = " + string(super_armor));

    //draw_debug_text(x,y,"dodging = " + string(pHurtBox.dodging));     //this is the input i needed

    //draw_debug_text(x,y,"hsp = " + string(hsp));
    //draw_debug_text(x,y+16,"aura_speed = " + string(aura_speed));

    //draw_debug_text(x,y,"HG_HITBOX_COLOR = " + string(HG_HITBOX_COLOR));

    //draw_debug_text(x,y,"strong_charge = " + string(strong_charge));

    //draw_debug_text(x,y,"ustrong_loops_remaining = " + string(ustrong_loops_remaining));

    //draw_debug_text(x,y,"vspeed = " + string(fire_proj_vspeed));
    //draw_debug_text(x,y+16,"anim speed = " + string(fire_proj_vspeed/100 + 0.2));

    //draw_debug_text(x,y,"dstrong2_active = " + string(dstrong2_active));
    //draw_debug_text(x,y+16,"dstrong2_active_count = " + string(dstrong2_active_count));

    //draw_debug_text(x,y,"sprite_hit_part = " + string(sprite_hit_part));

    //draw_debug_text(x+16,y-64,"state = " + string(get_state_name(state)));
    //draw_debug_text(x+16,y-48,"gametime = " + string(get_gameplay_time()));
    //draw_debug_text(x+16,y-32,"rec_time = " + string(recorded_time));

    //draw_debug_text(x+32,y-64,"nspec = " + string(selected_nspec));
    //draw_debug_text(x+32,y-48,"fspec = " + string(selected_fspec));
    //draw_debug_text(x+32,y-32,"uspec = " + string(selected_uspec));
    //draw_debug_text(x+32,y-16,"dspec = " + string(selected_dspec));

    //draw_debug_text(x,y-64,"attack_invince = " + string(attack_invince));

    //draw_debug_text(x,y,"powersmash_afterburn = " + string(powersmash_afterburn));
    //draw_debug_text(x,y+16,"powersmash_aftertime = " + string(powersmash_aftertime));
    //draw_debug_text(x,y+32,"xpos = " + string(powersmash_posx));
    //draw_debug_text(x,y+48,"ypos = " + string(powersmash_posy));

    //if (has_rune("A")) draw_debug_text(x,y,"rune A is active");

    //draw_debug_text(x,y,"djump_speed = " + string(djump_speed));

    //draw_debug_text(x,y,"voice_chance = " + string(random_play_voice));

    //draw_debug_text(x,y,"ustrong2_cast = " + string(ustrong2_cast));
    //draw_debug_text(x,y+16,"prat_land_time = " + string(prat_land_time));
    //draw_debug_text(x,y+32,"state = " + get_state_name(state));

    //draw_debug_text(x,y,"HG_EXTRA_HITPAUSE = " + string(hookshot_chargetime*2+20));
    //draw_debug_text(x,y+16,"hsp = " + string(hookshot_chargetime/2*spr_dir+9*spr_dir));
    //draw_debug_text(x,y+32,"vsp = " + string(hookshot_chargetime/5+2.5));

    //draw_debug_text(x,y,"hookshot_speedboost = " + string(hookshot_speedboost));
    //draw_debug_text(x,y+16,"free = " + string(free));
    //draw_debug_text(x,y+32,"state = " + get_state_name(state));

    //draw_debug_text(x,y,"spr_dir = " + string(spr_dir));

    //draw_debug_text(x,y,"hookshot_retract = " + string(hookshot_retract));
    //draw_debug_text(x,y+16,"hookshot_retract_timer = " + string(hookshot_retract_timer));

    //draw_debug_text(x,y,"state_timer = " + string(state_timer));

    //draw_debug_text(x,y,"HG_BASE_HITPAUSE = " + string(get_hitbox_value(AT_SKILL9, 2, HG_BASE_HITPAUSE)));
    //draw_debug_text(x,y+16,"HG_HITPAUSE_SCALING = " + string(get_hitbox_value(AT_SKILL9, 2, HG_HITPAUSE_SCALING)));

    //draw_debug_text(x,y,"leap = " + string(leap));
    //draw_debug_text(x,y+16,"leap_timer = " + string(leap_timer));
    //draw_debug_text(x,y+32,"start_leap_timer = " + string(start_leap_timer));

    //draw_debug_text(x,y+16,"hookshot_skip = " + string(hookshot_skip));

    //draw_debug_text(x,y-48,"intro_alpha = " + string(intro_alpha));
    //draw_debug_text(x,y-64,"intro_timer = " + string(intro_timer));

    //draw_debug_text(x,y,"image_index = " + string(image_index));
    //draw_debug_text(x,y+16,"window = " + string(window));

    //draw_debug_text(x,y,"runeH_angle = " + string(runeH_angle));
    //draw_debug_text(x,y+16,"runeH_pullx = " + string(runeH_pullx));
    //draw_debug_text(x,y+32,"runeH_pully = " + string(runeH_pully));
    //draw_debug_text(x,y+48,"runeH_target = " + string(runeH_target));

    //draw_debug_text(x,y,"spr_dir = " + string(spr_dir));
    //draw_debug_text(x,y+16,"runeA_dash_dir = " + string(runeA_dash_dir));

    //draw_debug_text(x, y, "od_fallthrough_y / y = " + string(od_fallthrough_y) + " / " + string(y));
    //draw_debug_text(x, y+16, "fall_through = " + string(fall_through));

    //draw_debug_text(x, y, "reached_max_bursts = " + string(reached_max_bursts));
}