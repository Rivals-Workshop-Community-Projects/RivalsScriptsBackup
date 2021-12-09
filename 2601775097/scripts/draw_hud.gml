//draw_hud

// skill select menu
if !("menu_open" in self) exit;

if (menu_open && (!is_AI || is_AI && AI_vs))
{
    //The Menu(tm)
    if(menu_timer <= 120){
        draw_sprite_ext(hud_menu, 0, temp_x - 8, temp_y - 128, 2, 2, 0, c_white, 1);

        if (menu_armor_time >= 0 && active_col >= 0)
        {
            var timer_x_offset = temp_x + 36;
            draw_debug_text(timer_x_offset, temp_y - 140, "Invince Time = " + string(menu_armor_time/60));
            if (menu_armor_time % 60 == 0) draw_debug_text(timer_x_offset + 118, temp_y - 140, ".00"); //yeah. i'm drawing it seperately.
        }

        var menuy = -124;
        var i;
        var k = 0;
        for(var menux = 38; menux <= 178; menux += 38){
            menuy = -130;
            switch (menux)
            {
                case 38:
                    i = 0;
                    break;
                case 76:
                    i = 1;
                    break;
                case 114:
                    i = 2;
                    break;
                case 152:
                    i = 3;
                    break;
            }
            for (var j = 0; j < 3; j ++)
            {
                if (specs_chosen[i, j] == true)
                {
                    draw_sprite_ext(sprite_get("skillicons"), i + (j*4), temp_x + menux, temp_y + 46 + menuy, 2, 2, 0, c_white, 1);
                }
                else
                {
                    draw_sprite_ext(sprite_get("skillicons_disabled"), i + (j*4), temp_x + menux, temp_y + 46 + menuy, 2, 2, 0, c_white, 1);
                }
                menuy += 32;
            }
        }

        //indicator arrows
        if (arrow_anim_up) draw_sprite_ext(sprite_get("hud_menu_arrow"), arrow_frame, temp_x, temp_y - 52, 2, 2, 90, c_white, 1);
        if (arrow_anim_side) draw_sprite_ext(sprite_get("hud_menu_arrow"), arrow_frame, temp_x + 2, temp_y - 52, 2, 2, 0, c_white, 1);
        if (arrow_anim_down) draw_sprite_ext(sprite_get("hud_menu_arrow"), arrow_frame, temp_x + 34, temp_y - 18, 2, 2, 270, c_white, 1);

        //cursor placement
        if(active_col >= 0 && active_col < 4)
        {
            draw_sprite_ext(sprite_get("skillselect_cursor"), (cursor_timer/3), temp_x + (38 * (active_col + 1)), temp_y - 84, 2, 2, 0, c_white, 1);
        }

        //text
        switch (active_col)
        {
            case -1:
                draw_debug_text(temp_x + 36, temp_y - 100, "Skill Select Cancelled");
                break;
            case 0:
                draw_debug_text(temp_x + 36, temp_y - 100, "Selecting: " + "N-SPECIAL");
                break;
            case 1:
                draw_debug_text(temp_x + 36, temp_y - 100, "Selecting: " + "F-SPECIAL");
                break;
            case 2:
                draw_debug_text(temp_x + 36, temp_y - 100, "Selecting: " + "U-SPECIAL");
                break;
            case 3:
                draw_debug_text(temp_x + 36, temp_y - 100, "Selecting: " + "D-SPECIAL");
                break;
            case 4:
                draw_debug_text(temp_x + 42, temp_y - 100, "Selection Complete");
                break;
        }
    }
}
else if (!menu_open && "kart_inside" not in self)
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
            if (mp_current < [skill_cost_to_initiate]) draw_sprite_ext(sprite_get("skillicons_disabled"), [skill number], [slot position X], temp_y - 40, 2, 2, 0, c_white, 1);
            else if (mp_current >= [skill_cost_to_initiate]) draw_sprite_ext(sprite_get("skillicons"), [skill number], [slot position X], temp_y - 40, 2, 2, 0, c_white, 1);
        }
        */

        //nspec hud
        switch(specialnums[0]){
            
            //lightning dagger
            case 0:
                if (mp_current < lightdagger_cost) draw_sprite_ext(sprite_get("skillicons_disabled"), 0, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                else if (mp_current >= lightdagger_cost) draw_sprite_ext(sprite_get("skillicons"), 0, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                break;
            
            //flashbang
            case 1:
                if (mp_current < flashbang_total_cost) draw_sprite_ext(sprite_get("skillicons_disabled"), 4, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                else if (mp_current >= flashbang_total_cost) draw_sprite_ext(sprite_get("skillicons"), 4, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                break;
            
            //ember fist
            case 2:
                if (mp_current < emberfist_cost) draw_sprite_ext(sprite_get("skillicons_disabled"), 8, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                else if (mp_current >= emberfist_cost) draw_sprite_ext(sprite_get("skillicons"), 8, nspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                break;
            
        }
        
        //fspec hud
        switch(specialnums[1]){
            
            //burning fury
            case 0:
                if (mp_current < buff_total_cost) draw_sprite_ext(sprite_get("skillicons_disabled"), 1, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                else if (mp_current >= buff_total_cost) draw_sprite_ext(sprite_get("skillicons"), 1, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                if (burningfury_active)
                {
                    if (mp_current < burningfury_attack_cost) draw_sprite_ext(sprite_get("skillicons_disabled"), 1, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                    else if (mp_current >= burningfury_attack_cost) draw_sprite_ext(sprite_get("skillicons"), 1, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                }
                break;
            
            //power smash
            case 1:
                if (mp_current < powersmash_total_cost) draw_sprite_ext(sprite_get("skillicons_disabled"), 5, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                else if (mp_current >= powersmash_total_cost) draw_sprite_ext(sprite_get("skillicons"), 5, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                break;
            
            //light hookshot
            case 2:
                if (mp_current < lighthookshot_total_cost) draw_sprite_ext(sprite_get("skillicons_disabled"), 9, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                else if (mp_current >= lighthookshot_total_cost) draw_sprite_ext(sprite_get("skillicons"), 9, fspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                break;
            
        }

        //uspec hud
        switch(specialnums[2]){
            
            //force leap
            case 0:
                if (mp_current < forceleap_activate_cost) draw_sprite_ext(sprite_get("skillicons_disabled"), 2, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                else if (mp_current >= forceleap_activate_cost) draw_sprite_ext(sprite_get("skillicons"), 2, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                break;
            
            //accel blitz
            case 1:
                if (mp_current < accelblitz_cost) draw_sprite_ext(sprite_get("skillicons_disabled"), 6, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                else if (mp_current >= accelblitz_cost) draw_sprite_ext(sprite_get("skillicons"), 6, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                break;
            
            //searing descent
            case 2:
                if (mp_current < searingdescent_activate_cost) draw_sprite_ext(sprite_get("skillicons_disabled"), 10, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                else if (mp_current >= searingdescent_activate_cost) draw_sprite_ext(sprite_get("skillicons"), 10, uspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                break;
            
        }
        
        //dspec hud
        switch(specialnums[3]){
            
            //photon blast
            case 0:
                if (mp_current < photonblast_cost || photon_used) draw_sprite_ext(sprite_get("skillicons_disabled"), 3, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                else if (mp_current >= photonblast_cost) draw_sprite_ext(sprite_get("skillicons"), 3, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                break;
            
            //polaris
            case 1:
                if (mp_current < buff_total_cost) draw_sprite_ext(sprite_get("skillicons_disabled"), 7, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                else if (mp_current >= buff_total_cost) draw_sprite_ext(sprite_get("skillicons"), 7, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                if (polaris_active)
                {
                    draw_sprite_ext(sprite_get("skillicons"), 7, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                }
                break;
            
            //chasm burster
            case 2:
                if (mp_current < chasmburster_total_cost) draw_sprite_ext(sprite_get("skillicons_disabled"), 11, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                else if (mp_current >= chasmburster_total_cost) draw_sprite_ext(sprite_get("skillicons"), 11, dspecial, temp_y - 40, 2, 2, 0, c_white, 1);
                break;
            
        }

        //this just draws the inputs for each skill
        draw_sprite_ext(sprite_get("skillicons_inputs"), 0, temp_x + 96, temp_y - 20, 2, 2, 0, c_white, 1);
    }

    if (get_match_setting(SET_PRACTICE)) if (msg_menu) draw_debug_text(temp_x + 14, temp_y - 56, "UP + TAUNT = Skill Select");

    if (fuck_you_cheapies && theikos_active) draw_debug_text(temp_x - 10, temp_y - 96, "
    You're gonna have to try
    a little harder than THAT.");

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

//munophone
muno_event_type = 5;
user_event(14);

#define rectDraw(x1, y1, x2, y2, color) {
    draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);

    //according to the positive axis
    //x1 / y1 = top left
    //x2 / y2 = bottom right
}