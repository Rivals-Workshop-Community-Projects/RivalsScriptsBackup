//draw_hud.gml

if (get_match_setting(SET_PRACTICE) && temp_level == 0)
{
    draw_debug_text(temp_x + 4, temp_y - 38 - 48 * has_superspell, "press DOWN + TAUNT for");
    draw_debug_text(temp_x + 4, temp_y - 22 - 48 * has_superspell, "Darkness Orb toggle");
}

shader_start();

//darkness hud
draw_sprite_ext(sprite_get("hud_darkness_cd"), (dark_cd <= 0 || dark_cd < 30 && dark_cd % 8 >= 4), temp_x + 188 + 8 * has_superspell, temp_y - 14, 2, 2, 0, c_white, 1);

//rumia EX hud
if (has_superspell)
{
    var offset_x = -6;
    var offset_y = 0;
    draw_sprite_ext(sprite_get("hud_fs_fill"), 0, temp_x + 2 + offset_x, temp_y - 14, 2, 2, 0, hud_frame_col, 0.5);
    
    draw_sprite_ext(
        sprite_get("hud_fs_frame"), (superspell_cur < superspell_max) ? 0 : 1 + (game_time % 8 > 4),
        temp_x + offset_x, temp_y - 44, 2, 2, 0, c_white, 1
    );

    maskHeader();
    draw_sprite_ext(sprite_get("hud_fs_fill"), 0, temp_x + 2 + offset_x, temp_y - 14, 2, 2, 0, c_black, 1);
    maskMidder();

    draw_sprite_part_ext(
        sprite_get("hud_fs_meter"), 0,
        0, game_time % (128 - 7),
        lerp(0, 1, superspell_cur/superspell_max) * 83, 7,
        temp_x + 4 + offset_x, temp_y - 12, 2, 2, c_white, 1
    );
    if (superspell_cur > 0 && superspell_cur < superspell_max)
    {
        draw_sprite_ext(
            sprite_get("_pixel"), 0,
            temp_x + 4 + offset_x + lerp(0, 1, superspell_cur/superspell_max) * 166,
            temp_y - 12, 2, 14, 0,
            c_gray, 1
        );
    }
    maskFooter();
    
    draw_sprite_ext(sprite_get("hud_fs_frame_in"), 0, temp_x + 2 + offset_x, temp_y - 14, 2, 2, 0, hud_frame_col, 1);

    //draw_debug_text(temp_x + 2, temp_y - 4, string(superspell_cur));
}

if (dark_state > -1 && dark_hp_cur > 0 || dark_hp_temp > 0) //darkness %
{
    text_draw(
        temp_x + 192 + 8 * has_superspell,
        temp_y - 10,
        `${dark_hp_temp > 0 ? floor(dark_hp_temp) : dark_hp_cur}%`, darkness_col, "fName", fa_right, 1, true, 1,
        !is_tas_alt ? hud_frame_col : make_color_rgb(static_colorO[6*4+0]*255, static_colorO[6*4+1]*255, static_colorO[6*4+2]*255)
    );
}

shader_end();


#define maskHeader
{
    //set the mask to take effect on pretty much everything in the room
    //below this function, add the MASK
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(-200 ,-200 , room_width, room_height, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
#define maskMidder
{
    //sets the thing underneath the mask to be drawn
    //below this function, add the TEXTURE
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
#define maskFooter
{
    //go back to drawing normally again
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}
#define text_draw
{
    var x = argument[0];
    var y = argument[1];
    var string = argument[2];
    var color = argument[3];
    var font = argument[4];
    var align = argument[5];
    var alpha = argument_count > 6 ? argument[6] : 1;
    var outline = argument_count > 7 ? argument[7] : false;
    var line_alpha = argument_count > 8 ? argument[8] : 1;
    var line_col = argument_count > 9 ? argument[9] : c_black;

    
    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if (outline && line_alpha > 0)
    {
        for (var i_x = -1; i_x < 2; ++i_x) for (var i_y = -1; i_y < 2; ++i_y)
        {
            draw_text_color(x + i_x * 2, y + i_y * 2, string, line_col, line_col, line_col, line_col, line_alpha * alpha);
        }
    }

    draw_text_color(x, y, string, color, color, color, color, alpha);
}