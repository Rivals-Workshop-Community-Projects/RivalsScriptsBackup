//update
#macro PS_GLIDE         50 // glide state

//////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES ////////////////////////////////////////////////////////

//gameplay time -- "so you don't have to run this function so many times" - nart
got_gameplay_time = get_gameplay_time();

//attack/dodge check
is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
is_dodging = (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_AIR_DODGE);

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
}

//play intro
if (got_gameplay_time == 4 && !bibical && attack != AT_INTRO)
{
    set_attack(has_theikos ? AT_THEIKOS : AT_INTRO);
    exit;
}



//renders effects in front of you
//credit to supersonic for the help
//effects default depth when they spawn is 3, so this will make it so it won't overwrite values if i add them manually
//with (hit_fx_obj) if (player == other.player && depth == 3) depth = player_id.depth-2;

//this custom setup will let me control any hitbox i want
if (instance_exists(bar_hitbox))
{
    //hitbox particle setup because fuck you
    bar_hitbox.fx_particles = get_hitbox_value(pHitBox.attack, pHitBox.hbox_num, HG_HIT_PARTICLE_NUM);
}


//////////////////////////////////////////////////////////// BAR MECHANICS /////////////////////////////////////////////////////////////

// RESET VARIABLES ON THE GROUND
if (!free)
{
    glide_stamina = glide_stamina_max;
    
    accel_act_time = 0;
    accel_used = false;

    if was_free { // this check is so that you only reset things the moment you land
        //gliding
        glide_ui = false;
        can_glide = true;
        
        //exit glide
        if (state == PS_GLIDE) set_state(PS_LAND);
    
        //double jump height
        djump_speed = normal_djump_speed;
    
        //skill stuff
        start_skill_cancel = false;
    
        leap_used = false;
        blast_used = false;
    
        if (accel_used && (state == PS_LAND || state == PS_LANDING_LAG) && (prev_state == PS_ATTACK_AIR || prev_state == PS_IDLE_AIR) && !has_hit) state = PS_PRATLAND;
    }
}
// DO STUFF IN THE AIR
else { // free
    if (can_glide) //check if bar can glide
    {
        if (state_cat == SC_AIR_NEUTRAL && state != PS_FIRST_JUMP && state != PS_GLIDE && vsp > 1 && jump_down) set_state(PS_GLIDE);
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
            accel_used = false;
            apply_motion_trail = false;
            break;
            
        // GLIDE MECHANIC
        case PS_GLIDE: // this is a macro, see top of file
            //technical stuff
            vsp = glide_vsp;
            if (fast_falling) vsp = glide_fastfall_vsp;
        
            glide_stamina --;
            if (glide_stamina <= 0) //if stamina reaches 0 stop gliding
            {
                can_glide = false;
                set_state(PS_IDLE_AIR);
            }
            if (abs(hsp) >= air_max_speed) spr_dir = sign(hsp); //turn bar around if he goes fast enough
        
            //anim stuff
            sprite_index = sprite_get("glide");
            image_index += glide_anim_speed;
            
            //show glide ui
            glide_ui = true;
        
            //exit glide
            if (!jump_down) set_state(PS_IDLE_AIR);
            
            break;
        
        // DOUBLE JUMP MECHANICS
        case PS_DOUBLE_JUMP:
            //reduce height on each double jump bar does
            if (state_timer == 1 && theikos_type == 0) djump_speed = (has_rune("B")) ? djump_speed / 1.22 : djump_speed / 1.56;
        
            //midair turning
            var turn_timeframe = 5; //decides how much time bar has to turn around
            if (state_timer == 0) djump_turn = false;
            if (state_timer <= turn_timeframe && prev_djumps != djumps && !djump_turn)
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
                if (state_timer > turn_timeframe) prev_djumps = djumps;
            }
            break;
                
    
    }
}

//GLIDE UI
if (glide_stamina < glide_stamina_max && state != PS_PRATFALL && theikos_type == 0) glide_ui = true; //show glide UI


//MP MECHANIC
//thanks delta parallax
if (mp_current < 100 && mp_gainable) mp_current = mp_current + (mp_gain_rate/60); //clamp(mp_current + (mp_gain_rate/60), 0, mp_max);
else if (mp_current >= mp_max) mp_current = mp_max;
else if (mp_current <= 0) mp_current = 0;

//mana gain conditions
if (burnbuff_active || lightbuff_active || mp_current >= mp_max) mp_gainable = false;
else mp_gainable = true;

//mana overcharge anim
if (mp_current > 100) mp_color_ex = (got_gameplay_time % 20 >= 15) ? c_white : $FFFF00;

//mana notice
if (notice_time > -1)
{
    if (notice_time == notice_time_max)
    {
        sound_play(sound_get("mfx_notice"), 0, 0);
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
    with (oPlayer)
    {
        if (holyburning && holyburner_id == other)
        {
            if (!hitpause || hitpause && lightstun_type == 2) //only damage if the player isn't in hitpause
            {
                holyburn_timer --;

                if (holyburn_timer % 30 == 0) take_damage(player, other.player, 1); //DoT
                if (holyburn_timer <= 0 && lightstun_type != 2 || state == PS_DEAD || state == PS_RESPAWN) holyburning = false;

                //extra mp gain from mechanics
                if (holyburn_timer % 15 == 0) with (other) if (mp_current < mp_max && has_rune("J")) mp_current += 1;
            }

            with (holyburner_id) //graphic stuff
            {
                var random_x = (random_func(28, 9, true)-4)*8;
                var random_y = random_func(25, 9, true)*(other.char_height/8);

                //if possible, change to the generate_particles() function
                var fx_fire = spawn_hit_fx(other.x+random_x, other.y-random_y-8, fx_burn);
                fx_fire.spr_dir = other.spr_dir;

                other.outline_color = [line_color[0], line_color[1], line_color[2]];
                init_shader();
            }
        }
        else if ("url" in self && url != other.url && !holyburning && !burned)
        {
            outline_color = [0, 0, 0];
            init_shader();
        }
    }
}
if (!burned && !activate_outline && !holyburning)
{
    outline_color = no_effect_line_color;
    init_shader();
}

//LIGHT STUNNING MECHANIC
if (lightstun_active)
{
    with (oPlayer)
    {
        if (lightstun_timer > -1) lightstun_timer --;
        if (lightstun_timer <= -1 || state == PS_DEAD || state == PS_RESPAWN)
        {
            lightstun_type = 0;
            lightstun_timer = -1;
        }

        switch (lightstun_type)
        {
            case 0:
                lightstun_timer = 0;
                break;
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
                set_state(PS_HITSTUN);
                break;
        }

        //extra mp gain from mechanics
        if (lightstun_type > 0 && lightstun_timer % 15 == 0) with (other) if (mp_current < mp_max && has_rune("J")) mp_current += 1;

        with (other) if (lightstun_last_attack > 0)
        {
            lightstun_last_attack_timer --;
            if (lightstun_last_attack_timer <= 0) lightstun_last_attack = 0;
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

    for (var o = 0; o <= 2; ++o)
    {
        lerp_array[o] = floor(merge_color(no_effect_line_color[o], line_color[o], outline_time/30));
        outline_color = [lerp_array[0], lerp_array[1], lerp_array[2]];
        init_shader();
    }    
}
else
{
    outline_time = 0;
    outline_time_up = true;
}
//all mechanics that activate the outline go here
activate_outline = burnbuff_active;

////////////////////////////////////////////////////////// SKILLS SECTION //////////////////////////////////////////////////////////////

//the menu itself
if (menu_active)
{
    //menu logic
    menu_timer --;
    if (menu_timer <= menu_timer_stop) //it has a few secs extra because of versus mode restart jank
    {
        //if bar is in the middle of selecting, freeze him
        //otherwise, start the unfreeze timer
        if (cur_select > -1 && cur_select < 4) 
        {
            if (menu_timer < menu_timer_stop) menu_timer = menu_timer_stop;
            menu_controls(true);
            bar_pause(true);
        }
        else
        {
            menu_controls(false); //disable the menu controls
            state_timer ++; //this animates the spawn state

            //skill slots saving
            if (menu_timer == menu_timer_stop-1)
            {
                if (cur_select >= 4) for (var i = 0; i <= 3; ++i) prev_skills[i] = cur_skills[i];       //save skills
                else if (cur_select <= -1) for (var i = 0; i <= 3; ++i) cur_skills[i] = prev_skills[i]; //revert changes
            }
            if (menu_timer <= 0)
            {
                bar_pause(false);
                menu_active = false;
                cur_skill_info = 0;
            }
        }

        //picks skills / hover over them on info mode
        if (!info_mode_menu)
        {
            switch (menu_dir)
            {
                case 1: case 2: case 3: //selections
                    cur_skills[cur_select] = cur_select+4*(menu_dir-1);
                    sound_play(asset_get("mfx_confirm"));
                    cur_select ++;
                    break;
                case -1: //cancel select
                    sound_play(asset_get("mfx_back"));
                    cur_select --;
                    break;
                case -2:
                    if (is_practice_menu && !playtesting)
                    {
                        info_mode_menu = true;
                        sound_play(asset_get("mfx_confirm"));
                    }
                    else menu_dir = 0;
                    break;
            }
        }
        else
        {
            switch (menu_dir)
            {
                case 1: //up
                    if (cur_skill_info - 4 >= 0) cur_skill_info -= 4;
                    sound_play(asset_get("mfx_move_cursor"));
                    break;
                case 2: //right
                    if (cur_skill_info + 1 <= 4 *skill[cur_skill_info].skill_pos_y + 3) cur_skill_info += 1;
                    sound_play(asset_get("mfx_move_cursor"));
                    break;
                case 3: //down
                    if (cur_skill_info + 4 <= 11) cur_skill_info += 4;
                    sound_play(asset_get("mfx_move_cursor"));
                    break;
                case 4: //left
                    if (cur_skill_info - 1 >= 4 * skill[cur_skill_info].skill_pos_y) cur_skill_info -= 1;;
                    sound_play(asset_get("mfx_move_cursor"));
                    break;
                case -1: //go back to skill select
                    sound_play(asset_get("mfx_back"));
                    info_mode_menu = false;
                    break;
                case -2: //allow bar to move with skill descriptions
                    //cur_skill_info needs to be equiped
                    for (var g = 0; g <= 3; ++g)
                    {
                        if (skill[cur_skills[g]].skill_id != skill[cur_skill_info].skill_id
                        && skill[cur_skills[g]].skill_pos_x == skill[cur_skill_info].skill_pos_x)
                        {
                            replaced_skill_temp = cur_skills[g]
                            cur_skills[g] = cur_skill_info;
                        }
                    }

                    //gives bar the MP to use the skill too
                    if (mp_current < skill[cur_skill_info].mp_use_cost) mp_current = skill[cur_skill_info].mp_use_cost;

                    menu_active = false;
                    menu_controls(false);
                    bar_pause(false);
                    sound_play(asset_get("mfx_option"));
                    break;
            }
        }
    }

    //animation shenanigans
    if (is_attacking) //this part allows bar to still have some animations when he's frozen
    {
        switch (attack)
        {
            case 2: case 47: //intro + theikos transformation
                window_timer ++;
                break;
            case 3: //skill select animation
                if (window != 2) window_timer ++;
                break;
        }
    }
    //cursor animation
    menu_cursor_timer ++;

    //invincibility logic
    if (menu_invince > 0)
    {
        if (!training && !is_practice_menu && !is_cpu) menu_invince --;

        //makes bar flash when he has 1 second left
        if (menu_invince <= 60 && menu_invince % 4 == 0 && menu_invince > 0) invincible = true;
        else attack_invince = true;
    }

    burnbuff_active = false;
    lightbuff_active = false;
}

//general
//grab stuff
if (bar_grabbed_id != noone || rune_H_drag_id != noone)
{
    bar_grab_time ++;
    with (bar_grabbed_id || rune_H_drag_id)
    {   
        if (state != PS_DEAD && state != PS_RESPAWN && state != PS_HITSTUN) state = PS_HITSTUN;
        else if (state == PS_DEAD || state == PS_RESPAWN)
        {
            other.bar_grabbed_id = noone;
            other.rune_H_drag_id = noone;
        }
        free = true;
        hurt_img = 1;
    }
}
else bar_grab_time = 0;

//allows bar to act out of certain skills
if (skill_cancel_timer <= 0) start_skill_cancel = false;
else if (start_skill_cancel && !hitpause) skill_cancel_timer --;

//skill/strongs cost (special cooldowns are done inside the skills themselves)
for (var skill_slot = 0; skill_slot <= 3; ++skill_slot)
{
    move_cooldown[skill[cur_skills[skill_slot]].skill_attack] = 1 + ceil(skill[cur_skills[skill_slot]].mp_use_cost - mp_current);
    
    if (skill[cur_skills[skill_slot]].skill_attack_air != -1) //air ver check
    {
        move_cooldown[skill[cur_skills[skill_slot]].skill_attack_air] = 1 + ceil(skill[cur_skills[skill_slot]].mp_use_cost - mp_current);
    }
}
move_cooldown[AT_USTRONG] = 1 + ceil(mp_cost_strongs - mp_current);
move_cooldown[AT_DSTRONG] = 1 + ceil(mp_cost_strongs - mp_current);


//skill specific logic
//n-spec
switch (skill[cur_skills[0]].skill_id)
{
    case 8: //ember fist
        if (fury_ember_timer > 0) fury_ember_timer --;

        if (fury_ember_timer != 0)
        {
            if (fury_ember_timer % 8 == 0) //hitbox spawn
            {
                bar_hitbox = create_hitbox(skill[8].skill_attack, 4, fury_ember_x, fury_ember_y);
                bar_hitbox.fx_particles = get_hitbox_value(skill[8].skill_attack, 4, HG_HIT_PARTICLE_NUM);
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
}

//f-spec
switch (skill[cur_skills[1]].skill_id)
{
    case 1: //burning fury
        //check if burning fury is active and change the mana costs accordingly
        if (burnbuff_active) skill[1].mp_use_cost = skill[1].mp_cost2;
        else skill[1].mp_use_cost = fury_norm_cost;

        if (burnbuff_active)
        {
            if (!infinite_mp_mode) mp_current -= mp_cost_const_rate/60;
            if (mp_current <= 0) burnbuff_active = false;

            //visual stuff
            if (got_gameplay_time % 5 == 0) generate_particles(fx_part_fire, x, y-48, 0, depth-1, 11, 11, 0, -1);
        }

        if (is_attacking) switch (attack)
        {
            //burning fury buff on normals
            case AT_JAB: case AT_UTILT: case AT_FAIR: case AT_DAIR: case AT_USTRONG: case AT_FSTRONG:  case AT_DSTRONG:  case AT_TAUNT: case AT_FSTRONG_2:  case AT_DSTRONG_2:
                if (window == 1 && window_timer == 0) burnbuff_apply();
                break;
        }
        break;
    case 9: //light hookshot
        if (hook_grab > 0)
        {
            hsp += hook_charge/2.5*spr_dir+13*spr_dir; //min: 13 || max: 17

            if (hook_grab == 1 && !rune_G_active) vsp -= hook_charge/3+5; //min: 5 || max: 8.33
            else  vsp -= hook_charge/3+5.75; //min: 5 || max: 9.0833
            
            hook_grab = 0;
        }
        break;
}

//u-spec
switch (skill[cur_skills[2]].skill_id)
{
    case 2: //force leap
        if (leap_used) move_cooldown[skill[2].skill_attack] = 1 + leap_used;
        break;
    case 6: //accel blitz
        if (accel_used) move_cooldown[skill[6].skill_attack] = 1 + accel_used;

        //flash vulnerability
        if (state_cat == SC_HITSTUN)
        {
            if (accel_vulnerable)
            {
                hitstop = accel_flashed_time;
                accel_vulnerable = false;
            }
            if (accel_flashed_time > 0) accel_flashed_time --;
        }
        
        //gives bar time to act out of the attack, only if he isn't on the theikos state
        if (accel_act_time > 0)
        {
            if (attack == skill[6].skill_attack) has_hit = false;
            accel_act_time --;
            //add motion blur and flash effect stuff here
            if (accel_act_time % 3 == 0) charge_color = !charge_color;
        }
        else
        {
            if (state == PS_PRATFALL || state == PS_PRATLAND
            || !free && alt_cur != 25 && (!is_attacking || is_attacking && attack != skill[6].skill_attack))
            {
                apply_motion_trail = false;
            }

            if (accel_used && !has_hit && free && !hurtboxID.dodging && state != PS_PRATFALL && !is_attacking) set_state(PS_PRATFALL);
        }
        break;
}

//d-spec
switch (skill[cur_skills[3]].skill_id)
{
    case 3: //photon blast
        //cooldown
        if (blast_used) move_cooldown[skill[3].skill_attack] = 1 + blast_used;
        break;
    case 7: //polaris
        if (lightbuff_active)
        {
            //mp burning
            if (!infinite_mp_mode) mp_current -= mp_cost_const_rate/60;
            if (mp_current <= 0) lightbuff_active = false;

            //internal cooldown stuff
            if (polaris_shot) polaris_shot = false;
            if (homing_cooldown >= 0) homing_cooldown --;

            //these multi hitting moves move bar around so i don't want the hitpause to mess with the combo
            if (is_attacking)
            {
                if (attack == skill[1].skill_attack || attack == skill[1].skill_attack_air || attack == skill[10].skill_attack
                || attack == AT_DATTACK && window < 4 || attack == AT_JAB && window < 10)
                {
                    set_hitbox_value(skill[7].skill_attack, 1, HG_BASE_KNOCKBACK, 0);
                    set_hitbox_value(skill[7].skill_attack, 1, HG_KNOCKBACK_SCALING, 0);
                    set_hitbox_value(skill[7].skill_attack, 1, HG_BASE_HITPAUSE, 0);
                    set_hitbox_value(skill[7].skill_attack, 1, HG_HITPAUSE_SCALING, 0);
                }
                else
                {
                    reset_hitbox_value(skill[7].skill_attack, 1, HG_BASE_KNOCKBACK);
                    reset_hitbox_value(skill[7].skill_attack, 1, HG_KNOCKBACK_SCALING);
                    reset_hitbox_value(skill[7].skill_attack, 1, HG_BASE_HITPAUSE);
                    reset_hitbox_value(skill[7].skill_attack, 1, HG_HITPAUSE_SCALING);
                }
            }

            //needs to not do the attack
            if (down_down && special_pressed && state_cat != SC_HITSTUN)
            {
                clear_button_buffer(PC_SPECIAL_PRESSED);

                set_state(free ? PS_IDLE_AIR : PS_IDLE);

                spawn_hit_fx(x, y-32, fx_lightblow[1]);
                sound_play(asset_get("sfx_abyss_despawn"));

                lightbuff_active = false;
            }

            //visual stuff
            if (got_gameplay_time % 6 == 0) generate_particles(fx_intro, x, y, 180, depth-1, 11, 9, 0, 0);

            if (lightbuff_increase) lightbuff_alpha += lightbuff_rate;
            else lightbuff_alpha -= lightbuff_rate;
            if (lightbuff_alpha >= 0.8 || lightbuff_alpha <= 0) lightbuff_increase = !lightbuff_increase;
        }
        else
        {
            if (polaris_deactive_cd > 0) polaris_deactive_cd = 0;
        }
        break;
    case 11: //chasm burster
        set_window_value(skill[11].skill_attack, 1, AG_WINDOW_HAS_SFX, free ? 1 : 0);
        set_window_value(skill[11].skill_attack, 2, AG_WINDOW_HAS_SFX, free ? 0 : 1);

        if (chasm_burst_timer > 0) chasm_burst_timer --;

        if (chasm_burst_timer != 0)
        {
            //hitbox spawn
            if (chasm_burst_timer % 5 == 0)
            {
                bar_hitbox = create_hitbox(skill[11].skill_attack, 2 + burnbuff_active*2, chasm_x[chasm_count], chasm_y-40);
                bar_hitbox.fx_particles = get_hitbox_value(skill[11].skill_attack, 2 + burnbuff_active*2, HG_HIT_PARTICLE_NUM);

                spawn_hit_fx(chasm_x[chasm_count], chasm_y, fx_skill11_burst);
                var chasm = spawn_hit_fx(chasm_x[chasm_count], chasm_y, fx_skill11_chasm);
                chasm.depth = depth-1;

                sound_play(asset_get("sfx_burnapplied"), 0, 0, 0.7);

                chasm_count ++;
            }
            else if (chasm_count >= chasm_limit) chasm_burst_timer = 0;
        }
        break;
}

//theikos strongs
if (theikos_type > 0 || has_rune("K") || od_cast == 2)
{
    //u-strong 2 light pillar animation
    if (ustrong2_pillar_end_timer < 10 && (attack != AT_USTRONG_2 || attack == AT_USTRONG_2 && window == 5 || !is_attacking) && !hitpause) ustrong2_pillar_end_timer ++;
    move_cooldown[AT_USTRONG_2] = 1 + ceil(mp_cost_strongs - mp_current);

    if (dstrong2_active && !instance_exists(theikos_fire_artc))
    {
        theikos_fire_artc = instance_create(dstrong2_startpos[0], dstrong2_startpos[1], "obj_article1");
        theikos_fire_artc.state = "theikos_fire";
    }
    move_cooldown[AT_DSTRONG_2] = 1 + ceil(mp_cost_strongs - mp_current);
}

/////////////////////////////////////////////////////////// RUNES SECTION //////////////////////////////////////////////////////////////

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
        vsp = -1;
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
                var newdust = spawn_dust_fx(x-64*spr_dir, y, sprite_get("fx_skill2"), 10);
                newdust.dust_color = 0;
                newdust.draw_angle = 5*spr_dir;
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

if (get_match_setting(SET_RUNES))
{
    //check for needed runes here
    if (has_rune("C")) //light fstrong (also applies to theikos f-strong)
    {
        if (!burnbuff_active && od_cast != 3)
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
    if (has_rune("H")) //hookshot ustrong
    {
        if (instance_exists(bar_hitbox) && attack == AT_USTRONG)
        {
            hook_proj[0] = bar_hitbox.x;
            hook_proj[1] = bar_hitbox.y;

            if (!instance_exists(hook_chain_artc)) //chain effect
            {
                hook_chain_artc = instance_create(hook_proj[0], hook_proj[1], "obj_article1");
                hook_chain_artc.state = "hook_chain";
            }
            if (bar_hitbox.hitbox_timer % 2 == 0) hook_chain_amount ++;

            if (bar_hitbox.hitbox_timer >= bar_hitbox.length - 1)
            {
                with (obj_article1) if (player_id == other.id && state == "hook_chain")
                {
                    window = 3;
                    window_timer = 0;
                }
            }
        }
        
        if (rune_H_drag_id != noone)
        {
            /*
            for (var line_length = 0; line_length < 10496; line_length += 128)
            {
                var _angle = point_direction(hook_proj[0], hook_proj[1], hook_bar_pos[0], hook_bar_pos[1]);
                var _x = hook_proj[0] + lengthdir_x(line_length, _angle);
                var _y = hook_proj[1] + lengthdir_y(line_length, _angle);

                if (!place_meeting(_x, _y, asset_get("solid_32_obj"))) draw_circle_color(_x, _y, 5, c_red, c_red, false);
                else
                {
                    rune_H_collision_pos[0] = _x;
                    rune_H_collision_pos[1] = _y;
                    break;
                }
            }
            */

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
}

//lord's punishment
if ("fs_char_initialized" in self || "superTrue" in self || can_overdrive)
{
    if ("fs_char_initialized" in self)
    {
        fs_using_final_smash = (od_cast == 2);
        fs_charge = od_current*2;

        //colorful meter
        fs_meter_color ++;
        if (fs_meter_color >= 255) fs_meter_color = 0;
        var fs_meter_color_rgb = make_color_rgb(255, 0, 0);
        var fs_hue = (color_get_hue(fs_meter_color_rgb)+fs_meter_color) % 255;
        var fs_hsv = make_color_hsv(fs_hue, color_get_saturation(fs_meter_color_rgb), color_get_value(fs_meter_color_rgb));

        od_color_const = fs_hsv;
    }

    switch (od_cast)
    {
        case 0: //not ready yet
            //if it reaches the max, change to ready state
            if (od_current >= od_max)
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
            //od_current -= 100/60/od_buff_time_max;
            od_buff_time --;
            od_current = od_buff_time/9;
            
            if (od_buff_time <= 0) od_cast = 0;

            //divine blessing
            godpower(true);

            //visual stuff
            od_gauge_flash();
            break;
    }

    od_current = floor(clamp(od_current, 0, od_max));
    
    //this locks the effects to a single frame
    if (prev_od_cast != od_cast) {
        if (prev_od_cast == 3) godpower(false);
        prev_od_cast = od_cast;
    }
}

//theia evlogia
if (has_theikos && (was_reloaded || theikos_type == 0 && got_gameplay_time > 100))
{
    theikos_type = 1 + found_cheapie;
    exit;
}

if (theikos_type > 0)
{
    user_event(0);
    generate_particles(fx_theikos_aura, x, y-32, 0, depth+1, 11, 11, (random_func(75, 5, true)-2)/4, -1);
    if (got_gameplay_time % 2 == 0) generate_particles(fx_theikos_aura, x, y-40, 0, depth+1, 7, 9, (random_func(75, 5, true)-2)/4, -1.5);

    if (theikos_type == 2) godpower(true);
}

///////////////////////////////////////////////////////////////// MISC ////////////////////////////////////////////////////////////////

//halloween alt costume
if (bibical)
{
    if (prev_state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE)
    {
        bibical = false;
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
if (alt_cur == 25) 
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

////////////////////////////////////////////////////////// VALUE STORAGE /////////////////////////////////////////////////////////////////
was_free = free;

//Custom Hitbox Colors System (by @SupersonicNK)
//Put this above all the #defines in your script
prep_hitboxes();

//bar MP consumption on the attack grid
custom_attack_grid();

//this is the anti-cheapie section which is a mix of theikos bar, a few very useful runes for the occasion and the lord's blessing buff
if (!found_cheapie && cur_game_time > got_gameplay_time-1 || found_cheapie && theikos_type == 0) check_cheapie();

//////////////////////////////////////////////////////// WORKSHOP COMPATIBILITIES ///////////////////////////////////////////////////////

//dracula boss dialouge
user_event(6);

//steve death messages / pit codec
user_event(7);


//RC car removing platforms and stuff
if ("kart_inside" in self && kart_inside)
{
    //close_timer = -1;
    //menu_timer = -1;
    //msg_menu = false;
    //plat_pre_sprite = asset_get("empty_sprite");
    //plat_post_sprite = asset_get("empty_sprite");
}

//////////////////////////////////////////////////////////// #DEFINE SECTION ////////////////////////////////////////////////////////////

#define prep_hitboxes
{
    //Applies the hitbox sprites and prepares them to be drawn (with color!)
    with (pHitBox) if (player_id == other)
    {
        if ("col" not in self)
        {
            with (other)
            {
                other.col = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_COLOR);
                if (other.col == 0) other.col = c_red;
                other.shape = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE)
                other.draw_colored = true;

                if (other.type == 1) other.sprite_index = __hb_hd_spr[other.shape];
                else if (get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_MASK) == -1) other.mask_index = __hb_hd_spr[other.shape];
                else other.draw_colored = false;
                    
                other.draw_spr = __hb_draw_spr;
            }
        }
    }
}
#define custom_attack_grid
{
    //looping window for X times
    var window_loop_value;
    window_loop_value = get_window_value(attack, window, AG_WINDOW_LOOP_TIMES);

    //MP mechanic
    var mp_amount;
    var mp_time;
    var mp_type;
    mp_amount = get_window_value(attack, window, AG_WINDOW_MP_CONSUME);
    mp_time = get_window_value(attack, window, AG_WINDOW_MP_CONSUME_TIME);
    mp_type = get_window_value(attack, window, AG_WINDOW_MP_CONSUME_TYPE);

    if (!hitpause || attack == AT_THEIKOS)
    {
        //loop window
        if (get_window_value(attack, window, AG_WINDOW_TYPE) == 9)
        {
            if (window_timer == window_end-1)
            {
                attack_end(attack); //reset hitboxes
                if (window_loops <= window_loop_value) window_timer = 0; //window_timer is -1 so window_timer 0 can spawn hitboxes
            }

            if (window_loop_value > 0)
            {
                if (window_timer == 0) window_loops ++; //at the start of the window

                if (window_loops > window_loop_value)
                {
                    destroy_hitboxes();
                    window += 1;
                    window_timer = 0;
                    window_loops = 0;
                }
            }
        }

        //MP mechanic
        if (mp_amount != 0 && is_attacking && !infinite_mp_mode)
        {
            switch (mp_type)
            {
                case 0:
                    if (window_timer == mp_time) mp_current -= floor(mp_amount);
                    break;
                case 1:
                    if (state_timer % mp_time == 0) mp_current -= floor(mp_amount);
                    break;
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
        state_timer = got_gameplay_time;

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
    var hb_num_total = get_num_hitboxes(attack);
    for (var hb_num = 1; hb_num <= hb_num_total; ++hb_num)
    {
        reset_hitbox_value(attack, hb_num, HG_DAMAGE);
        reset_hitbox_value(attack, hb_num, HG_HITBOX_COLOR);
        reset_hitbox_value(attack, hb_num, HG_VISUAL_EFFECT);
        reset_hitbox_value(attack, hb_num, HG_HIT_SFX);
        reset_hitbox_value(attack, hb_num, HG_HIT_PARTICLE_NUM);

        if (burnbuff_active)
        {
            if ( (attack != AT_JAB || attack == AT_JAB && hb_num == 2) && (attack != AT_USTRONG || attack == AT_USTRONG && hb_num <= 3) &&
            (attack != AT_DSTRONG || attack == AT_DSTRONG && hb_num <= 3)) //half exepctions
            {
                //damage
                if (attack == AT_FSTRONG) set_hitbox_value(attack, hb_num, HG_DAMAGE, 16);
                else set_hitbox_value(attack, hb_num, HG_DAMAGE, floor(get_hitbox_value(attack, hb_num, HG_DAMAGE) * fury_mult));

                set_hitbox_value(attack, hb_num, HG_HITBOX_COLOR, hb_color[3]); //apply fire and change hitbox color

                //effect work
                if (attack == AT_DSTRONG && hb_num == 2) set_hitbox_value(attack, hb_num, HG_VISUAL_EFFECT, fx_fireblow[1]);
                else if (attack == AT_FSTRONG || attack == AT_DSTRONG && hb_num == 3 || attack == AT_FSTRONG_2 && hb_num == 3)
                {
                    set_hitbox_value(attack, hb_num, HG_VISUAL_EFFECT, fx_fireblow[2]);
                }
                else set_hitbox_value(attack, hb_num, HG_VISUAL_EFFECT, fx_fireblow[0]);

                //burning sfx
                if (attack == AT_JAB || attack == AT_UTILT && hb_num == 2 || attack == AT_FAIR && hb_num == 3
                || attack == AT_DAIR && hb_num == 2 || attack == AT_DSTRONG && hb_num == 2)
                {
                    set_hitbox_value(attack, hb_num, HG_HIT_SFX, asset_get("sfx_burnapplied"));
                }
                else if (attack == AT_FSTRONG_2 && hb_num == 3) reset_hitbox_value(attack, hb_num, HG_HIT_SFX);
                else set_hitbox_value(attack, hb_num, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));

                set_hitbox_value(attack, hb_num, HG_HIT_PARTICLE_NUM, 2);
            }
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


#define od_gauge_flash()
{
    if (can_overdrive)
    {
        if (got_gameplay_time % 6 == 0) od_color_flash = !od_color_flash;
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
    var hb_num_total = get_num_hitboxes(attack);
    for (var hb_num = 1; hb_num <= hb_num_total; ++hb_num)
    {
        reset_hitbox_value(attack, hb_num, HG_EXTRA_HITPAUSE);
        
        var ex_pause = 20*enable;
        switch (attack)
        {
            case AT_USTRONG:
                if (hb_num < 5 && !burnbuff_active) set_hitbox_value(attack, hb_num, HG_EXTRA_HITPAUSE, get_hitbox_value(attack, hb_num, HG_EXTRA_HITPAUSE) + ex_pause);
                break;
            case AT_FSTRONG: case AT_FSTRONG_2:
                if (has_rune("C") && !burnbuff_active) set_hitbox_value(attack, hb_num, HG_EXTRA_HITPAUSE, get_hitbox_value(attack, hb_num, HG_EXTRA_HITPAUSE) + ex_pause);
                break;
            case AT_NTHROW: case AT_NSPECIAL_AIR:
                if (hb_num < 2) set_hitbox_value(attack, hb_num, HG_EXTRA_HITPAUSE, get_hitbox_value(attack, hb_num, HG_EXTRA_HITPAUSE) + ex_pause);
                break;
            case 39:
                if (hb_num == 2) set_hitbox_value(attack, hb_num, HG_EXTRA_HITPAUSE, get_hitbox_value(attack, hb_num, HG_EXTRA_HITPAUSE) + ex_pause);
                break;
            case AT_DTHROW: case AT_NSPECIAL_2: case AT_USPECIAL_2: case AT_EXTRA_2: case AT_USTRONG_2:
                set_hitbox_value(attack, hb_num, HG_EXTRA_HITPAUSE, get_hitbox_value(attack, hb_num, HG_EXTRA_HITPAUSE) + ex_pause);
                break;
        }
        ex_pause = 0;
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
        if (theikos_type != 2)
        {
            generate_particles(fx_theikos_aura, x, y-32, 0, depth+1, 11, 11, (random_func(75, 5, true)-2)/4, -1);
            generate_particles(fx_theikos_aura, x, y-40, 0, depth+1, 7, 9, (random_func(75, 5, true)-2)/4, -1.5);
        }

        //only runs once
        if (prev_od_cast != od_cast)
        {
            no_effect_line_color = [97, 45, 2];

            //stat changes
            holyburn_timer_set = holyburn_timer_set * godbuff_mult;
            lightstun_active_set = lightstun_active_set * godbuff_mult;

            glide_stamina_max = has_rune("B") ? 250 : 200;
            mp_gain_rate = 15;
        }

        godstun(enable);
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
                case 25: //helel
                    no_effect_line_color = [52, 52, 52];    
                    break;
                case 26: //theikos
                    no_effect_line_color = [97, 45, 2];
                    break;
            }

            //stat changes
            glide_stamina_max = has_rune("B") ? 150 : 100;
            if (state == PS_GLIDE && glide_stamina > glide_stamina_max) glide_stamina = glide_stamina_max;
            mp_gain_rate = 2 + 5 * has_rune("M");

            holyburn_timer_set = holyburn_timer_set * theikos_mult;
            lightstun_active_set = lightstun_active_set * theikos_mult;
        }

        godstun(enable);
    }
}

#define check_string_for_name(player, string)
{
    return string_count(string, string_lower(get_char_info(player, INFO_STR_NAME)))
}
#define check_cheapie
{
    //i stole this from muno's goku ehe~
    var cheap = false;
    with (oPlayer) if (self != other && "url" in self) switch (url)
    {
    	case "2273636433":
    	case "1870768156":
    	case "1869351026":
    	case "2443363942":
    	case "2159023588":
    	case "1980469422":
    		break;
    	default:
    		if (
    			check_string_for_name(player, "nald") || 
    			check_string_for_name(player, "%") || 
    			check_string_for_name(player, "sand") || 
    			check_string_for_name(player, "psy") || 
    			check_string_for_name(player, "ultra") || 
    			check_string_for_name(player, "god") || 
    			check_string_for_name(player, "boss") || 
    			check_string_for_name(player, "ui ") || 
    			check_string_for_name(player, "ssg") || 
    			check_string_for_name(player, "melee") || 
    			check_string_for_name(player, "accurate")
    			) cheap = true;
    		break;
    }
    found_cheapie = cheap;
    
    if (found_cheapie && !menu_active && theikos_type == 0 && attack_down && special_down) attack = AT_THEIKOS;
}