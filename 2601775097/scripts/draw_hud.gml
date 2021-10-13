//draw_hud

// skill select menu
if("menu_up" in self) //this has to be nested like this blame dan
{
    if (menu_up)
    {
        draw_sprite_ext(sprite_get("hud_menu_bg"), 0, temp_x - 8, temp_y - 128, 2, 2, 0, c_white, 1);

        draw_sprite_ext(sprite_get("skillicons"), 0, temp_x + skill_xpos1, temp_y - skill_ypos1, 2, 2, 0, c_white, 1); //l. dagger
        draw_sprite_ext(sprite_get("skillicons"), 1, temp_x + skill_xpos2, temp_y - skill_ypos1, 2, 2, 0, c_white, 1); //b. fury
        draw_sprite_ext(sprite_get("skillicons"), 2, temp_x + skill_xpos3, temp_y - skill_ypos1, 2, 2, 0, c_white, 1); //f. leap
        draw_sprite_ext(sprite_get("skillicons"), 3, temp_x + skill_xpos4, temp_y - skill_ypos1, 2, 2, 0, c_white, 1); //p. blast
        draw_sprite_ext(sprite_get("skillicons"), 4, temp_x + skill_xpos5, temp_y - skill_ypos1, 2, 2, 0, c_white, 1); //a. blitz
        draw_sprite_ext(sprite_get("skillicons"), 5, temp_x + skill_xpos1, temp_y - skill_ypos2, 2, 2, 0, c_white, 1); //c. burster
        draw_sprite_ext(sprite_get("skillicons"), 6, temp_x + skill_xpos2, temp_y - skill_ypos2, 2, 2, 0, c_white, 1); //p. smash
        draw_sprite_ext(sprite_get("skillicons"), 7, temp_x + skill_xpos3, temp_y - skill_ypos2, 2, 2, 0, c_white, 1); //g. aura
        draw_sprite_ext(sprite_get("skillicons"), 8, temp_x + skill_xpos4, temp_y - skill_ypos2, 2, 2, 0, c_white, 1); //e. fist
        draw_sprite_ext(sprite_get("skillicons"), 9, temp_x + skill_xpos5, temp_y - skill_ypos2, 2, 2, 0, c_white, 1); //l. hookshot

        draw_debug_text(temp_x + 44, temp_y + 16, "Apply");
        draw_debug_text(temp_x + 150, temp_y + 16, "Cancel");

        //what am i selecting currently
        if (cur_select == 0) draw_debug_text(temp_x + 24, temp_y - 86, "Selecting: " + "N-SPECIAL");
        else if (cur_select == 1) draw_debug_text(temp_x + 24, temp_y - 86, "Selecting: " + "F-SPECIAL");
        else if (cur_select == 2) draw_debug_text(temp_x + 24, temp_y - 86, "Selecting: " + "U-SPECIAL");
        else if (cur_select == 3) draw_debug_text(temp_x + 24, temp_y - 86, "Selecting: " + "D-SPECIAL");

        //skill names
        if (skill_cursor_x == skill_xpos1 && skill_cursor_y == skill_ypos1) draw_debug_text(temp_x + 60, temp_y - 6, "Light Dagger");
        if (skill_cursor_x == skill_xpos2 && skill_cursor_y == skill_ypos1) draw_debug_text(temp_x + 60, temp_y - 6, "Burning Fury");
        if (skill_cursor_x == skill_xpos3 && skill_cursor_y == skill_ypos1) draw_debug_text(temp_x + 66, temp_y - 6, "Force Leap");
        if (skill_cursor_x == skill_xpos4 && skill_cursor_y == skill_ypos1) draw_debug_text(temp_x + 60, temp_y - 6, "Photon Blast");
        if (skill_cursor_x == skill_xpos5 && skill_cursor_y == skill_ypos1) draw_debug_text(temp_x + 67, temp_y - 6, "Accel Blitz");
        if (skill_cursor_x == skill_xpos1 && skill_cursor_y == skill_ypos2) draw_debug_text(temp_x + 52, temp_y - 6, "Chasm Burster");
        if (skill_cursor_x == skill_xpos2 && skill_cursor_y == skill_ypos2) draw_debug_text(temp_x + 58, temp_y - 6, "Power Smash");
        if (skill_cursor_x == skill_xpos3 && skill_cursor_y == skill_ypos2) draw_debug_text(temp_x + 66, temp_y - 6, "Guard Aura");
        if (skill_cursor_x == skill_xpos4 && skill_cursor_y == skill_ypos2) draw_debug_text(temp_x + 66, temp_y - 6, "Ember Fist");
        if (skill_cursor_x == skill_xpos5 && skill_cursor_y == skill_ypos2) draw_debug_text(temp_x + 52, temp_y - 6, "Light Hookshot");
    
        select_img = 0; //nspecial selected
        switch (selected_nspec) {
            case 0:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 0, temp_x + skill_xpos1, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos1, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 1:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 1, temp_x + skill_xpos2, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos2, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 2:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 2, temp_x + skill_xpos3, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos3, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 3:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 3, temp_x + skill_xpos4, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos4, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 4:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 4, temp_x + skill_xpos5, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos5, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 5:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 5, temp_x + skill_xpos1, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos1, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
            case 6:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 6, temp_x + skill_xpos2, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos2, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
            case 7:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 7, temp_x + skill_xpos3, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos3, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
            case 8:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 8, temp_x + skill_xpos4, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos4, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
            case 9:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 9, temp_x + skill_xpos5, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos5, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
        }

        select_img ++; //fspecial selected
        switch (selected_fspec) {
            case 0:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 0, temp_x + skill_xpos1, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos1, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 1:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 1, temp_x + skill_xpos2, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos2, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 2:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 2, temp_x + skill_xpos3, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos3, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 3:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 3, temp_x + skill_xpos4, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos4, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 4:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 4, temp_x + skill_xpos5, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos5, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 5:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 5, temp_x + skill_xpos1, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos1, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
            case 6:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 6, temp_x + skill_xpos2, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos2, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
            case 7:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 7, temp_x + skill_xpos3, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos3, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
            case 8:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 8, temp_x + skill_xpos4, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos4, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
            case 9:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 9, temp_x + skill_xpos5, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos5, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
        }

        select_img ++; //uspecial selected
        switch (selected_uspec) {
            case 0:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 0, temp_x + skill_xpos1, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos1, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 1:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 1, temp_x + skill_xpos2, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos2, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 2:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 2, temp_x + skill_xpos3, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos3, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 3:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 3, temp_x + skill_xpos4, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos4, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 4:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 4, temp_x + skill_xpos5, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos5, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 5:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 5, temp_x + skill_xpos1, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos1, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
            case 6:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 6, temp_x + skill_xpos2, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos2, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
            case 7:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 7, temp_x + skill_xpos3, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos3, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
            case 8:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 8, temp_x + skill_xpos4, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos4, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
            case 9:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 9, temp_x + skill_xpos5, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos5, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
        }

        select_img ++; //dspecial selected
        switch (selected_dspec) {
            case 0:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 0, temp_x + skill_xpos1, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos1, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 1:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 1, temp_x + skill_xpos2, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos2, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 2:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 2, temp_x + skill_xpos3, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos3, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 3:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 3, temp_x + skill_xpos4, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos4, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 4:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 4, temp_x + skill_xpos5, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos5, temp_y - skill_ypos1, 2, 2, 0, c_white, 1);
            break;
            case 5:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 5, temp_x + skill_xpos1, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos1, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
            case 6:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 6, temp_x + skill_xpos2, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos2, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
            case 7:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 7, temp_x + skill_xpos3, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos3, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
            case 8:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 8, temp_x + skill_xpos4, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos4, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
            case 9:
                draw_sprite_ext(sprite_get("skillicons_disabled"), 9, temp_x + skill_xpos5, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
                draw_sprite_ext(sprite_get("skillicons_inputs_selection"), select_img, temp_x + skill_xpos5, temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            break;
        }

        draw_sprite_ext(sprite_get("skillselect_cursor"), get_gameplay_time() / 4, temp_x + skill_cursor_x, temp_y - skill_cursor_y, 2, 2, 0, c_white, 1); //cursor display

        if (!training_mode) draw_debug_text(temp_x + 54, temp_y - 128, "Time Left: " + string(floor(menu_countdown/60)+1));
    }
    else if (!menu_up)
    {
        //MP gauge back
        draw_sprite_ext(sprite_get("hud_mp"), 0, temp_x - 24, temp_y - 20, 2, 2, 0, c_white, 1);

        //the actual MP gauge
        if (mp_current > 0 && mp_current < 50) draw_sprite_ext(sprite_get("hud_mp_gauge"), floor(mp_current/1)-1, temp_x + 2, temp_y - 6, 2, 2, 0, gauge_color, 1);
        else if (mp_current == 50) draw_sprite_ext(sprite_get("hud_mp_gauge"), 49, temp_x + 2, temp_y - 6, 2, 2, 0, gauge_color, 1);
        else if (mp_current > 50 && mp_current < 100)
        {
            draw_sprite_ext(sprite_get("hud_mp_gauge"), 49, temp_x + 2, temp_y - 6, 2, 2, 0, gauge_color, 1); //part 1
            draw_sprite_ext(sprite_get("hud_mp_gauge"), floor(mp_current/1)-1, temp_x + 102, temp_y - 6, 2, 2, 0, gauge_color, 1); //part 2
        }
        else if (mp_current >= 100)
        {
            draw_sprite_ext(sprite_get("hud_mp_gauge"), 49, temp_x + 2, temp_y - 6, 2, 2, 0, gauge_color, 1); //part 1
            draw_sprite_ext(sprite_get("hud_mp_gauge"), 49, temp_x + 102, temp_y - 6, 2, 2, 0, gauge_color, 1); //part 2
        }

        //layering gauge
        if (mp_current > 100)
        {
            if (mp_current > 100 && mp_current < 150) draw_sprite_ext(sprite_get("hud_mp_gauge"), floor(mp_current/1)-1, temp_x + 2, temp_y - 6, 2, 2, 0, gauge_EX_color, 1);
            else if (mp_current == 150) draw_sprite_ext(sprite_get("hud_mp_gauge"), 49, temp_x + 2, temp_y - 6, 2, 2, 0, gauge_EX_color, 1);
            else if (mp_current > 150 && mp_current < 200)
            {
                draw_sprite_ext(sprite_get("hud_mp_gauge"), 49, temp_x + 2, temp_y - 6, 2, 2, 0, gauge_EX_color, 1); //part 1
                draw_sprite_ext(sprite_get("hud_mp_gauge"), floor(mp_current/1)-1, temp_x + 102, temp_y - 6, 2, 2, 0, gauge_EX_color, 1); //part 2
            }
            else if (mp_current >= 200)
            {
                draw_sprite_ext(sprite_get("hud_mp_gauge"), 49, temp_x + 2, temp_y - 6, 2, 2, 0, gauge_EX_color, 1); //part 1
                draw_sprite_ext(sprite_get("hud_mp_gauge"), 49, temp_x + 102, temp_y - 6, 2, 2, 0, gauge_EX_color, 1); //part 2
            }
        }

        draw_debug_text(temp_x - 0, temp_y - 20, "MP " + string(floor(mp_current)) + "/100"); // + string(mp_max)

        if (show_player_info) //for any instance that bar shouldn't see his skills and a buncha debug stuff
        {
            //SKILL ICONS - MATCH
            //this section is to show when the skill is able to be used

            //SKILL SLOT POSITIONS: (could be a switch statement?)
            var nspecial = temp_x + 98
            var fspecial = temp_x + 128
            var uspecial = temp_x + 158
            var dspecial = temp_x + 188

            /* 
            THIS IS AN EXAMPLE CODE, IT NEEDS TO BE DONE FOR ALL 10 SKILLS! everything in [] is something that needs to be replaced
            if ([AT_SKILLNAME]) {
                if (mp_current < [skill_cost_to_initiate])  draw_sprite_ext(sprite_get("skillicons_disabled"), [skill number], [slot position X], temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
                else if (mp_current >= [skill_cost_to_initiate])    draw_sprite_ext(sprite_get("skillicons"), [skill number], [slot position X], temp_y - skill_ypos2, 2, 2, 0, c_white, 1);
            }

            NOTE: Splatracer here! I used the same system as above, but for each special separately. This means if you add a skill later, you have to add it 4 times.
            */
            //NSPECIAL HUD SLOT
            switch (selected_nspec) {
                case 0: // [0] light dagger
                    if (mp_current < lightdagger_cost)  draw_sprite_ext(sprite_get("skillicons_disabled"), 0, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= lightdagger_cost)    draw_sprite_ext(sprite_get("skillicons"), 0, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 1: // [1] burning fury
                    if (mp_current < buff_total_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 1, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= buff_total_cost)     draw_sprite_ext(sprite_get("skillicons"), 1, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    if (burningfury_active)
                    {
                        if (mp_current < burningfury_attack_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 1, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                        else if (mp_current >= burningfury_attack_cost)     draw_sprite_ext(sprite_get("skillicons"), 1, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    }
                    break;
                case 2: // [2] force leap
                    if (mp_current < forceleap_activate_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 2, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= forceleap_activate_cost)     draw_sprite_ext(sprite_get("skillicons"), 2, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 3: // [3] photon blast
                    if (mp_current < photonblast_cost)  draw_sprite_ext(sprite_get("skillicons_disabled"), 3, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= photonblast_cost)    draw_sprite_ext(sprite_get("skillicons"), 3, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 4: // [4] accel blitz
                    if (mp_current < accelblitz_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 4, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= accelblitz_cost)     draw_sprite_ext(sprite_get("skillicons"), 4, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 5: // [5] chasm burster
                    if (mp_current < chasmburster_total_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 5, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= chasmburster_total_cost)     draw_sprite_ext(sprite_get("skillicons"), 5, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 6: // [6] power smash
                    if (mp_current < powersmash_total_cost)     draw_sprite_ext(sprite_get("skillicons_disabled"), 6, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= powersmash_total_cost)   draw_sprite_ext(sprite_get("skillicons"), 6, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 7: // [7] guard aura
                    if (mp_current < buff_total_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 7, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= buff_total_cost)     draw_sprite_ext(sprite_get("skillicons"), 7, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    if (guardaura_active)
                    {
                        if (mp_current < guardaura_counter_cost)    draw_sprite_ext(sprite_get("skillicons_disabled"), 7, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                        else if (mp_current >= guardaura_counter_cost)  draw_sprite_ext(sprite_get("skillicons"), 7, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    }
                    if (cool_start)     draw_sprite_ext(sprite_get("skillicons_disabled"), 7, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 8: // [8] ember fist
                    if (mp_current < emberfist_cost)    draw_sprite_ext(sprite_get("skillicons_disabled"), 8, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= emberfist_cost)  draw_sprite_ext(sprite_get("skillicons"), 8, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 9: // [9] light hookshot
                    if (mp_current < lighthookshot_total_cost)  draw_sprite_ext(sprite_get("skillicons_disabled"), 9, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= lighthookshot_total_cost)    draw_sprite_ext(sprite_get("skillicons"), 9, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
            }
            //FSPECIAL HUD SLOT
            switch (selected_fspec) {
                case 0: // [0] light dagger
                    if (mp_current < lightdagger_cost)  draw_sprite_ext(sprite_get("skillicons_disabled"), 0, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= lightdagger_cost)    draw_sprite_ext(sprite_get("skillicons"), 0, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 1: // [1] burning fury
                    if (mp_current < buff_total_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 1, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= buff_total_cost)     draw_sprite_ext(sprite_get("skillicons"), 1, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    if (burningfury_active)
                    {
                        if (mp_current < burningfury_attack_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 1, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                        else if (mp_current >= burningfury_attack_cost)     draw_sprite_ext(sprite_get("skillicons"), 1, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    }
                    break;
                case 2: // [2] force leap
                    if (mp_current < forceleap_activate_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 2, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= forceleap_activate_cost)     draw_sprite_ext(sprite_get("skillicons"), 2, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 3: // [3] photon blast
                    if (mp_current < photonblast_cost)  draw_sprite_ext(sprite_get("skillicons_disabled"), 3, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= photonblast_cost)    draw_sprite_ext(sprite_get("skillicons"), 3, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 4: // [4] accel blitz
                    if (mp_current < accelblitz_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 4, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= accelblitz_cost)     draw_sprite_ext(sprite_get("skillicons"), 4, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 5: // [5] chasm burster
                    if (mp_current < chasmburster_total_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 5, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= chasmburster_total_cost)     draw_sprite_ext(sprite_get("skillicons"), 5, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 6: // [6] power smash
                    if (mp_current < powersmash_total_cost)     draw_sprite_ext(sprite_get("skillicons_disabled"), 6, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= powersmash_total_cost)   draw_sprite_ext(sprite_get("skillicons"), 6, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 7: // [7] guard aura
                    if (mp_current < buff_total_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 7, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= buff_total_cost)     draw_sprite_ext(sprite_get("skillicons"), 7, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    if (guardaura_active)
                    {
                        if (mp_current < guardaura_counter_cost)    draw_sprite_ext(sprite_get("skillicons_disabled"), 7, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                        else if (mp_current >= guardaura_counter_cost)  draw_sprite_ext(sprite_get("skillicons"), 7, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    }
                    if (cool_start)     draw_sprite_ext(sprite_get("skillicons_disabled"), 7, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 8: // [8] ember fist
                    if (mp_current < emberfist_cost)    draw_sprite_ext(sprite_get("skillicons_disabled"), 8, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= emberfist_cost)  draw_sprite_ext(sprite_get("skillicons"), 8, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 9: // [9] light hookshot
                    if (mp_current < lighthookshot_total_cost)  draw_sprite_ext(sprite_get("skillicons_disabled"), 9, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= lighthookshot_total_cost)    draw_sprite_ext(sprite_get("skillicons"), 9, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
            }
            //USPECIAL HUD SLOT
            switch (selected_uspec) {
                case 0: // [0] light dagger
                    if (mp_current < lightdagger_cost)  draw_sprite_ext(sprite_get("skillicons_disabled"), 0, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= lightdagger_cost)    draw_sprite_ext(sprite_get("skillicons"), 0, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 1: // [1] burning fury
                    if (mp_current < buff_total_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 1, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= buff_total_cost)     draw_sprite_ext(sprite_get("skillicons"), 1, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    if (burningfury_active)
                    {
                    if (mp_current < burningfury_attack_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 1, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= burningfury_attack_cost)     draw_sprite_ext(sprite_get("skillicons"), 1, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    }
                    break;
                case 2: // [2] force leap
                    if (mp_current < forceleap_activate_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 2, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= forceleap_activate_cost)     draw_sprite_ext(sprite_get("skillicons"), 2, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 3: // [3] photon blast
                    if (mp_current < photonblast_cost)  draw_sprite_ext(sprite_get("skillicons_disabled"), 3, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= photonblast_cost)    draw_sprite_ext(sprite_get("skillicons"), 3, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 4: // [4] accel blitz
                    if (mp_current < accelblitz_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 4, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= accelblitz_cost)     draw_sprite_ext(sprite_get("skillicons"), 4, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 5: // [5] chasm burster
                    if (mp_current < chasmburster_total_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 5, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= chasmburster_total_cost)     draw_sprite_ext(sprite_get("skillicons"), 5, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 6: // [6] power smash
                    if (mp_current < powersmash_total_cost)     draw_sprite_ext(sprite_get("skillicons_disabled"), 6, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= powersmash_total_cost)   draw_sprite_ext(sprite_get("skillicons"), 6, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 7: // [7] guard aura
                    if (mp_current < buff_total_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 7, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= buff_total_cost)     draw_sprite_ext(sprite_get("skillicons"), 7, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    if (guardaura_active)
                    {
                        if (mp_current < guardaura_counter_cost)    draw_sprite_ext(sprite_get("skillicons_disabled"), 7, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                        else if (mp_current >= guardaura_counter_cost)  draw_sprite_ext(sprite_get("skillicons"), 7, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    }
                    if (cool_start)     draw_sprite_ext(sprite_get("skillicons_disabled"), 7, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 8: // [8] ember fist
                    if (mp_current < emberfist_cost)    draw_sprite_ext(sprite_get("skillicons_disabled"), 8, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= emberfist_cost)  draw_sprite_ext(sprite_get("skillicons"), 8, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 9: // [9] light hookshot
                    if (mp_current < lighthookshot_total_cost)  draw_sprite_ext(sprite_get("skillicons_disabled"), 9, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= lighthookshot_total_cost)    draw_sprite_ext(sprite_get("skillicons"), 9, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
            }
            //DSPECIAL HUD SLOT
            switch (selected_dspec) {
                case 0: // [0] light dagger
                    if (mp_current < lightdagger_cost)  draw_sprite_ext(sprite_get("skillicons_disabled"), 0, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= lightdagger_cost)    draw_sprite_ext(sprite_get("skillicons"), 0, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 1: // [1] burning fury
                    if (mp_current < buff_total_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 1, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= buff_total_cost)     draw_sprite_ext(sprite_get("skillicons"), 1, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    if (burningfury_active)
                    {
                        if (mp_current < burningfury_attack_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 1, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                        else if (mp_current >= burningfury_attack_cost)     draw_sprite_ext(sprite_get("skillicons"), 1, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    }
                    break;
                case 2: // [2] force leap
                    if (mp_current < forceleap_activate_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 2, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= forceleap_activate_cost)     draw_sprite_ext(sprite_get("skillicons"), 2, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 3: // [3] photon blast
                    if (mp_current < photonblast_cost)  draw_sprite_ext(sprite_get("skillicons_disabled"), 3, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= photonblast_cost)    draw_sprite_ext(sprite_get("skillicons"), 3, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 4: // [4] accel blitz
                    if (mp_current < accelblitz_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 4, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= accelblitz_cost)     draw_sprite_ext(sprite_get("skillicons"), 4, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 5: // [5] chasm burster
                    if (mp_current < chasmburster_total_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 5, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= chasmburster_total_cost)     draw_sprite_ext(sprite_get("skillicons"), 5, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 6: // [6] power smash
                    if (mp_current < powersmash_total_cost)     draw_sprite_ext(sprite_get("skillicons_disabled"), 6, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= powersmash_total_cost)   draw_sprite_ext(sprite_get("skillicons"), 6, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 7: // [7] guard aura
                    if (mp_current < buff_total_cost)   draw_sprite_ext(sprite_get("skillicons_disabled"), 7, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= buff_total_cost)     draw_sprite_ext(sprite_get("skillicons"), 7, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    if (guardaura_active)
                    {
                        if (mp_current < guardaura_counter_cost)    draw_sprite_ext(sprite_get("skillicons_disabled"), 7, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                        else if (mp_current >= guardaura_counter_cost)  draw_sprite_ext(sprite_get("skillicons"), 7, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    }
                    if (cool_start)     draw_sprite_ext(sprite_get("skillicons_disabled"), 7, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 8: // [8] ember fist
                    if (mp_current < emberfist_cost)    draw_sprite_ext(sprite_get("skillicons_disabled"), 8, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= emberfist_cost)  draw_sprite_ext(sprite_get("skillicons"), 8, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
                case 9: // [9] light hookshot
                    if (mp_current < lighthookshot_total_cost)  draw_sprite_ext(sprite_get("skillicons_disabled"), 9, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= lighthookshot_total_cost)    draw_sprite_ext(sprite_get("skillicons"), 9, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    break;
            }

            //this just draws the inputs for each skill
            draw_sprite_ext(sprite_get("skillicons_inputs"), 0, temp_x + 96, temp_y - 20, 2, 2, 0, c_white, 1);
            // training mode text
            if (training_mode)
            {
                if (msg_menu) draw_debug_text(temp_x + 14, temp_y - 56, "UP + TAUNT = Skill Select"); //y: -72
                //if (msg_phone) draw_debug_text(temp_x + 4, temp_y - 56, "DOWN + TAUNT = Munophone");
            }
        }

        //OD gauge
        if (has_rune("O"))
        {
            draw_sprite_ext(sprite_get("hud_od"), 0, temp_x - 18, temp_y - 14, 2, 2, 0, c_white, 1);

            if (has_rune("L") && godpower) rectDraw(temp_x - 4, temp_y + 6, temp_x + ceil((od_current)*1.96)-5, temp_y + 3, gauge_OD_color)
            else rectDraw(temp_x - 4, temp_y + 6, temp_x + ceil(od_current*1.96)-5, temp_y + 3, gauge_OD_color)

            if (godpower || od_current >= od_max) draw_sprite_ext(sprite_get("hud_od_star"), 0, temp_x + 194, temp_y - 10, 2, 2, 0, gauge_OD_color, 1);
        }
        else if ("fs_char_initialized" in self && fs_char_initialized && !has_rune("O"))
        {
            draw_sprite_ext(sprite_get("hud_fs"), 0, temp_x - 16, temp_y - 18, 2, 2, 0, c_white, 1);
            
            rectDraw(temp_x + 2, temp_y + 6, temp_x + ceil((fs_charge/2)*1.96)+1, temp_y + 3, charge_color);

            if (fs_charge >= 200) draw_sprite_ext(sprite_get("hud_fs_ball"), 0, temp_x + 202, temp_y - 18, 2, 2, 0, charge_color, 1);
        }
    }
}

//munophone
muno_event_type = 5;
user_event(14);

#define rectDraw(x1, y1, x2, y2, color) {
    draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);

    //according to the positive axis
    //x1 / y1 = top left
    //x2 / y2 = bottom right
}