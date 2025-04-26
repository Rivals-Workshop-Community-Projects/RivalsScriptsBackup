//post_draw.gml

shader_start();
//respawn "platform"
if (state == PS_RESPAWN || respawn_taunt > 0) draw_sprite_ext(sprite_get("fx_darkorb_loop"), game_time * plat_speed, x, y - 32, 2, 2, 0, c_white, 1);

//halloween costume
if (koa_hat) draw_sprite_ext(sprite_get("koakuma_idle"), image_index, x, y, 2 * spr_dir, 2, 0, c_white, 1);

///////////////////////////////////////////////// DARKNESS STUFF /////////////////////////////////////////////////

//cooldown effect
if (("draw_hud_type" not in self || draw_hud_type != "childe") && dark_cd > 0 && (get_local_setting(SET_HUD_NAMES) || get_local_setting(SET_HUD_SIZE)))
{
    //30 frames before cooldown is done it starts flashing
    var cd_flash = dark_cd < 30 ? (dark_cd % 8 >= 4 ? 0 : 1) : 1;

    draw_sprite_ext(
        asset_get("triangle_spr"), 0,
        x , y - char_height - 30, 1, 1, 0,
        make_color_rgb(hud_color[0]/2, hud_color[1]/2, hud_color[2]/2), cd_flash == 0 ? 0 : 1
    );
}
if (playtest_active && dark_target != noone) //playtest darkness %
{
    text_draw(
        x, y + 6, `${dark_hp_temp > 0 ? floor(dark_hp_temp) : dark_hp_cur}%`, darkness_col, "fName", fa_center, 1, true, 1,
        !is_tas_alt ? hud_frame_col : make_color_rgb(static_colorO[6*4+0]*255, static_colorO[6*4+1]*255, static_colorO[6*4+2]*255)
    );
}

///////////////////////////////////////////////////// GRAZING /////////////////////////////////////////////////////

if (graze_state == 0)
{
    draw_sprite_ext(
        sprite_get("fx_graze_range"),
        game_time * 0.15,
        floor(graze_pos[0]) + 1,
        floor(graze_pos[1]) + 1,
        graze_dist_cur/graze_size[0]*2, graze_dist_cur/graze_size[0]*2,
        spr_angle,
        c_white,
        graze_alpha
    );
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

if (is_attacking) switch (attack)
{
    case AT_DSPECIAL:
        if (floor(dark_hp_temp) > 0)
        {
            shader_end();
            
            gpu_set_fog(1, darkness_col, 0, 1);
            draw_sprite_ext(sprite_index, -1, x, y, 2 * spr_dir, 2, 0, c_white, 0.5 * (state_timer % 8 > 4));
            gpu_set_fog(0, c_white, 0, 0);

            shader_start();
        }
        break;
    case 2: //intro
        //dark orb
        if (window == 1) draw_sprite_ext(sprite_get("fx_intro"), game_time, x + draw_x - 80 * spr_dir, y + draw_y - 98, 2 * spr_dir, 2, 0, c_white, 1);
        break;
    case 49: //final strong
        draw_set_alpha(fade_to_black);
        rectDraw(-100, -100, room_width + 100, room_height + 100, c_black);
        draw_set_alpha(1);
        break;
}

shader_end();

if (state == PS_TEMP_PRATFALL)
{
    draw_sprite_ext(
        sprite_index, -1, x, y, 2 * spr_dir, 2, spr_angle, c_black,
        state_timer >= temp_prat_end ? ((temp_prat_end+temp_prat_dissolve_time-state_timer) / temp_prat_dissolve_time) * 0.5 : 0.5
    );
}

//written by muno
#define rectDraw(x1, y1, width, height, color)
{
    draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
}
//text_draw(x, y, string, color, font, align, alpha, outline, line_alpha, line_col)
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