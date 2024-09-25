//user_event14
//the real draw_hud.gml

if ("nspec_cd" not in self) exit;

draw_hud_x = temp_x;
draw_hud_y = temp_y;

//icon UI
var hud_x = allow_burst_UI ? temp_x + 124 : temp_x + 180;
var hud_y = temp_y - 12;
var icon_image = 0;

if (playing_lyre_timer < 0)
{
    //black circle BG
    draw_sprite_ext(sprite_get("hud_skill_bg"), 0, hud_x, hud_y, 2, 2, 0, c_white, 0.3);

    //extra circle thingi
    if ((is_attacking && (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2))
    || nspec_cd > 0 && (!instance_exists(artc_marker) || instance_exists(artc_marker) && artc_marker.state != 1))
    {
        draw_sprite_ext(sprite_get("hud_skill_used"), 0, hud_x, hud_y, 2, 2, 0, c_white, 0.3);
    }
    else draw_sprite_ext(sprite_get("hud_skill_used"), 0, hud_x, hud_y, 2, 2, 0, c_black, 0.3);

    //skill icon logic
    if (instance_exists(artc_marker) && artc_marker.state == 1 && !using_nspec && attack != AT_INTRO) //teleport (idle)
    {
        icon_image = 1;
        draw_sprite_ext(sprite_get("hud_skill_icon"), icon_image, hud_x, hud_y, 2, 2, 0, c_white, 1);
    }
    else if (nspec_cd > 0 || using_nspec) //the attack is being used or it's in cooldown
    {
        icon_image = 0;
        if (instance_exists(artc_marker) && artc_marker.state == 1) icon_image = 1;
        draw_sprite_ext(sprite_get("hud_skill_icon"), icon_image, hud_x, hud_y, 2, 2, 0, c_white, 0.4);
    }
    else //normal state
    {
        icon_image = 0;
        draw_sprite_ext(sprite_get("hud_skill_icon"), icon_image, hud_x, hud_y, 2, 2, 0, c_white, 1);
    }

    //timer, only shows when the icon is the normal icon
    if (nspec_cd > 0 && icon_image != 1)
    {
        draw_sprite_ext(sprite_get("hud_skill_timer"), (max(nspec_cd/12)-300)*-1, hud_x, hud_y, 2, 2, 0, c_white, 0.8);
        draw_debug_text(hud_x-16, hud_y-6, string( string_format( floor(nspec_cd/60*10)/10, 2, 1) ));
        //should only show one fraction digit, not 2. it also should show a .0 when it's actually round
        //floor(nspec_cd/60*10)/10     <- this code is the closest thing i got to it
        //nspec_cd/60                   <- this is a simpler alternative
    }

    //effect that appears when keqing can use her skill again
    if (hud_anim_start)
    {
        gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_get("hud_skill_flash"), 0, hud_x, hud_y, hud_anim_timer/2/5+1, hud_anim_timer/2/5+1, 0, c_white, 1-hud_anim_timer/10);
        gpu_set_blendmode(bm_normal);
    }



    //ELEMENTAL BURST STUFF
    if (allow_burst_UI)
    {
        //black circle BG
        draw_sprite_ext(sprite_get("hud_skill_bg"), 1, hud_x+54, hud_y-8, 2, 2, 0, c_white, 0.3);

        //BURST ICON MASK LOGIC

        //mask area setup
        gpu_set_blendenable(false);
        gpu_set_colorwriteenable(false, false, false, true);
        draw_sprite_ext(sprite_get("hud_burst_mask"), 0, hud_x+54, hud_y-8, 2, 2, 0, c_white, 0.6); //the mask itself
        gpu_set_colorwriteenable(true, true, true, true);
        gpu_set_blendenable(true);

        //mask fill (this is where i set up the meter itself)
        gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
        gpu_set_alphatestenable(true);
        rectDraw(hud_x+28, hud_y+16, 49, floor(-burst_charge/3.92), blend_color); //burst fill
        gpu_set_alphatestenable(false);
        gpu_set_blendmode(bm_normal);

        //circle border
        shader_start();
        draw_sprite_ext(sprite_get("hud_skill_used"), 1, hud_x+54, hud_y-8, 2, 2, 0, burst_ready ? c_white : c_black, burst_ready ? 0.8 : 0.3);
        shader_end();
        
        //skill icon logic
        draw_sprite_ext(sprite_get("hud_skill_icon"), 2, hud_x+56, hud_y-8, 2, 2, 0, c_white, burst_ready ? 1 : 0.4);
    }
}
else if (debug_keqing)
{
    if (nspec_cd > 0) draw_debug_text(hud_x-64, hud_y+48, string("nspec cd:" + string_format( floor(nspec_cd/60*10)/10, 2, 1) ));
}


//lyre shenanigans
if (lyre_hud_fade < 10)
{
    draw_sprite_ext(sprite_get("hud_lyre"), 0, temp_x, temp_y, 2, 2, 0, c_white, lerp(0, 1*lyre_hud_play_fade, lyre_hud_fade/10*lyre_hud_play_fade));
}
else //lyre menu is active
{
    draw_sprite_ext(sprite_get("hud_lyre"), ("cur_octwave" in self) ? cur_octwave : 0, temp_x, temp_y, 2, 2, 0, c_white, 1);

    //button preses
    for (var note = 0; note < array_length(note_input_show); note ++)
    {
        if (note_input_show[note] > 0) 
        {
            draw_sprite_ext(
                sprite_get("hud_lyre_press"), 0,
                temp_x + 24 + 26 * (note % 7),      //calculation: original x + initial offset + note spacing horizontally * loop between 7 notes
                temp_y - 30 - 26 * floor(note/7),   //calculation: original y - initial offset - note spacing vertically * floors note / 7 to represent octwaves
                2, 2, 0, c_white,
                (floor(note/7) == cur_octwave - 1) ? 1 : 0.5); //changes input opacity based on if it's the current octwave or not

                //note_input_show[note]/note_show_time_set = changes alpha dynamically
        }
    }
}

//practice prompt
if (get_match_setting(SET_PRACTICE) && temp_level == 0) draw_debug_text(temp_x + 16, temp_y, debug_keqing ? "Test mode active" : "UP + TAUNT = Test mode");


//debug stuff
if (debug_display && temp_level == 0)
{
    var mul = 16; //spacing
    var debug_x = 16;
    var debug_y = 256;

    var state_name = get_state_name(state);
    switch (state) //new workshop state names don't actually have a state name for get_state_name
    {
        case PS_FLASHED: state_name = "PS_FLASHED"; break;
        case PS_CRYSTALIZED: state_name = "PS_CRYSTALIZED"; break;
        case PS_BURIED: state_name = "PS_BURIED"; break;
    }
    
    draw_debug_text(debug_x+mul*0, debug_y+mul*-4, "state = " + string(state_name));
    draw_debug_text(debug_x+mul*0, debug_y+mul*-3, "state_timer = " + string(state_timer));

    if (is_attacking || state == PS_PARRY || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD ||
        state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_AIR_DODGE)
    {
        if (is_attacking) draw_debug_text(debug_x+mul*0, debug_y+mul*-7, "attack = " + string(attack_names[attack]));
        draw_debug_text(debug_x+mul*0, debug_y+mul*-6, "window = " + string(window));
        draw_debug_text(debug_x+mul*0, debug_y+mul*-5, "window_timer = " + string(window_timer));
    }

    draw_debug_text(debug_x+mul*0, debug_y+mul*-2, "x = " + string(x));
    draw_debug_text(debug_x+mul*0, debug_y+mul*-1, "y = " + string(y));

    draw_debug_text(debug_x+mul*5, debug_y+mul*-2, "hsp = " + string(hsp));
    draw_debug_text(debug_x+mul*5, debug_y+mul*-1, "vsp = " + string(vsp));
}



#define rectDraw(x1, y1, width, height, color)
{
    draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
}