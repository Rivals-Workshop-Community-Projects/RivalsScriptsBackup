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
        AT_SKILL3  = set_skill("Photon Blast", 3, 3, 0, AT_DTHROW, -1, 40, 0, 40);

        AT_SKILL4  = set_skill("Flashbang", 4, 0, 1, 39, -1, 0, 10, 10);
        AT_SKILL5  = set_skill("Power Smash", 5, 1, 1, AT_FSPECIAL_2, -1, 5, 25, 30);
        AT_SKILL6  = set_skill("Accel Blitz", 6, 2, 1, AT_NSPECIAL_2, -1, 10, 0, 10);
        AT_SKILL7  = set_skill("Polaris", 7, 3, 1, AT_USPECIAL_2, -1, 10, 0, 50);

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
        cur_skills = [0, 1, 2, 3];          //sets the current skills to use
        if (get_synced_var(player) != 0) for (var i = 0; i <= 3; i++) cur_skills[i] = (get_synced_var(player) >> (i * 4)) & 0xf;
        prev_skills = [0, 1, 2, 3];         //sets the previous selected skills
        cur_select = 0;                     //-1 = cancel | 0-3 = specials | 4 = overwrite prev selection with new one
        menu_dir = 0;                       //0 = nothing | 1 = up | 2 = right | 3 = down | 4 = left | -1 = jump | -2 = attack/special

        menu_cursor_speed = 0.2;            //animation speed

        menu_x = x + 6;
        menu_y = y + 130; //y + 130 (embed) | y - 48 (above)

        if (menu_type == 0) //css menu has different inputs
        {
            jump_pressed = menu_a_pressed;
            attack_pressed = menu_b_pressed;
            special_pressed = menu_y_pressed;
        }
        break;
    case 1: //update
        if (menu_active)
        {
            if (instance_exists(oPlayer)) attack_invince = true;

            menu_active_time ++;
            if (menu_active_time == 0) cur_select = 0;

            if (menu_type < 2)
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
                    if (menu_close_delay == menu_close_delay_reset-1)
                    {
                        if (cur_select >= 4) update_sync_var();
                        else if (cur_select <= -1) for (var i = 0; i <= 3; ++i) cur_skills[i] = prev_skills[i]; //revert changes
                    }

                    if (menu_close_delay == 0)
                    {
                        bar_pause(false);
                        menu_active = false;
                        cur_skill_info = 0;
                        menu_close_delay = menu_close_delay_reset;
                    }
                }

                //picks skills
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
                        if (menu_type == 1)
                        {
                            menu_type = 2;
                            sound_play(asset_get("mfx_confirm"));
                        }
                        menu_dir = 0;
                        break;
                }
            }
            else
            {
                if (menu_dir != -2) menu_controls(true);

                //hover over skills on info mode
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
                        menu_type = 1;
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
        exit;
    case 2: //draw
        //background
        if (menu_type != 0) draw_sprite_ext(sprite_get("hud_menu"), 0, menu_x - 8.5, menu_y - 128, 2, 2, 0, c_white, 1);
        if (menu_type != 0) draw_sprite_ext(sprite_get("hud_menu_buttons"), menu_type == 2, menu_x - 8, menu_y + 8, 2, 2, 0, c_white, 1);
        draw_sprite_ext(
            sprite_get("hud_menu_movement"),
            menu_type == 2,
            (menu_type != 0) ? menu_x + 2 : menu_x + 8,
            (menu_type != 0) ? menu_y - 84 : menu_y - 86,
            2,
            2,
            0,
            c_white,
            1
        );

        //skill icons
        for (var skill_slot = 0; skill_slot <= 3; ++skill_slot)
        {
            for (var skill_count = skill_slot; skill_count <= skill_slot + 8; skill_count += 4)
            {
                if (cur_select <= skill[skill_count].skill_pos_x && cur_select != -1
                || skill[cur_skills[skill_slot]].skill_id == skill[skill_count].skill_id)
                {
                    current_skill_sprite = sprite_get("hud_skills");
                }
                else current_skill_sprite = sprite_get("hud_skills_disabled");

                draw_sprite_ext(
                    current_skill_sprite,
                    skill[skill_count].skill_id,
                    menu_x + skill[skill_count].skill_pos_x * 38 + 38 + ((menu_type == 0) * 6),
                    menu_y + skill[skill_count].skill_pos_y * 32 - 84,
                    2, 2, 0, c_white, 1
                );
            }
        }

        if (menu_type != 2)
        {
            if (menu_type == 1)
            {
                //writes the current selection
                var select_text = ["Skill Select Cancelled", "Selecting: N-SPECIAL", "Selecting: F-SPECIAL", "Selecting: U-SPECIAL", "Selecting: D-SPECIAL", "Selection Complete"];
                textDraw(menu_x + 108, menu_y - 100, string(select_text[cur_select+1]), c_white, "fName", fa_center, false, 1);
            }
            else draw_sprite_ext(sprite_get("hud_menu"), 1, menu_x - 8.5, menu_y - 128, 2, 2, 0, c_white, 1);

            //cursor
            if (cur_select > -1 && cur_select < 4)
            {
                draw_sprite_ext(
                    sprite_get("hud_menu_cursor"),
                    menu_active_time * menu_cursor_speed,
                    menu_x + (38 * (cur_select + 1) + (menu_type == 0) * 6),
                    menu_y - 84,
                    2, 2, 0, c_white, 1);
            }
            
            //input stuff
            if (menu_type == 0)
            {
                //i hate draw order
                for (var i = 0; i <= 3; ++i)
                {
                    draw_sprite_part_ext(
                        sprite_get("hud_skills_inputs"),
                        0,
                        i * 15,
                        0,
                        15,
                        8,
                        menu_x + i * 38 + 38 + ((menu_type == 0) * 4),
                        menu_y + 6,
                        2,
                        2,
                        c_white,
                        1
                    );
                }

                //jump to cancel button
                draw_sprite_stretched_ext(sprite_get("white_pixel"), 0, menu_x + 70, menu_y - 144 , 80, 24, c_black, 1);
                draw_sprite_part_ext(sprite_get("hud_menu_buttons"), 0, 36, 3, 40, 12, menu_x + 70, menu_y - 144, 2, 2, c_white, 1);
            }
        }
        break;
}

//current issues:
//  - add a 20 frame delay between the menu disabling
//  - bar stays standing in spawn state after using the skill select in practice mode
//  - info mode doesn't function yet


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
    //0 = nothing | 1 = up | 2 = right | 3 = down | 4 = left | -1 = jump | -2 = attack/special
    if (enable)
    {
        if (menu_dir != 0) menu_dir = 0; //this will always force the input back to 0, so it's active for 1 frame

        if (up_pressed) menu_dir = 1;
        if (right_pressed) menu_dir = 2;
        if (down_pressed) menu_dir = 3;
        if (left_pressed) menu_dir = 4;
        if (jump_pressed && jump_counter == 0 || menu_type == 0 && menu_a_pressed) menu_dir = -1;
        if (special_pressed && special_counter == 0) menu_dir = -2;
    }
    else menu_dir = 0;
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
    for (var i = 0; i <= 3; ++i)
    {
        prev_skills[i] = cur_skills[i]; //save skills

        var old_sync_var = get_synced_var(player);                                  //the synced var before updating
        var zeroed_element = old_sync_var & ~(0xf << (i * 4))                       //i forgor but it has something to do with shifting the bits
        var new_sync_var = zeroed_element | ((cur_skills[i] & 0xf) << (4 * i));     //shift bits again for the new synced var
        set_synced_var(player, new_sync_var);                                       //update synced var
        //print("synced var = " + string(get_synced_var(player)) + ", old_sync_var = " + string(old_sync_var) + ", zeroed_element = " + string(zeroed_element) + ", new_sync_var = " + string(new_sync_var));
    }
}