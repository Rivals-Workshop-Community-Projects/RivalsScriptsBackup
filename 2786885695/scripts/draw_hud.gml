//draw_hud

if ("nspec_cd" not in self) exit;

draw_hud_x = temp_x;
draw_hud_y = temp_y;

//icon UI
var hud_x = allow_burst_UI ? temp_x + 124 : temp_x + 180;
var hud_y = temp_y - 12;
var icon_image = 0;

if (playing_lyre_timer == 0)
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
    else if (using_nspec || nspec_cd > 0) //the attack is being used or it's in cooldown
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
else
{
    if (nspec_cd > 0) draw_debug_text(hud_x-64, hud_y+48, string("nspec cd:" + string_format( floor(nspec_cd/60*10)/10, 2, 1) ));
}



if (lyre_hud_fade < 10)
{
    draw_sprite_ext(sprite_get("hud_lyre"), 0, temp_x, temp_y, 2, 2, 0, c_white, lerp(0, 1*lyre_hud_play_fade, lyre_hud_fade/10*lyre_hud_play_fade));
}
else //lyre menu is active
{
    draw_sprite_ext(sprite_get("hud_lyre"), 0, temp_x, temp_y, 2, 2, 0, c_white, 1);
    if (key_held_time <= 7 && note_id > -1)
    {
        draw_sprite_ext(sprite_get("hud_lyre_press"), note_id, temp_x, temp_y - 26 * floor(note_id/12), 2, 2, 0, c_white, 1);
    }
}




if (display_numbers_timer < 120 && display_damage_numbers && !is_cpu) draw_debug_text(temp_x - 16, hud_y - 32, "TAUNT to disable damage numbers.");


//debug stuff
if (debug_keqing)
{
    //state
    if (!is_attacking)
    {
        draw_debug_text(temp_x, temp_y - 80, "state = " + string(get_state_name(state)));
        draw_debug_text(temp_x, temp_y - 64, "timer = " + string(state_timer));
    }
    else
    {
        draw_debug_text(temp_x, temp_y - 80, "attack = " + string(attack_index[attack]));
        draw_debug_text(temp_x, temp_y - 64, "window = " + string(window));
        draw_debug_text(temp_x, temp_y - 48, "window_timer = " + string(window_timer));
    }
    

    //coords
    draw_debug_text(temp_x, temp_y - 32, "x = " + string(x));
    draw_debug_text(temp_x + 112, temp_y - 32, "y = " + string(y));

    //speed
    draw_debug_text(temp_x, temp_y - 16, "hsp = " + string(hsp));
    draw_debug_text(temp_x + 112, temp_y - 16, "vsp = " + string(vsp));
}



#define rectDraw(x1, y1, width, height, color)
draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);