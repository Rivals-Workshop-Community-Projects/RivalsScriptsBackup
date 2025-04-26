//update
#macro PS_GLIDE         50 // glide state

#region USEFUL CUSTOM VARIABLES

//attack/dodge check
is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
is_dodging = (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_AIR_DODGE);
hbox_view = get_match_setting(SET_HITBOX_VIS);
game_time = get_gameplay_time();
exist_time ++;

strong_pressed = (up_strong_pressed || left_strong_pressed || right_strong_pressed || down_strong_pressed)

if (is_attacking)
{
    //set window_end and last_window all the time
    window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
    window_last = get_attack_value(attack, AG_NUM_WINDOWS);
    window_cancel_time = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);
}
else
{
    //variable resets when bar isn't attacking
    if (window_loops != 0) window_loops = 0;
    if (bar_grabbed_id != noone) bar_grabbed_id = noone;

    sound_stop(sfx_charge);

    if (state == PS_PRATFALL && !was_parried) can_fast_fall = true;

    if (od_cast > 0 && attack == AT_OVERDRIVE && theikos_type == 0) od_fx_col_change = false;
}

//play intro
if (game_time == 4 && !bibical && attack != AT_INTRO)
{
    set_attack(has_theikos ? AT_THEIKOS : AT_INTRO);
}

//unique hit fx
with (pHitBox) if (orig_player == other.player) if (hit_effect == other.fx_hit_small || hit_effect == other.fx_hit_medium || hit_effect == other.fx_hit_big) fx_particles = 6;
with (hit_fx_obj)
{
    if ("spawned_effects" not in self && player == other.player) //there HAS to be a better way to do this
    {
        if (hit_fx == other.fx_hit_small) with (other)
        {
            var fg_fx = spawn_hit_fx(other.x, other.y, fx_hit_small_fg);
            fg_fx.depth = depth + 1;
            fg_fx.draw_angle = random_func(0, 30, true)*12;
            fg_fx.uses_shader = false;

            var bg_fx = spawn_hit_fx(other.x, other.y, fx_hit_small_bg);
            bg_fx.depth = depth + 3;
            if ("manual_angle_control" not in other || !other.manual_angle_control) bg_fx.draw_angle = other.kb_dir * spr_dir;
            else bg_fx.draw_angle = other.draw_angle;
            bg_fx.uses_shader = false;

            other.spawned_effects = true;
        }
        if (hit_fx == other.fx_hit_medium) with (other)
        {
            var fg_fx = spawn_hit_fx(other.x, other.y, fx_hit_medium_fg);
            fg_fx.depth = depth + 1;
            fg_fx.draw_angle = random_func(0, 30, true)*12;
            fg_fx.uses_shader = false;

            var bg_fx = spawn_hit_fx(other.x, other.y, fx_hit_medium_bg);
            bg_fx.depth = depth + 3;
            if ("manual_angle_control" not in other || !other.manual_angle_control) bg_fx.draw_angle = other.kb_dir * spr_dir;
            else bg_fx.draw_angle = other.draw_angle;
            bg_fx.uses_shader = false;

            other.spawned_effects = true;
        }
        if (hit_fx == other.fx_hit_big) with (other)
        {
            var fg_fx = spawn_hit_fx(other.x, other.y, fx_hit_big_fg);
            fg_fx.depth = depth + 1;
            fg_fx.draw_angle = random_func(0, 30, true)*12;
            fg_fx.uses_shader = false;

            var bg_fx = spawn_hit_fx(other.x, other.y, fx_hit_big_bg);
            bg_fx.depth = depth + 3;
            if ("manual_angle_control" not in other || !other.manual_angle_control) bg_fx.draw_angle = other.kb_dir * spr_dir;
            else bg_fx.draw_angle = other.draw_angle;
            bg_fx.uses_shader = false;

            other.spawned_effects = true;
        }

        if (hit_fx == other.fx_dstrong_quake)
        {
            spawn_crack();
            with (other)
            {
                if ("dont_spawn_shockwave" not in other || !other.dont_spawn_shockwave)
                {
                    var fx = spawn_hit_fx(other.x, other.y, fx_dstrong_shockwave);
                    fx.depth = depth - 2;
                }
                var fx = spawn_hit_fx(other.x, other.y, fx_dstrong_rockblast);
                fx.depth = depth - 3;
            }

            spawned_effects = true;
        }
    }
}
if (array_length(fx_cracks) > 0) for (var i = 0; i < array_length(fx_cracks); i++)
{
    var cur_part = fx_cracks[i];
    cur_part.timer ++;
    if (cur_part.timer >= cur_part.max_time)
    {
        var temp_array = fx_cracks;
        fx_cracks = [];
        for (var j = 0; j < array_length(temp_array); j ++) if (j != i) array_push(fx_cracks, temp_array[j]);
    }
}

//this custom setup will let me control any hitbox i want
if (instance_exists(bar_hitbox))
{
    //hitbox particle setup because fuck you
    bar_hitbox.fx_particles = get_hitbox_value(pHitBox.attack, pHitBox.hbox_num, HG_HIT_PARTICLE_NUM);
}
#endregion

#region BAR MECHANICS

// RESET VARIABLES ON THE GROUND
if (!free)
{
    //exit glide
    if (state == PS_GLIDE) set_state(PS_LAND);

    if (accel_act_time >= accel_act_time_set) accel_act_time = 0;
    else if (accel_act_time > 0 && state != PS_PRATLAND && !has_hit)
    {
        state = PS_PRATLAND;
        accel_act_time = 0;
    }
}
if (free)
{
    if (glide_stamina <= 0) can_glide = false; //if stamina reaches 0 stop gliding
    if (can_glide) //check if bar can glide
    {
        if (state_cat == SC_AIR_NEUTRAL && state != PS_GLIDE && vsp > 1 && jump_down) set_state(PS_GLIDE);
    }

    switch (state)
    {
        // RESET VARIABLES ON WALLJUMP
        case PS_WALL_JUMP:
            if (state_timer == 1)
            {
                //this used to also be restored on wall tech but... come on
                glide_stamina += glide_stamina_restore; //+50
                if (glide_stamina >= glide_stamina_max) glide_stamina = glide_stamina_max; //limit stamina to max
                if (!can_glide) can_glide = true; //rstores gliding
            }
        
            leap_used = false;
            blast_used = false;
            power_uses = 0;
            accel_used = false;
            apply_motion_trail = false;
            chasm_uses = 0;
            break;
            
        // GLIDE MECHANIC
        case PS_GLIDE: // this is a macro, see top of file
            //technical stuff
            vsp = glide_vsp;
            if (fast_falling) vsp = glide_fastfall_vsp;
        
            glide_stamina --;
            if (glide_stamina <= 0) set_state(PS_IDLE_AIR); //if stamina reaches 0 stop gliding
            if (abs(hsp) >= air_max_speed) spr_dir = sign(hsp); //turn bar around if he goes fast enough
        
            //anim stuff
            sprite_index = sprite_get("glide");
            image_index += glide_anim_speed;
            
            //show glide ui
            glide_ui = draw_indicator;
        
            //exit glide
            if (!jump_down) set_state(PS_IDLE_AIR);
            
            break;
        
        // DOUBLE JUMP MECHANICS
        case PS_DOUBLE_JUMP:
            if (state_timer == 1 && theikos_type == 0) //reduce height on each double jump bar does
            {
                //djump_speed = (has_rune("B")) ? djump_speed / 1.22 : djump_speed / 1.56;
                vsp = lerp(-2, -djump_speed, clamp(glide_stamina/glide_stamina_max, 0, 1));
            }
        
            //midair turning
            var turn_timeframe = 5; //decides how much time bar has to turn around
            if (state_timer == 0) djump_turn = false;
            if (state_timer <= turn_timeframe && !djump_turn)
            {
                if (right_down && -spr_dir)
                {
                    spr_dir = 1;
                    djump_turn = true;
                }
                else if (left_down && spr_dir)
                {
                    spr_dir = -1;
                    djump_turn = true;
                }
            }
            break;
    }

    if (djumps > 0 && djumps < max_djumps) glide_stamina -= has_rune("B") ? glide_stamina_max/5 : glide_stamina_max/3;
    djumps = max_djumps * (glide_stamina <= 0);
}

if (is_attacking && attack == AT_DSTRONG && window == 3 && window_timer == 0 && instance_exists(bar_hitbox)) bar_hitbox.length = 0;

//GLIDE UI
if (glide_stamina < glide_stamina_max && state != PS_PRATFALL && prev_state != PS_PRATFALL && theikos_type == 0) glide_ui = draw_indicator; //show glide UI
else glide_ui = false;

//MP MECHANIC
//thanks delta parallax
if (mp_cur < 100 && mp_gainable) mp_cur = mp_cur + (mp_gain_rate/60); //clamp(mp_cur + (mp_gain_rate/60), 0, mp_max);
else if (mp_cur >= mp_max) mp_cur = mp_max;
else if (mp_cur <= 0) mp_cur = 0;

//mana gain conditions
if (burnbuff_active || lightbuff_active || mp_cur >= mp_max) mp_gainable = false;
else mp_gainable = true;

//mana overcharge anim
if (mp_cur > 100) mp_color_ex = (game_time % 20 >= 15) ? c_white : $FFFF00;

//mana notice
if (notice_time > -1)
{
    if (notice_time == notice_time_max)
    {
        sound_play(asset_get("mfx_tut_fail"), 0, 0);
        msg = spawn_hit_fx(x-notice[notice_type][0], y-notice[notice_type][1]-char_height+64, notice[notice_type][2]);
        msg.spr_dir = 1;
        msg.depth = -10;
    }
    
    if (instance_exists(msg)) {
        msg.y = msg.y-notice_time/(notice_time_max/2);
    }
    notice_time --;
}

//mana mini gauge appear logic
if (mp_mini_timer > 0) mp_mini_timer --;

//HOLY BURNING MECHANIC
if (holyburn_active)
{
    with (all) if ("holyburning" in self)
    {
        if ("outline_check" not in self && "outline_color" in self) outline_check = outline_color;
        
        if (holyburning && holyburner_id == other)
        {
            if ("fury_power_smash_ticks" not in self) fury_power_smash_ticks = false;
            if ("holyburn_tick" not in self) holyburn_tick = 30;

            if (!hitpause || hitpause && lightstun_type == 2) //only damage if the player isn't in hitpause
            {
                fury_power_smash_ticks = false;
                for (var i = 0; i < instance_number(obj_article1); i++)
                {
                    var obj = instance_find(obj_article1, i);
                    if ("is_bar_artcmaster" in obj && obj.state == "power_crater" && obj.player_id == other)
                    {
                        with (obj) if (place_meeting(x, y, other) && had_burnbuff) other.fury_power_smash_ticks = true;
                        break;
                    }
                }
                holyburn_tick = fury_power_smash_ticks ? other.power_fury_burn_tick : other.holyburn_tick_norm;

                holyburn_timer --;
                if (holyburn_timer % holyburn_tick == 0) //DoT
                {
                    if (object_index == oPlayer) take_damage(player, holyburner_id.player, 1);
                    else if ("enemy_stage_article" in self) hp --;
                }
                if (holyburn_timer <= 0 && lightstun_type != 2) holyburning = false;

                //extra mp gain from mechanics
                if (holyburn_timer % floor(holyburn_tick/2) == 0) with (other) if (mp_cur < mp_max && has_rune("J")) mp_cur += 1;
            }

            with (holyburner_id) if (game_time % 2 == 0) //graphic stuff
            {
                var random_x = (random_func(28, 9, true)-4)*8;
                var random_y = random_func(25, 9, true)*(other.char_height/8);

                //if possible, change to the generate_particles() function
                var fx_fire = spawn_hit_fx(other.x+random_x, other.y-random_y-8, fx_burn);
                fx_fire.spr_dir = other.spr_dir;

                if ("outline_color" in self) other.outline_color = [line_color[0], line_color[1], line_color[2]];
            }
        }
        else if ("url" in self && url != other.url && !holyburning && !burned && "outline_color" in self)
        {
            outline_color = outline_check;
            init_shader();
        }

        if (object_index == oPlayer) if (state == PS_DEAD || state == PS_RESPAWN) //set player to stop burning if they are dead
        {
            holyburning = false;
            holyburn_timer = 0;
        }
    }
}
if (!burned && !activate_outline && !holyburning) outline_color = no_effect_line_color;

//LIGHT STUNNING MECHANIC
if (lightstun_active)
{
    with (all) if ("lightstun_type" in self) 
    {
        if (lightstun_type > 0 && lightstunner_id == other)
        {
            if (lightstun_timer > -1) lightstun_timer --;
            if (lightstun_timer <= -1 || state == PS_DEAD || state == PS_RESPAWN)
            {
                lightstun_type = 0;
                lightstun_timer = -1;
            }

            switch (lightstun_type)
            {
                case 1: //pre-timer

                    //vfx
                    if (lightstun_timer % 3 == 0) with (other) //sparkles effect
                    {
                        var fx_sparkles = spawn_hit_fx(other.x, other.y-other.char_height/2, fx_part_light);
                        fx_sparkles.hsp = (random_func(751, 5, true)-2)*2;
                        fx_sparkles.vsp = (random_func(752, 5, true)-2)*2;
                    }
                    if (lightstun_timer % 60 == 0) //indicator
                    {
                        sound_play(asset_get("sfx_frog_fspecial_cancel"));
                        with (other) spawn_hit_fx(other.x, other.y-24, fx_lightblow[0]);
                    }


                    //spawn the funny freeze hitbox
                    if (lightstun_timer == 0) with (other)
                    {
                        var lightstunner = create_hitbox(48, 1, other.x, other.y-char_height/2);
                        lightstunner.fx_particles = 1;
                    }
                    break;
                case 2: //frozen
                    hitpause = true;
                    hitstop = 2;
                    if (object_index == oPlayer) set_state(PS_HITSTUN);
                    else if ("enemy_stage_article" in self)
                    {
                        state = 6;
                        state_timer = 0;
                        window = 0;
                        window_timer = 0;
                        if (has_hit_player) has_hit_player = false;
                        if ("loops_done" in self) loops_done = 0;
                        if ("grab_id" in self)
                        {
                            grab_id = noone;
                            grab_time = 0;
                        }
                    }
                    break;
            }

            //extra mp gain from mechanics
            if (lightstun_type > 0 && lightstun_timer % 15 == 0) with (other) if (mp_cur < mp_max && has_rune("J")) mp_cur += 1;

            with (other) if (lightstun_last_attack > 0)
            {
                lightstun_last_attack_timer --;
                if (lightstun_last_attack_timer <= 0) lightstun_last_attack = 0;
            }
        }
        else if (lightstun_type == 0)
        {
            lightstunner_id = noone;
            lightstun_timer = 0;
        }
    }
}

//OUTLINE COLORING
//should only be active if any mechanic that uses an outline should use it
if (activate_outline)
{
    if (outline_time_up) outline_time ++;
    else outline_time --;

    if (outline_time >= 30 || outline_time <= 0) outline_time_up = !outline_time_up;

    for (var o = 0; o <= 2; ++o) lerp_array[o] = floor(merge_color(no_effect_line_color[o], line_color[o], outline_time/30));
    outline_color = [lerp_array[0], lerp_array[1], lerp_array[2]];
    init_shader();
}
else
{
    outline_time = 0;
    outline_time_up = true;
}
//all mechanics that activate the outline go here
activate_outline = burnbuff_active;
if (prev_activated_outline != activate_outline)
{
    if (!activate_outline)
    {
        outline_color = no_effect_line_color;
        init_shader();
    }
    prev_activated_outline = activate_outline;
}
#endregion

#region SKILLS

//skill select
skill_script_type = 1;
user_event(2);

//general
//grab stuff
if (bar_grabbed_id != noone || rune_H_drag_id != noone)
{
    bar_grab_time ++;
    with (bar_grabbed_id || rune_H_drag_id)
    {   
        if (object_index == oPlayer)
        {
            if (state != PS_DEAD && state != PS_RESPAWN && state != PS_HITSTUN) state = PS_HITSTUN;
            else if (state == PS_DEAD || state == PS_RESPAWN)
            {
                other.bar_grabbed_id = noone;
                other.rune_H_drag_id = noone;
            }
        }
        else if ("enemy_stage_article" in self)
        {
            if (state != 6 && state != 9) state = 6;
            else if (state == 9)
            {
                other.bar_grabbed_id = noone;
                other.rune_H_drag_id = noone;
            }
        }
        free = true;
        hurt_img = 1;
    }
}
else bar_grab_time = 0;

//allows bar to act out of certain skills
if (skill_cancel_timer <= 0) start_skill_cancel = false;
else if (start_skill_cancel && !hitpause) skill_cancel_timer --;

if (cancel_polaris)
{
    sound_play(asset_get("sfx_abyss_despawn"));
    for (var j = 0; j < polaris_shots_left; j++)
    {
        spawn_hit_fx(polaris_shot_ids[j].x, polaris_shot_ids[j].y, fx_skill7_afterimage);
        polaris_shot_ids[j].length = 0;
    }
    lightbuff_active = false;
    cancel_polaris = false;
}

//skill/strongs cost (special cooldowns are done inside the skills themselves) + skill logic
if (!menu_active)
{
    move_cooldown[AT_USTRONG] = 1 + ceil(mp_cost_strongs - mp_cur);
    move_cooldown[AT_DSTRONG] = 1 + ceil(mp_cost_strongs - mp_cur);

    //flashbang inactive check
    //this is done in this "dumb" way cuz if i put it in a loop the game gets confused
    if (has_flashbang && cur_skills[0] != 4 && cur_skills[1] != 4 && cur_skills[2] != 4 && cur_skills[3] != 4) has_flashbang = false;

    //skill specific logic
    for (var i = 0; i < 4; i++)
    {
        var check_skill = skill[cur_skills[i]];

        //mp limiters
        move_cooldown[check_skill.skill_attack] = 1 + ceil(check_skill.mp_use_cost - mp_cur);
        if (check_skill.skill_attack_air != -1) move_cooldown[check_skill.skill_attack_air] = 1 + ceil(check_skill.mp_use_cost - mp_cur);
        //air ver check

        switch (check_skill.skill_id)
        {
            case 0: //light dagger
                if (prepare_dagger_cd)
                {
                    dagger_spam_cd = dagger_spam_cd_set;
                    prepare_dagger_cd = false;
                }

                //updates the skill input
                switch (i)
                {
                    case 0: dagger_input_dir = joy_pad_idle break;
                    case 1: dagger_input_dir = left_down || right_down break;
                    case 2: dagger_input_dir = up_down; break;
                    case 3: dagger_input_dir = down_down; break;
                }
                
                if (dagger_spam_cd > 0) dagger_spam_cd --;
                move_cooldown[check_skill.skill_attack] = dagger_spam_cd;
                break;
            case 4: //flashbang
                if (!has_flashbang) has_flashbang = true;
                switch (i)
                {
                    case 0: flashbang_input_dir = joy_pad_idle break;
                    case 1: flashbang_input_dir = left_down || right_down break;
                    case 2: flashbang_input_dir = up_down; break;
                    case 3: flashbang_input_dir = down_down; break;
                }
                break;
            case 8: //ember fist
                if (fury_ember_timer > 0) fury_ember_timer --;

                if (fury_ember_timer != 0)
                {
                    if (fury_ember_timer % fury_ember_hit_gaps == 0) //hitbox spawn
                    {
                        if (fury_ember_timer == fury_ember_hit_gaps) set_hitbox_value(check_skill.skill_attack, 4, HG_NO_POLARIS, false);
                        bar_hitbox = create_hitbox(check_skill.skill_attack, 4, fury_ember_x, fury_ember_y);
                        bar_hitbox.fx_particles = get_hitbox_value(check_skill.skill_attack, 4, HG_HIT_PARTICLE_NUM);
                    }
                    if (fury_ember_timer % 4 == 0) //effect work
                    {
                        var random_x = (random_func(765, 5, true)-2)*8;
                        var random_y = (random_func(245, 5, true)-2)*8;
                        var fury_ember = spawn_hit_fx(fury_ember_x + random_x, fury_ember_y + random_y, fx_fireblow[0]);
                        fury_ember.depth = depth-1;
                    }
                }
                break;
            /////////////////////////////////////////////////////////////////
            case 1: //burning fury
                //check if burning fury is active and change the mana costs accordingly
                if (burnbuff_active) check_skill.mp_use_cost = check_skill.mp_cost2;
                else check_skill.mp_use_cost = fury_norm_cost;

                //makes sure the activation/deactivation doesn't run every frame cuz it's a lot of code
                if (burnbuff_active != burnbuff_was_active)
                {
                    burnbuff_apply();
                    burnbuff_was_active = burnbuff_active;
                }

                if (burnbuff_active)
                {
                    if (!infinite_mp_mode) mp_cur -= mp_burn_rate/60;
                    if (mp_cur <= 0) burnbuff_active = false;

                    //visual stuff
                    if (game_time % 5 == 0) generate_particles(fx_part_fire, x, y-48, 0, depth-1, 11, 11, 0, -1);
                    
                    if (is_attacking) //burning fury usage indicator
                    {
                        if (get_window_value(attack, window, AG_WINDOW_HAS_SFX) && window_timer == get_window_value(attack, window, AG_WINDOW_SFX_FRAME))
                        {
                            switch (attack)
                            {
                                case AT_JAB: case AT_FSTRONG: case AT_UTILT:
                                    if (attack == AT_JAB && window != 4 || attack == AT_UTILT && window != 2 || attack == AT_FSTRONG && window != 3) break;
                                case AT_FAIR: case AT_DAIR: case AT_FSTRONG_2:
                                    sound_play(asset_get("sfx_burnapplied"), false, 0, 0.6, 1.2);
                                    fury_indc_time = skill_indc_time_set;
                                    break;
                            }
                        }
                        if (window == 1 && window_timer == 0)
                        {
                            switch (attack)
                            {
                                case AT_NTHROW: case AT_EXTRA_4: case AT_EXTRA_2: //light based skills
                                case AT_UTHROW: case AT_FSPECIAL_2: case AT_DSPECIAL_2: case AT_EXTRA_3: case AT_EXTRA_1: //fire based skills
                                    sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"), false, 0, 0.8, 0.8);
                                case AT_USTRONG: case AT_DSTRONG: case AT_FSTRONG_2:  case AT_DSTRONG_2:
                                    fury_indc_time = skill_indc_time_set;
                                    break;
                            }
                        }
                    }
                }
                break;
            case 5: //power smash
                //disable the burning fury buff
                if (prev_state == PS_ATTACK_AIR && state != PS_ATTACK_AIR && attack == check_skill.skill_attack && burnbuff_active) burnbuff_active = false;
                break;
            case 9: //light hookshot
                if (hook_charge < hook_charge_max && hook_full_charge) hook_full_charge = false;
                else if (hook_charge >= hook_charge_max && !hook_full_charge) hook_full_charge = true;

                if (hook_full_charge) if (game_time % 15 == 0) white_flash_timer = 5;

                if (hook_grab > 0)
                {
                    vsp = -6.5;
                    var tot_h = abs(vsp)/grav * 2 / (air_friction * 14);
                    if (hook_dist / tot_h < 12) tot_h = abs(5)/grav * 2 / (air_friction * 14);

                    hsp = clamp(hook_dist / tot_h, 6, 18) * spr_dir;
                    
                    hook_grab = 0;
                }
                break;
            /////////////////////////////////////////////////////////////////
            case 2: //force leap
                if (leap_used) move_cooldown[check_skill.skill_attack] = 1 + leap_used;
                break;
            case 6: //accel blitz
                if (accel_used) move_cooldown[check_skill.skill_attack] = 1 + accel_used;

                if (is_attacking && attack == check_skill.skill_attack) mask_index = window == 3 ? asset_get("empty_sprite") : asset_get("ex_guy_collision_mask");

                //flash vulnerability
                if (state_cat == SC_HITSTUN)
                {
                    if (accel_vulnerable)
                    {
                        accel_vulnerable = false;
                        accel_flashed_time = 0;
                    }
                    if (accel_flashed_time > 0) accel_flashed_time --;
                }

                if (state == PS_PRATFALL || state == PS_PRATLAND || state_cat == SC_HITSTUN
                    || !free && alt_cur != 26 && (!is_attacking || is_attacking && attack != check_skill.skill_attack))
                {
                    apply_motion_trail = false;
                }
                
                //gives bar time to act out of the attack, only if he isn't on the theikos state
                if (accel_act_time > 0)
                {
                    if (attack == check_skill.skill_attack) has_hit = false;
                    accel_act_time --;
                    //add motion blur and flash effect stuff here
                    if (accel_act_time % 3 == 0) accel_action_color = !accel_action_color;
                }
                else
                {
                    if (accel_used && !has_hit && free && !hurtboxID.dodging && state != PS_PRATFALL && !is_attacking && state_cat != SC_HITSTUN) set_state(PS_PRATFALL);
                }
                break;
            case 10: //searing descent
                //disable the burning fury buff
                if (prev_state == PS_ATTACK_AIR && state != PS_ATTACK_AIR && attack == check_skill.skill_attack && burnbuff_active) burnbuff_active = false;
                break;
            /////////////////////////////////////////////////////////////////
            case 3: //photon blast
                //cooldown
                if (blast_used) move_cooldown[check_skill.skill_attack] = 1 + blast_used;
                break;
            case 7: //polaris
                if (lightbuff_active) check_skill.mp_use_cost = check_skill.mp_cost2;
                else check_skill.mp_use_cost = polaris_norm_cost;

                if (polaris_double_strike_time > 0)
                {
                    polaris_double_strike_time --;
                    if (polaris_double_strike_time == 0 && polaris_shot_ids[polaris_shots_left-1] != noone)
                    {
                        var proj = polaris_shot_ids[polaris_shots_left-1];
                        proj.shoot_projectile = true;
                        proj.hitbox_timer = 0;
                        proj = noone;
                        polaris_shots_left --;
                    }
                }

                if (polaris_cd > 0)
                {
                    polaris_cd--;
                    move_cooldown[check_skill.skill_attack] = polaris_cd + 1;
                }

                if (lightbuff_active)
                {
                    //mp burning
                    if (!infinite_mp_mode) mp_cur -= mp_burn_rate/60;
                    if (mp_cur <= 0) cancel_polaris = true;

                    //internal cooldown stuff
                    if (polaris_shot) polaris_shot = false;

                    //updates the skill input lol
                    switch (i)
                    {
                        case 0: polaris_input_dir = joy_pad_idle break;
                        case 1: polaris_input_dir = left_down || right_down break;
                        case 2: polaris_input_dir = up_down; break;
                        case 3: polaris_input_dir = down_down; break;
                    }

                    //bar can cancel into this at any point
                    if (polaris_input_dir && special_pressed && state_cat != SC_HITSTUN && attack != check_skill.skill_attack && hitpause || polaris_shots_left <= 0)
                    {
                        if (polaris_shots_left > 0)
                        {
                            hitstop = 0;
                            destroy_hitboxes();
                            attack_end(attack);
                            if (has_hit) hit_player_obj.hitstop += 10;
                            set_attack(check_skill.skill_attack);
                            hurtboxID.sprite_index = get_attack_value(check_skill.skill_attack, free ? AG_HURTBOX_AIR_SPRITE : AG_HURTBOX_SPRITE)
                            window = 5;
                            window_timer = 0;
                        }
                        else
                        {
                            spawn_hit_fx(x, y-32, fx_lightblow[1]);
                            cancel_polaris = true;
                        }
                    }

                    //projectiles following bar around
                    for (var j = 0; j < polaris_shots_left; j++) if ("shoot_projectile" in polaris_shot_ids[j] && !polaris_shot_ids[j].shoot_projectile)
                    {
                        var anim_time = 20;

                        var angle = (polaris_shot_ids[j].hitbox_timer < anim_time) ?
                            ease_cubeOut(
                                (j-4) * 90 - 90,
                                (j+1) * 20 - 10,
                                polaris_shot_ids[j].hitbox_timer,
                                anim_time
                            ) : (j+1) * 20 - 10;
                        var turn_anim_dist = ease_cubeInOut(80, -80, polaris_shot_ids[j].play_turn_anim, 10);
                        var dist = (polaris_shot_ids[j].hitbox_timer < anim_time) ?
                            ease_cubeOut(
                                0,
                                turn_anim_dist,
                                polaris_shot_ids[j].hitbox_timer,
                                anim_time
                            ) : turn_anim_dist;
                        var x_pos = (polaris_shot_ids[j].hitbox_timer < anim_time) ?
                            ease_cubeOut(
                                32,
                                0,
                                polaris_shot_ids[j].hitbox_timer,
                                anim_time
                            ) : 0;

                        //position setup
                        polaris_shot_ids[j].x = floor(
                            prev_bar_pos[0] + lengthdir_x(dist, angle) + x_pos * spr_dir
                        );
                        polaris_shot_ids[j].y = floor(
                            prev_bar_pos[1] + lengthdir_y(
                                polaris_shot_ids[j].hitbox_timer < 20 ?
                                    abs(dist)/ease_cubeInOut(2, 1, polaris_shot_ids[j].hitbox_timer, anim_time) : 80,
                                    angle
                                ) - char_height/1.75
                        );
                        polaris_shot_ids[j].turn_dir = spr_dir;
                        polaris_shot_ids[j].img_spd = abs(j+1 + polaris_shots_max - polaris_shots_left) * 0.04 + 0.2;

                        //turning animation
                        if (polaris_shot_ids[j].turn_dir == 1 && polaris_shot_ids[j].play_turn_anim < 10 || 
                            polaris_shot_ids[j].turn_dir == -1 && polaris_shot_ids[j].play_turn_anim > 0)
                        {
                            if (polaris_shot_ids[j].play_turn_anim < 10 && polaris_shot_ids[j].turn_dir == 1) polaris_shot_ids[j].play_turn_anim ++;
                            if (polaris_shot_ids[j].play_turn_anim > 0 && polaris_shot_ids[j].turn_dir == -1) polaris_shot_ids[j].play_turn_anim --;
                        }
                    }
                    prev_bar_pos[0] = x;
                    prev_bar_pos[1] = y;

                    //visual stuff
                    if (lightbuff_increase) lightbuff_alpha += lightbuff_rate;
                    else lightbuff_alpha -= lightbuff_rate;
                    if (lightbuff_alpha >= 0.8 || lightbuff_alpha <= 0) lightbuff_increase = !lightbuff_increase;

                    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && window == 1 && window_timer == 0 && state_timer < 5)
                    {
                        switch (attack)
                        {
                            case AT_FSTRONG: case AT_FSTRONG_2:
                                if (!rune_C_active) break;
                            case AT_USTRONG: case AT_NTHROW: case AT_EXTRA_4: case AT_EXTRA_2: //skills that can be affected by burning fury
                                if (burnbuff_active) break;
                            case AT_DTHROW: case AT_NSPECIAL_2: case AT_EXTRA_2:
                                sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"), false, 0, 0.8, 1.1);
                             case AT_DSTRONG: case AT_USTRONG_2:
                                polaris_indc_time = skill_indc_time_set;
                                break;
                        }
                    }
                }
                break;
            case 11: //chasm burster
                set_window_value(check_skill.skill_attack, 1, AG_WINDOW_HAS_SFX, free ? 1 : 0);
                set_window_value(check_skill.skill_attack, 2, AG_WINDOW_HAS_SFX, free ? 0 : 1);

                if (chasm_burst_timer > 0) chasm_burst_timer --;

                if (chasm_burst_timer != 0)
                {
                    //hitbox spawn
                    if (chasm_burst_timer % chasm_spawn_rate == 0)
                    {
                        bar_hitbox = create_hitbox(
                            check_skill.skill_attack,
                            2 + burnbuff_active*2,
                            chasm_x[chasm_count],
                            chasm_y + get_hitbox_value(check_skill.skill_attack, 2 + burnbuff_active*2, HG_HITBOX_Y)
                        );
                        bar_hitbox.fx_particles = get_hitbox_value(check_skill.skill_attack, 2 + burnbuff_active*2, HG_HIT_PARTICLE_NUM);
                        bar_hitbox.spr_dir = chasm_dir;

                        var fx = spawn_hit_fx(chasm_x[chasm_count], chasm_y, fx_skill11_burst);
                        fx.spr_dir = chasm_dir;

                        sound_play(asset_get("sfx_burnapplied"), 0, 0, 0.7);

                        chasm_count ++;
                    }
                    else if (chasm_count >= chasm_limit) chasm_burst_timer = 0;
                }
                break;
        }
    }
}
mp_consume_check();

if (!hitpause)
{
    if (fury_indc_time > 0) fury_indc_time --;
    if (polaris_indc_time > 0) polaris_indc_time --;
}

//theikos strongs
if (theikos_type > 0 || rune_K_active || od_cast == 2)
{
    //u-strong 2 light pillar animation
    if (ustrong2_pillar_end_timer < 10 && (attack != AT_USTRONG_2 || attack == AT_USTRONG_2 && window == 5 || !is_attacking) && !hitpause) ustrong2_pillar_end_timer ++;
    move_cooldown[AT_USTRONG_2] = 1 + ceil(mp_cost_strongs - mp_cur);

    if (dstrong2_active && !instance_exists(theikos_fire_artc))
    {
        theikos_fire_artc = instance_create(dstrong2_startpos[0], dstrong2_startpos[1], "obj_article1");
        theikos_fire_artc.state = "theikos_fire";
    }
    move_cooldown[AT_DSTRONG_2] = 1 + ceil(mp_cost_strongs - mp_cur);
}
#endregion

#region ABYSS RUNES AND THE LIKE

if (rune_A_active) //airdash
{
    if (rune_A_cd > 0) rune_A_cd --;

    if ((right_hard_pressed || left_hard_pressed) && state != PS_AIRDASH && state_cat == SC_AIR_NEUTRAL && rune_A_cd == 0)
    {
        if (right_down) spr_dir = 1;
        else if (left_down) spr_dir = -1;
        set_state(PS_AIRDASH);
    }

    if (state == PS_AIRDASH)
    {
        hsp = rune_A_airdash_speed*spr_dir;
        vsp = 0;
        can_jump = 0;
        can_djump = 0;

        sprite_index = sprite_get((theikos_type > 0) ? "theikos_dash" : "dashstart");
        image_index = lerp(0, 3, state_timer/initial_dash_time);

        //effect work
        if (free)
        {
            if (state_timer == 1) sound_play(sound_get("sfx_forceleap_jump"));
            if (state_timer == 3)
            {
                var newdust = spawn_dust_fx(x-64*spr_dir, y-8, sprite_get("fx_skill2"), 10);
                newdust.dust_color = 0;
            }
        }

        if (state_timer > initial_dash_time)
        {
            rune_A_cd = 20;
            set_state(PS_IDLE_AIR);
        }
    }
}
if (rune_G_active) //warp spears
{
    if (rune_G_warp_lag > 0)
    {
        rune_G_warp_lag --;
        state = PS_IDLE_AIR;
        if (shield_pressed) rune_G_warp_lag = 0;
    }
}
if (theikos_type != 2)
{
    if (has_rune("E")) //slippery bar
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
        djump_speed = 8;

        if (state != PS_GLIDE || state != PS_ATTACK_AIR)
        {
            max_fall = 17; //maximum fall speed without fastfalling
            gravity_speed = 1;
        }
    }
}

if (rune_H_active) //hookshot ustrong
{
    if (rune_H_drag_id != noone)
    {
        with (rune_H_drag_id)
        {
            if (!freemd)
            {
                fall_through = true;
                set_state(PS_HITSTUN);
                if (other.bar_grab_time == 1) hitpause = false;

                if (place_meeting(x-10*spr_dir, y, asset_get("solid_32_obj"))) other.rune_H_drag_id = noone; //wall stops drag

                if (other.rune_H_target_was_free) //if the foe is on the ground, bounce them
                {
                    vsp = -10;
                    hsp = -other.ustrong_dir[0]/4;
                    other.rune_H_target_was_free = false;
                    other.rune_H_drag_id = noone;
                }
                else if (hitpause) other.rune_H_drag_id = noone; //hitting the dragged foe will undrag them
                else //drag trajectory
                {
                    hsp = -other.ustrong_dir[0];
		            vsp = -other.ustrong_dir[1];
                }
            }
            else other.rune_H_target_was_free = true;
        }
    }
}

//lord's punishment
if ("fs_char_initialized" in self || "superTrue" in self || can_overdrive)
{
    if ("fs_char_initialized" in self)
    {
        fs_using_final_smash = (od_cast == 2);
        fs_charge = od_cur*2;

        //colorful meter
        fs_meter_color ++;
        if (fs_meter_color >= 255) fs_meter_color = 0;
        var fs_meter_color_rgb = make_color_rgb(255, 0, 0);
        var fs_hue = (color_get_hue(fs_meter_color_rgb)+fs_meter_color) % 255;
        var fs_hsv = make_color_hsv(fs_hue, color_get_saturation(fs_meter_color_rgb), color_get_value(fs_meter_color_rgb));

        od_color_const = fs_hsv;

        if (get_match_setting(SET_PRACTICE) && od_cur < od_max && taunt_down && shield_down) od_cur = od_max;
    }

    switch (od_cast)
    {
        case 0: //not ready yet
            //if it reaches the max, change to ready state
            if (od_cur >= od_max)
            {
                od_cast ++;
                sound_play(sound_get("sfx_od_ready"));
            }

            //visual stuff
            if (od_color_time > 0) od_color_time --;
            od_color = merge_color(od_color_const, $FFFFFF, od_color_time/10);
            break;
        case 1: //ready but not cast

            //on input, change to the casting state
            if (!menu_active && !free && special_down && attack_down)
            {
                if ("fs_char_initialized" in self) fs_force_fs = true;
                else set_attack(AT_OVERDRIVE);
            }

            //visual stuff
            if (od_color_time > 0) od_color_time = 0;
            od_gauge_flash();

            break;
        case 2: //currently casting
            //he has attack invince using this move
            attack_invince = true;
            if ("superTrue" in self)
            {
                superTrue = 0;
                hit_player_obj.canUseCounterTimer = 5;
            }

            //visual stuff
            od_gauge_flash();
            if (od_rect_alpha > 0) od_rect_alpha -= 0.05;
            if (od_slash_alpha > 0) od_slash_alpha -= 0.1;

            if ((window > 14 || window == 14 && window_timer > 0) && state_timer < 290)
            {
                for (var i = 0; i <= 2; ++i)
                {
                    var dist = point_distance(od_sword_pos[0][0], od_sword_pos[0][1], od_sword_pos[1][0], od_sword_pos[1][1]);
                    var angle = point_direction(od_sword_pos[0][0], od_sword_pos[0][1], od_sword_pos[1][0], od_sword_pos[1][1]);
                    var dir_x = od_sword_pos[0][0] + lengthdir_x(dist*i/2, angle);
                    var dir_y = od_sword_pos[0][1] + lengthdir_y(dist*i/2, angle);

                    generate_particles(fx_burn, dir_x, dir_y - 32, spr_dir ? 45 : 315, depth+1, window == 17 ? 15 : 11, window == 17 ? 9 : 15 , 0, 0, spr_dir);
                    //fx_theikos_fire
                }
            }
            break;
        case 3: //divine blessing buff
            //timer
            //od_cur -= 100/60/od_buff_time_max;
            od_buff_time --;
            od_cur = od_buff_time/9;
            
            if (od_buff_time <= 0) od_cast = 0;

            //divine blessing
            godpower(true);

            //visual stuff
            od_gauge_flash();
            break;
    }

    od_cur = floor(clamp(od_cur, 0, od_max));
    
    //this locks the effects to a single frame
    if (prev_od_cast != od_cast) {
        if (prev_od_cast == 3) godpower(false);
        prev_od_cast = od_cast;
    }
}

//theia evlogia
if (theikos_type > 0 && (alt_cur == 0 || alt_cur == 27) || alt_cur == 27)
{
    theikos_color_time += theikos_color_increase ? 1 : -1;
    if (theikos_color_increase && theikos_color_time >= theikos_color_time_max || theikos_color_time <= 0) theikos_color_increase = !theikos_color_increase;
	user_event(1);
}

if (theikos_type > 0)
{
    user_event(0);
    generate_particles(fx_theikos_aura, x, y-32, 0, depth+1, 11, 11, (random_func(75, 5, true)-2)/4, -1);
    if (game_time % 6 == 0) generate_particles(fx_theikos_aura, x, y-40, 0, depth+1, 7, 9, (random_func(75, 5, true)-2)/4, -1.5);
}
#endregion

#region MISC

//halloween alt costume
if (bibical)
{
    wait_time = 0; //prevents bar from sticking out of the bibically accurate angel costume
    if (prev_state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE || is_attacking)
    {
        bibical = false;
        wait_time = normal_wait_time;
        var newfx = spawn_hit_fx(x, y, hit_fx_create(sprite_get("bibical_death"), 40));
        newfx.depth = depth-1;
    }
}

//motion trail effect
//thanks frtoud and mr. nart!
if (apply_motion_trail && trail_draw_size < trail_total_size) trail_draw_size ++;
else if (!apply_motion_trail && trail_draw_size > 1) trail_draw_size --;

if (apply_motion_trail)
{
    if (!is_accel_trail)
    {
        trail_pos[trail_cur_num].sprite = sprite_index;
        trail_pos[trail_cur_num].subimg = image_index;
        trail_pos[trail_cur_num].xscale = image_xscale*2;
    }
    else //for accel blitz specifically, since bar is invsible
    {
        trail_pos[trail_cur_num].sprite = sprite_get("fx_skill6_afterimage");
        trail_pos[trail_cur_num].subimg = accel_goto/90+0.5;

        var convert_to_spr_dir = spr_dir;

        if (accel_goto > 90 && accel_goto < 270) convert_to_spr_dir = -1;
        else convert_to_spr_dir = 1;
        trail_pos[trail_cur_num].xscale = convert_to_spr_dir*2;
    }
    
    trail_pos[trail_cur_num].x = x;
    trail_pos[trail_cur_num].y = y;
    trail_pos[trail_cur_num].yscale = image_yscale*2;
    trail_pos[trail_cur_num].rot = image_angle;
    trail_pos[trail_cur_num].col = image_blend;

    trail_cur_num --;
    if (trail_cur_num < 0) trail_cur_num = trail_total_size - 1;
}

//trail effects
if (alt_cur == 26) 
{
    switch (state)
    {
        case PS_DOUBLE_JUMP:
            apply_motion_trail = (vsp < 0 || fast_falling);
            break;
        case PS_IDLE_AIR: case PS_FIRST_JUMP:
            apply_motion_trail = (fast_falling || accel_act_time > 0);
            break;
        case PS_DASH_START: case PS_WAVELAND: case PS_ROLL_BACKWARD: case PS_ROLL_FORWARD: case PS_TECH_BACKWARD: case PS_TECH_FORWARD: case PS_AIR_DODGE:
            apply_motion_trail = true;
            break;
        case PS_ATTACK_AIR: case PS_ATTACK_GROUND:
            switch (attack)
            {
                default:
                    apply_motion_trail = false;
                    break;
                case AT_DATTACK: case AT_EXTRA_3: //dash attack / searing descent
                    apply_motion_trail = (window <= 3);
                    break;
                case AT_FTHROW: case AT_FSPECIAL_AIR: //burning fury
                    apply_motion_trail = (window == 9);
                    break;
                case AT_UTHROW: //force leap
                    apply_motion_trail = (window == 4 || window == 5);
                    break;
                case AT_FSPECIAL_2: //power smash
                    apply_motion_trail = (window < 6 && window > 3);
                    break;
                case AT_EXTRA_2: //light hookshot
                    apply_motion_trail = (window == 5 || window == 6);
                    break;
            }
            break;
        default:
            apply_motion_trail = false;
            break;
    }
}

//VA stuff

#endregion

#region VALUE STORAGE

//Custom Hitbox Colors System (by @SupersonicNK)
//Put this above all the #defines in your script
prep_hitboxes();

#endregion

#region WORKSHOP COMPATIBILITIES

//dracula boss dialouge
user_event(6);

//steve death messages / pit codec
user_event(7);

//venus fluster check
if (exist_time == 2 || get_match_setting(SET_PRACTICE) && exist_time == 240)
{
    with (oPlayer) if ("is_venus_t" in self || url == "2621721367") array_push(other.venus_exist_ids, self);
}
#endregion

#region #DEFINES
#define prep_hitboxes
{
    //Applies the hitbox sprites and prepares them to be drawn (with color!)
    with (pHitBox) if (player_id == other && "dont_color" not in self)
    {
        if ("col" not in self)
        {
            with (other)
            {
                var parent = get_hitbox_value(other.attack, other.hbox_num, HG_PARENT_HITBOX)
                var true_hbox_num = parent ? parent : other.hbox_num
                other.col = get_hitbox_value(other.attack, true_hbox_num, HG_HITBOX_COLOR);
                if (other.col == 0) other.col = c_red;
                other.shape = get_hitbox_value(other.attack, true_hbox_num, HG_SHAPE)
                other.draw_colored = true;
                if (other.type == 1) other.sprite_index = __hb_hd_spr[other.shape];
                else if (get_hitbox_value(other.attack, true_hbox_num, HG_PROJECTILE_MASK) == -1) other.mask_index = __hb_hd_spr[other.shape];
                else other.draw_colored = false;
                other.draw_spr = __hb_draw_spr;
            }
        }
    }
}

#define bar_pause(enable)
{
    if (enable)
    {
        hurtboxID.sprite_index = hurtbox_spr;
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

        if (state == PS_SPAWN)
        {
            state_timer ++;
            if (state_timer % (idle_anim_speed*600) == 0) state_timer = 0;
        }
        if (was_reloaded && state != PS_SPAWN && attack != AT_INTRO && attack != AT_SELECT && attack != AT_THEIKOS) state = PS_SPAWN;
        mp_gainable = false;
    }
    else
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
        state_timer = game_time;

        mp_gainable = true;
    }
}
#define menu_controls(enable)
{
    //menu controls
    //0 = nothing | 1 = up | 2 = right | 3 = down | 4 = left | -1 = jump | -2 = attack/special
    if (enable)
    {
        if (menu_dir != 0) menu_dir = 0; //this will always force the input back to 0, so it's active for 1 frame
        if (up_pressed) menu_dir = 1;
        if (right_pressed) menu_dir = 2;
        if (down_pressed) menu_dir = 3;
        if (left_pressed) menu_dir = 4;
        if (jump_pressed && jump_counter == 0) menu_dir = -1;
        if (special_pressed && special_counter == 0) menu_dir = -2;
    }
    else menu_dir = 0;
}

#define burnbuff_apply()
{
    for (var atk = 0; atk <= 49; ++atk) switch (atk)
    {
        case AT_JAB: case AT_UTILT: case AT_FAIR: case AT_DAIR: case AT_USTRONG: case AT_FSTRONG:  case AT_DSTRONG:  case AT_TAUNT: case AT_FSTRONG_2:  case AT_DSTRONG_2:
            var hb_num_total = get_num_hitboxes(atk);
            for (var hb_num = 1; hb_num <= hb_num_total; ++hb_num)
            {
                reset_hitbox_value(atk, hb_num, HG_DAMAGE);
                reset_hitbox_value(atk, hb_num, HG_HITBOX_COLOR);
                reset_hitbox_value(atk, hb_num, HG_VISUAL_EFFECT);
                reset_hitbox_value(atk, hb_num, HG_HIT_SFX);
                reset_hitbox_value(atk, hb_num, HG_HIT_PARTICLE_NUM);

                if (burnbuff_active)
                {
                    if ( (atk != AT_JAB || atk == AT_JAB && hb_num == 2) && (atk != AT_USTRONG || atk == AT_USTRONG && hb_num <= 3) &&
                    (atk != AT_DSTRONG || atk == AT_DSTRONG && hb_num <= 3)) //half exepctions
                    {
                        //damage
                        if (atk == AT_FSTRONG) set_hitbox_value(atk, hb_num, HG_DAMAGE, 16);
                        else set_hitbox_value(atk, hb_num, HG_DAMAGE, floor(get_hitbox_value(atk, hb_num, HG_DAMAGE) * fury_mult));

                        set_hitbox_value(atk, hb_num, HG_HITBOX_COLOR, hb_color[3]); //apply fire and change hitbox color
                        set_hitbox_value(atk, hb_num, HG_HIT_PARTICLE_NUM, 2);
                    }
                }
            }
            break;
    }

    if (rune_C_active) //light fstrong (also applies to theikos f-strong)
    {
        if (!burnbuff_active)
        {
            set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 25 + strong_charge/2);
            set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, fx_lightblow[2]);
            set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_COLOR, hb_color[2]);
            set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
            set_hitbox_value(AT_FSTRONG, 1, HG_HIT_PARTICLE_NUM, 1);

            set_hitbox_value(AT_FSTRONG_2, 1, HG_EXTRA_HITPAUSE, 10 + strong_charge/4);
            set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, fx_lightblow[0]);
            set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_COLOR, hb_color[2]);
            set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_abyss_hex_hit"));
            set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_PARTICLE_NUM, 1);

            set_hitbox_value(AT_FSTRONG_2, 2, HG_EXTRA_HITPAUSE, 10 + strong_charge/4);
            set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT, fx_lightblow[0]);
            set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_COLOR, hb_color[2]);
            set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_abyss_hex_hit"));
            set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_PARTICLE_NUM, 1);

            set_hitbox_value(AT_FSTRONG_2, 3, HG_EXTRA_HITPAUSE, 25 + strong_charge/2);
            set_hitbox_value(AT_FSTRONG_2, 3, HG_VISUAL_EFFECT, fx_lightblow[2]);
            set_hitbox_value(AT_FSTRONG_2, 3, HG_HITBOX_COLOR, hb_color[2]);
            set_hitbox_value(AT_FSTRONG_2, 3, HG_HIT_PARTICLE_NUM, 1);
        }
    }
}
//usage: generate_particles(hit_fx_name, x, y, angle, depth, random_spread_x, random_spread_y, hsp, vsp, dir)
#define generate_particles
/// generate_particles(fx_name, fx_x, fx_y, fx_angle = 0, fx_depth = -1, fx_spread_x = 0, fx_spread_y = 0, fx_hsp = 0, fx_vsp = 0, fx_dir = 0)
{
    var fx_name = argument[0], fx_x = argument[1], fx_y = argument[2];
    var fx_angle = argument_count > 3 ? argument[3] : 0;
    var fx_depth = argument_count > 4 ? argument[4] : -1;
    var fx_spread_x = argument_count > 5 ? argument[5] : 0;
    var fx_spread_y = argument_count > 6 ? argument[6] : 0;
    var fx_hsp = argument_count > 7 ? argument[7] : 0;
    var fx_vsp = argument_count > 8 ? argument[8] : 0;
    var fx_dir = argument_count > 9 ? argument[9] : 0;

    if (visible)
    {
        var part_x = (random_func(24, floor(fx_spread_x/2), true)-floor(fx_spread_x/4))*fx_spread_x;
        var part_y = (random_func(25, floor(fx_spread_y/2), true)-floor(fx_spread_y/4))*fx_spread_y;
        var random_fx = random_func(26, 3, true);

        fx_name = spawn_hit_fx(fx_x+part_x, fx_y+part_y, fx_name);
        fx_name.spr_dir = -spr_dir;
        if (depth != 0) fx_name.depth = fx_depth;
        else fx_name.depth = 3;
        if (fx_angle == -1)
        {
            var random_angle = random_func(6, 360,true);
            fx_name.draw_angle = random_angle;
        }
        else if (fx_angle >= 0) fx_name.draw_angle = fx_angle;
        fx_name.hsp = fx_hsp;
        fx_name.vsp = fx_vsp;
        if (fx_dir == 0)
        {
            var random_dir = random_func(7, 2, true);
            if (random_dir == 0) random_dir = -1;

            fx_name.spr_dir = random_dir;
        }
        else fx_name.spr_dir = fx_dir;
    }
    
}
#define spawn_crack()
{
    var new_part = {
        x: x,
        y: y,
        timer: 0,
        max_time: other.fx_crack_time_max
    }
    array_push(other.fx_cracks, new_part);
}
#define mp_consume_check()
{
    var mp_amount;
    var mp_time;
    var mp_type;
    mp_amount = get_window_value(attack, window, AG_WINDOW_MP_CONSUME);
    mp_time = get_window_value(attack, window, AG_WINDOW_MP_CONSUME_TIME);
    mp_type = get_window_value(attack, window, AG_WINDOW_MP_CONSUME_TYPE);

    if (mp_amount != 0 && is_attacking && !infinite_mp_mode && !hitpause)
    {
        switch (mp_type)
        {
            case 0:
                if (window_timer == mp_time) mp_cur -= floor(mp_amount);
                break;
            case 1:
                if (state_timer % mp_time == 0) mp_cur -= floor(mp_amount);
                break;
        }
    }
}


#define od_gauge_flash()
{
    if (can_overdrive)
    {
        if (game_time % 6 == 0) od_color_flash = !od_color_flash;
        od_color = od_color_flash ? $FFFFFF : od_color_const;
    }
    else if ("fs_char_initialized" in self)
    {
        if (od_color_time > 0) od_color_time --;
        od_color = merge_color(od_color_const, $FFFFFF, od_color_time/10);
    }
}
#define godstun(enable)
{
    for (var atk = 0; atk <= 49; ++atk)
    {
        var hb_num_total = get_num_hitboxes(atk);
        for (var hb_num = 1; hb_num <= hb_num_total; ++hb_num)
        {
            reset_hitbox_value(atk, hb_num, HG_EXTRA_HITPAUSE);
            
            var ex_pause = 20*enable;
            switch (atk)
            {
                case AT_USTRONG:
                    if (hb_num < 5 && !burnbuff_active) set_hitbox_value(atk, hb_num, HG_EXTRA_HITPAUSE, get_hitbox_value(atk, hb_num, HG_EXTRA_HITPAUSE) + ex_pause);
                    break;
                case AT_FSTRONG: case AT_FSTRONG_2:
                    if (rune_C_active && !burnbuff_active) set_hitbox_value(atk, hb_num, HG_EXTRA_HITPAUSE, get_hitbox_value(atk, hb_num, HG_EXTRA_HITPAUSE) + ex_pause);
                    break;
                case AT_NTHROW: case AT_NSPECIAL_AIR:
                    if (hb_num < 2) set_hitbox_value(atk, hb_num, HG_EXTRA_HITPAUSE, get_hitbox_value(atk, hb_num, HG_EXTRA_HITPAUSE) + ex_pause);
                    break;
                case AT_EXTRA_4:
                    if (hb_num == 2) set_hitbox_value(atk, hb_num, HG_EXTRA_HITPAUSE, get_hitbox_value(atk, hb_num, HG_EXTRA_HITPAUSE) + ex_pause);
                    break;
                case AT_DTHROW: case AT_NSPECIAL_2: case AT_USPECIAL_2: case AT_EXTRA_2: case AT_USTRONG_2:
                    set_hitbox_value(atk, hb_num, HG_EXTRA_HITPAUSE, get_hitbox_value(atk, hb_num, HG_EXTRA_HITPAUSE) + ex_pause);
                    break;
            }
        }
    }
}
#define godpower(enable)
{
    //  gliding stamina                 (+ 100  -  stacks with rune B)
    //  overall damage increase         (x 1.5  -  stacks with theikos) (on user_event13)
    //  accelerated passive mana gain   (2 -> 15  -  overwrites rune M)
    //  burn time doubled               (2 secs -> 4 secs) (stacks with theikos)
    //  lightstun duration doubled      (2 secs -> 4 secs) (stacks with theikos)
    //  light has extra hitpause        (+ 20 extra hitpause)

    if (enable)
    {
        //visual stuff
        if (theikos_type != 2 && game_time % 3 == 0)
        {
            generate_particles(fx_theikos_aura, x, y-32, 0, depth+1, 11, 11, (random_func(75, 5, true)-2)/4, -1);
            generate_particles(fx_theikos_aura, x, y-40, 0, depth+1, 7, 9, (random_func(75, 5, true)-2)/4, -1.5);
        }

        //only runs once
        if (prev_od_cast != od_cast)
        {
            no_effect_line_color = [97, 45, 2];

            //stat changes
            lightstun_active_set = lightstun_active_set * godbuff_mult;

            glide_stamina_max = has_rune("B") ? 250 : 200;
            glide_stamina = glide_stamina_max;
            mp_gain_rate = 15;

            godstun(enable);
        }
    }
    else
    {
        if (prev_od_cast != od_cast)
        {
            //visual stuff
            switch (alt_cur)
            {
                default:
                    no_effect_line_color = [0, 0, 0];
                    break;
                case 14: //gameboy
                    no_effect_line_color = [15, 56, 15];
                    break;
                case 15: //NES
                    no_effect_line_color = [32, 0, 178];    
                    break;
                case 16: //seasonal-halloween
                    if (bibical) no_effect_line_color = [75, 43, 43];    
                    break;    
                case 26: //helel
                    no_effect_line_color = [52, 52, 52];    
                    break;
                case 27: //theikos
                    no_effect_line_color = [97, 45, 2];
                    break;
            }

            //stat changes
            glide_stamina_max = has_rune("B") ? 150 : 100;
            glide_stamina = glide_stamina_max;
            if (state == PS_GLIDE && glide_stamina > glide_stamina_max) glide_stamina = glide_stamina_max;
            mp_gain_rate = 2 + 5 * has_rune("M");

            lightstun_active_set = lightstun_active_set * theikos_mult;

            godstun(enable);
        }
    }
}
#endregion