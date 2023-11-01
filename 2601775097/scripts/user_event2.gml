//user_event2

//special thanks to robot for helping me out on the selection code!
switch (skill_script_type)
{
    case 0: //init
        skill = [0]; //this array checks all the attacks
        a = 0; //array start

        //skill setup
        AT_SKILL0  = set_skill("Light Dagger", 0, 0, 0, AT_NTHROW, AT_NSPECIAL_AIR, 5, 5, 5);
        AT_SKILL1  = set_skill("Burning Fury", 1, 1, 0, AT_FTHROW, AT_FSPECIAL_AIR, 10, 10, 50);
        AT_SKILL2  = set_skill("Force Leap", 2, 2, 0, AT_UTHROW, -1, 10, 10, 10);
        AT_SKILL3  = set_skill("Photon Blast", 3, 3, 0, AT_DTHROW, -1, 20, 10, 40); //40, 0

        AT_SKILL4  = set_skill("Flashbang", 4, 0, 1, AT_EXTRA_4, -1, 0, 10, 10);
        AT_SKILL5  = set_skill("Power Smash", 5, 1, 1, AT_FSPECIAL_2, -1, 5, 25, 30);
        AT_SKILL6  = set_skill("Accel Blitz", 6, 2, 1, AT_NSPECIAL_2, -1, 10, 0, 10);
        AT_SKILL7  = set_skill("Polaris", 7, 3, 1, AT_USPECIAL_2, -1, 30, 0, 50);

        AT_SKILL8  = set_skill("Ember Fist", 8, 0, 2, AT_DSPECIAL_2, -1, 20, 0, 20);
        AT_SKILL9  = set_skill("Light Hookshot", 9, 1, 2, AT_EXTRA_2, -1, 5, 15, 20);
        AT_SKILL10 = set_skill("Searing Descent", 10, 2, 2, AT_EXTRA_3, -1, 10, 10, 10);
        AT_SKILL11 = set_skill("Chasm Burster", 11, 3, 2, AT_EXTRA_1, -1, 5, 25, 30);

        menu_active = false;                //whenever the menu is active, this is true
        menu_type = 0;                      //0 = CSS | 1 = practice mode | 2 = skill info mode
        menu_active_time = 0;

        menu_close_delay_reset = 20;        //when closing the menu it takes 20 frames
        menu_close_delay = menu_close_delay_reset;

        //selected skills
        cur_skills = [0, 1, 2, 3];          //sets the current skills to use (the loading skills code is on css_init.gml [line 91] and init.gml [line 423])
        prev_skills = [0, 1, 2, 3];         //sets the previous selected skills

        cur_skill_hover = 0;                //currently hovered skill
        prev_skill_hover = 0;               //previous hovered skill (used for CSS only)
        
        cur_select = 0;                     //-1 = cancel | 0-3 = specials | 4 = overwrite prev selection with new one
        menu_dir = 0;                       //0 = nothing | 1 = up | 2 = right | 3 = down | 4 = left | -1 = jump | -2 = attack/special

        menu_cursor_speed = 0.2;            //animation speed

        menu_x = x + 6;
        menu_y = y + 130; //y + 130 (embed) | y - 48 (above)
        break;
    case 1: //update
        if (menu_active)
        {
            if (instance_exists(oPlayer)) attack_invince = true;

            menu_active_time ++;
            if (menu_active_time == 0)
            {
                cur_select = 0;
                cur_skill_hover = (menu_type == 0) ? -1 : 0;
                prev_skill_hover = cur_skill_hover;
            }

            switch (menu_type)
            {
                case 0: //CSS menu
                    menu_controls(true);
                    
                    switch (menu_dir)
                    {
                        case -1: //confirm selection
                            if (cur_skill_hover > -1)
                            {
                                cur_skills[cur_select] = cur_skill_hover;
                                sound_play(asset_get("mfx_confirm"));
                                
                                for (var i = 0; i < cur_select; i++) //prevent skill select from selectig skills that were already selected
                                {
                                    if (cur_skills[i] == cur_skill_hover)
                                    {
                                        sound_stop(asset_get("mfx_confirm"));
                                        sound_play(asset_get("mfx_tut_fail"));
                                        cur_select --;
                                    }
                                }
                                cur_select ++;
                            }
                            break;
                        case -2: //cancel select
                            sound_play(asset_get("mfx_back"));
                            cur_select --;
                            break;
                    }
                    break;
                case 1: case 2: //practice / info mode
                    if ("old_skills" in self && old_skills != cur_skills) cur_skills = old_skills; //if skills were swapped, swap them back

                    //picks skills
                    switch (menu_dir)
                    {
                        case 1: //up
                            if (cur_skill_hover - 4 >= 0) cur_skill_hover -= 4;
                            sound_play(asset_get("mfx_move_cursor"));
                            break;
                        case 2: //right
                            if (cur_skill_hover + 1 <= 4 *skill[cur_skill_hover].skill_pos_y + 3) cur_skill_hover += 1;
                            sound_play(asset_get("mfx_move_cursor"));
                            break;
                        case 3: //down
                            if (cur_skill_hover + 4 <= 11) cur_skill_hover += 4;
                            sound_play(asset_get("mfx_move_cursor"));
                            break;
                        case 4: //left
                            if (cur_skill_hover - 1 >= 4 * skill[cur_skill_hover].skill_pos_y) cur_skill_hover -= 1;;
                            sound_play(asset_get("mfx_move_cursor"));
                            break;
                        case -1: //confirm selection
                            if (menu_type == 1)
                            {
                                cur_skills[cur_select] = cur_skill_hover;
                                sound_play(asset_get("mfx_confirm"));
                                
                                for (var i = 0; i < cur_select; i++) //prevent skill select from selectig skills that were already selected
                                {
                                    if (cur_skills[i] == cur_skill_hover)
                                    {
                                        sound_stop(asset_get("mfx_confirm"));
                                        sound_play(asset_get("mfx_tut_fail"));
                                        cur_select --;
                                    }
                                }
                                cur_select ++;
                            }
                            break;
                        case -2: //cancel select / go back to skill select
                            if (menu_type == 1)
                            {
                                sound_play(asset_get("mfx_back"));
                                cur_select --;
                            }
                            else
                            {
                                sound_play(asset_get("mfx_back"));
                                menu_type = 1;
                            }
                            break;
                        case -3: //go to skill info mode / allow bar to move with skill descriptions
                            if (menu_type == 1)
                            {
                                menu_type = 2;
                                sound_play(asset_get("mfx_confirm"));
                                menu_dir = 0;
                            }
                            else
                            {
                                //cur_skill_hover needs to be equiped (based on the current selection)
                                var swap_skill = array_find_index(cur_skills, cur_skill_hover);
                                old_skills = array_clone(cur_skills);

                                if (swap_skill == -1) //if skill isn't equipped, add it to the current selection slot
                                {
                                    cur_skills[cur_select] = cur_skill_hover;
                                }
                                else //if it does exist already, swap it with the new selection
                                {
                                    var temp_val = cur_skills[cur_select]; //store one of the two targets, doesn't matter which one
                                    cur_skills[cur_select] = cur_skills[swap_skill]; //replace *the target that you previously stored*
                                    cur_skills[swap_skill] = temp_val; //replace the other target with the stored target.
                                }


                                //gives bar the MP to use the skill too
                                if (mp_current < skill[cur_skill_hover].mp_use_cost) mp_current = skill[cur_skill_hover].mp_use_cost;
                                menu_active = false;
                                menu_controls(false);
                                bar_pause(false);
                                sound_play(asset_get("mfx_option"));
                            }
                            break;
                    }

                    if (menu_type == 2 && menu_dir != -2) menu_controls(true); //if we aren't cancelling the selection on info mode allow menu controls
                    break;
            }

            if (menu_type < 2) //skill storing + logic that doesn't apply to info mode
            {
                if (cur_select > -1 && cur_select < 4)
                {
                    bar_pause(true);
                    menu_controls(true);
                }
                else
                {
                    menu_controls(false); //disable the menu controls
                    if (instance_exists(oPlayer)) state_timer ++; //this animates the spawn state

                    menu_close_delay --;

                    //skill slots saving
                    if (menu_close_delay == menu_close_delay_reset-1) update_sync_var();

                    if (menu_close_delay == 0)
                    {
                        bar_pause(false);
                        menu_active = false;
                        cur_skill_hover = 0;
                        menu_close_delay = menu_close_delay_reset;
                    }
                }
            }
        }
        exit;
    case 2: //draw
        //background
        draw_sprite_ext(sprite_get("hud_menu"), menu_type == 0, menu_x - 8.5, menu_y - 128, 2, 2, 0, c_white, 1);

        //buttons
        if (menu_type != 0) draw_sprite_ext(sprite_get("hud_menu_buttons"), 0, menu_x - 8, menu_y + 8, 2, 2, 0, c_white, 1);
        else draw_sprite_ext(sprite_get("hud_menu_buttons"), 1, menu_x, menu_y - 152, 2, 2, 0, c_white, 1);

        //practice text
        if (menu_type == 1)
        {
            //writes the current selection
            var select_text = [
                "Skill Select Cancelled",
                "Selecting: N-SPECIAL",
                "Selecting: F-SPECIAL",
                "Selecting: U-SPECIAL",
                "Selecting: D-SPECIAL",
                "Selection Complete"];
            textDraw(menu_x + 108, menu_y - 100, string(select_text[cur_select+1]), c_white, "fName", fa_center, false, 1);
        }

        //skill icons
        for (var i = 0; i <= 3; ++i)
        {
            for (var j = i; j <= i + 8; j += 4)
            {
                cur_skill_spr = sprite_get(cur_select == -1 ? "hud_skills_disabled" : "hud_skills"); //Default to shiny and clean.

                var input_spotted = false;

                for (var s = 0; s < cur_select; s++) //only loop through *previously selected* skill slots
                {
                    if (skill[cur_skills[s]].skill_id == skill[j].skill_id)
                    {
                        cur_skill_spr = sprite_get("hud_skills_disabled"); //disabled if selected on a previous slot.
                        input_spotted = true;
                        break; //continuing through this loop is unnecessary, so break.
                    }
                }

                draw_sprite_ext(
                    cur_skill_spr,
                    skill[j].skill_id,
                    menu_x + i * 38 + 38 + ((menu_type == 0) * -6),
                    menu_y + floor(j / 4) * 32 - 84,
                    2, 2, 0, c_white, 1
                );

                //input icons
                if (input_spotted) draw_sprite_part_ext(
                    sprite_get("hud_skills_inputs"),
                    0,
                    s * 15,
                    0,
                    15,
                    8,
                    menu_x + i * 38 + 38 + ((menu_type == 0) * -6) - 1,
                    menu_y + floor(j / 4) * 32 - 66,
                    2, 2, c_white, 1
                );
            }
        }

        //cursor
        if (cur_select > -1 && cur_select < 4 && cur_skill_hover > -1)
        {
            draw_sprite_ext(
                sprite_get("hud_menu_cursor"),
                menu_active_time * menu_cursor_speed,
                menu_x + skill[cur_skill_hover].skill_pos_x * 38 + 38 + ((menu_type == 0) * -6),
                menu_y + skill[cur_skill_hover].skill_pos_y * 32 - 84,
                2, 2, 0, c_white, 1
            );

            /*
            if (menu_type == 0) //skill name
            {
                textDraw(
                    floor(get_instance_x(cursor_id)) + (get_instance_x(cursor_id) >= x + 145 ? -8 : 32),
                    floor(get_instance_y(cursor_id)) + (get_instance_y(cursor_id) >= 400 ? -16 : 48),
                    string(skill[cur_skill_hover].skill_name),
                    c_white,
                    "fName",
                    fa_center,
                    true
                );
            }
            */
        }
        break;
}



//////////////////////////////////////////////////////////// #DEFINE SECTION ////////////////////////////////////////////////////////////

//checks the skills themselves
#define set_skill(name, id, slot_x, slot_y, atk, air_atk, cost, cost_ex, cost_min)
{
    //  name            = the name of the skill in question
    //  id              = the sprite to display from the icon strip on the UI above the MP gauge (0-11)
    //  slot_x          = which skill slot is it for (0-3)
    //  slot_y          = which skill is it between the 3 choices (0-2)
    //  atk             = the ground attack index to use
    //  air_atk         = the air attack index to use (-1 makes it use the same one as the ground version)
    //  cost            = initial cost when activating the skill (for flashbang it's 0)
    //  cost_ex         = secoundary skill cost like when light hookshot is fired or bar lands with power smash
    //  cost_min        = what move_cooldown will see to check if we have enough MP to use the skill in the firs place
    //  cost_min2       = specific for some very certain moves if they need another cooldown limiter
    
    skill[a] = {
        skill_name: name,
        skill_id: id,
        skill_pos_x: slot_x,
        skill_pos_y: slot_y,
        skill_attack: atk,
        skill_attack_air: air_atk,
        mp_cost1: cost,
        mp_cost2: cost_ex,
        mp_use_cost: cost_min,
    };
    
    a ++;
    return a-1;
    
    //explanations
    /*
        //"name"/"skill_name" i don't REALLY need but i guess it's nice to have
        //generally, it's based off muno's steve items
        //on his items these names come up on nspec's tables

        //draw_hud.gml - rethink this - it will only display one icon at a certain spot
        //  draw_sprite_ext(hud_skills, skill_id, temp_x + skill_pos_x * 30 + 98, temp_y - 40, 2, 2, 0, c_white, 1);
        //  hud_skills = sprite_get("hud_skills"); //this will also use the disabled skill icons, it swiches around, will need testing

        //set_attack.gml
        //  if (specialnums[0] == 0) attack = free ? skill_attack : skill_attack_air;
        //  if (skill_attack_air == -1) skill_attack_air = skill_attack;

        //attack_update.gml
        //  if (window_timer == 1 && window == 2) mp_current -= mp_cost1; //initial cost
        //  if (window_timer == 1 && window == 5) mp_current -= mp_cost2; //extra cost

        //update.gml
        //  move_cooldown[skill name] = 1 + ceil(mp_use_cost - mp_current);
    */
}
#define bar_pause(enable)
{
    if (menu_type > 0)
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

            burnbuff_active = false;
            if (array_length(polaris_shot_ids) > 0)
            {
                var i = 0;
                repeat (polaris_shots_left)
                {
                    if (instance_exists(polaris_shot_ids[i]))
                    {
                        spawn_hit_fx(polaris_shot_ids[i].x, polaris_shot_ids[i].y, fx_skill7_afterimage);
                        polaris_shot_ids[i].length = 0;
                    }
                    i ++;
                }
            }
            lightbuff_active = false;
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
    else suppress_cursor = enable;
}
#define menu_controls(enable)
{
    //menu controls
    //0 = nothing | 1 = up | 2 = right | 3 = down | 4 = left | -1 = set | -2 = back | -3 = info
    if (enable)
    {
        if (menu_dir != 0) menu_dir = 0; //this will always force the input back to 0, so it's active for 1 frame

        if (menu_type != 0) //practice / info mode
        {
            if (up_pressed) menu_dir = 1;
            if (right_pressed) menu_dir = 2;
            if (down_pressed) menu_dir = 3;
            if (left_pressed) menu_dir = 4;

            if (attack_pressed && attack_counter == 0) menu_dir = -2;
            if (jump_pressed && jump_counter == 0) menu_dir = -1;
            if (special_pressed && special_counter == 0) menu_dir = -3;
        }
        else //CSS
        {
            //button stuff
            var cur_x = get_instance_x(cursor_id);
            var cur_y = get_instance_y(cursor_id);

            //not hovering on skill select icons will deselect skill
            if (!point_in_rect(cur_x, cur_y, skill_pos[0][0], skill_pos[3][1], skill_pos[3][2], skill_pos[11][3])) cur_skill_hover = -1;
            else
            {
                for (var i = 0; i <= 3; ++i) for (var j = i; j <= i + 8; j += 4)
                {
                    if (point_in_rect(cur_x, cur_y, skill_pos[j][0], skill_pos[j][1], skill_pos[j][2], skill_pos[j][3]))
                    {
                        cur_skill_hover = j;
                        break;
                    }
                }
            }

            //hover sound
            if (cur_skill_hover != prev_skill_hover && cur_skill_hover > -1)
            {
                sound_play(asset_get("mfx_move_cursor"));
                prev_skill_hover = cur_skill_hover;
            }


            if (menu_b_pressed) menu_dir = -2;
            if (menu_a_pressed) menu_dir = -1;
        }
    }
    else menu_dir = 0;
}
//stores button positions for CSS skill select
#define point_in_rect (px, py, x1, y1, x2, y2)
{
    return
        px == clamp(px, min(x1,x2), max(x1,x2)) && 
        py == clamp(py, min(y1,y2), max(y1,y2));
}
#define textDraw
{
    //textDraw(x, y, string, color, font, align, outline, alpha)
    var x = argument[0], y = argument[1], string = argument[2];
    var color = argument_count > 3 ? argument[3] : c_white;
    var font = argument_count > 4 ? argument[4] : "fname";
    var align = argument_count > 5 ? argument[5] : fa_center;
    var outline = argument_count > 6 ? argument[6] : false;
    var alpha = argument_count > 7 ? argument[7] : 1;

    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if (outline)
    {
        for (var i_x = -1; i_x < 2; ++i_x) for (var i_y = -1; i_y < 2; ++i_y)
        {
            draw_text_color(x + i_x * 2, y + i_y * 2, string, c_black, c_black, c_black, c_black, alpha);
        }
    }
    if (alpha != 1) alpha = alpha;

    draw_text_color(x, y, string, color, color, color, color, alpha);
}
#define update_sync_var()
{
    var player = (room == 114) ? 0 : self.player; //online css player is 0, this will sync the player 0 with the actual player slot
    //room 114 is the online CSS room btw

    for (var i = 0; i <= 3; ++i)
    {
        //only save skills if we actually reached the proper cur_select
        if (cur_select == 4) prev_skills[i] = cur_skills[i]; //save new set
        else if (cur_select == -1) cur_skills[i] = prev_skills[i]; //go back to previous set

        var old_sync_var = get_synced_var(player);                                  //the synced var before updating
        var zeroed_element = old_sync_var & ~(0xf << (i * 4))                       //i forgor but it has something to do with shifting the bits
        var new_sync_var = zeroed_element | ((cur_skills[i] & 0xf) << (4 * i));     //shift bits again for the new synced var
        set_synced_var(player, new_sync_var);                                       //update synced var
        //print("synced var = " + string(get_synced_var(player)) + ", old_sync_var = " + string(old_sync_var) + ", zeroed_element = " + string(zeroed_element) + ", new_sync_var = " + string(new_sync_var));
    }
}