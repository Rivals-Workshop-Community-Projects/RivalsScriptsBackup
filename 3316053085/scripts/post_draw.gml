//post_draw.gml

shader_start();

if (is_attacking && attack == AT_DSPECIAL && (window <= 2 || dspec_charge_fx_fade < dspec_charge_fx_fade_max))
{
    draw_sprite_ext(
        sprite_get("fx_dspec"),
        dspec_charge_fx_spd * state_timer,
        x, y,
        window == 3 ? lerp(2, 4, window_timer/window_end) : 2,
        window == 3 ? lerp(2, 4, window_timer/window_end) : 2, 0, c_white,
        lerp(1, 0, dspec_charge_fx_fade/dspec_charge_fx_fade_max)
    )
}

shader_end();

//big shockwave
if (can_overdrive > 0 && od_shockwave_coords[2] > 0 && od_shockwave_coords[2] <= od_shockwave_coords[3])
{
    shader_start();
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(
        sprite_get("fx_od_shockwave"), 0,
        od_shockwave_coords[0], od_shockwave_coords[1],
        lerp(0, 20, od_shockwave_coords[2]/od_shockwave_coords[3]),
        lerp(0, 20, od_shockwave_coords[2]/od_shockwave_coords[3]),
        0,
        c_white,
        lerp(0, 1, (od_shockwave_coords[3] - od_shockwave_coords[2] + 10)/od_shockwave_coords[3]) * 0.75
    );
    gpu_set_blendmode(bm_normal);
    shader_end();
}

//garden of eden outline
if (instance_exists(artc_garden))
{
    with (artc_garden)
    {
        gpu_set_blendmode(bm_add);
        draw_sprite_ext(
            sprite_get("fx_od_garden_over"), 0, x, y, image_xscale, image_yscale, 0,
            pow_col, 0.75
        );
        gpu_set_blendmode(bm_normal);
    }
}

//playtest meter
if (object_index == oTestPlayer)
{
    var dymc_col = charge_hud_flash > 10 ? c_white : merge_color(ui_active_color, c_white, charge_hud_flash/10);

    if (room != asset_get("network_char_select") && room != asset_get("workshop_room"))
    {
        var small_meter_x = floor(x)-104;
        var small_meter_y = floor(y)+16;
        if (x < 100) small_meter_x = 100-104;
        if (x > 860) small_meter_x = 860-104;
        if (y > 466) small_meter_y = 466+16;
        if (y < 148) small_meter_y = 148+16;
    }
    else
    {
        var small_meter_x = 4;
        var small_meter_y = clamp(floor(y)+24, 168, 440);
    }

    for (var chrg = 0; chrg < charge_max/100; chrg ++) //full segment fills
    {
        draw_sprite_ext(
            sprite_get("hud_meter_small_segfull"), double_meter_rune,
            small_meter_x + 14 + chrg * ((double_meter_rune ? 7 : 14) * 2),
            small_meter_y - 104,
            2, 2, 0, (chrg < floor(charge_cur/100)) ? dymc_col : ui_inactive_color, 1
        );
    }
    //currently charging segment
    for (var meterline = 0; meterline < 2; meterline ++) for (var chrg = 0; chrg < charge_max/100; chrg ++) if (chrg == floor(charge_cur/100) && charge_cur > chrg*100 + 0.99)
    {
        draw_sprite_ext(
            sprite_get("_pixel"), 0,
            small_meter_x + 14 + meterline * 2 + chrg * ((double_meter_rune ? 7 : 14) * 2),
            small_meter_y - 102 - meterline * 2,
            (lerp(0, 1, charge_cur/100) % 1) * (double_meter_rune ? 7-2 : 14-2) * 2,
            2, 0, dymc_col, 1
        );
    }

    draw_sprite_ext(sprite_get("hud_meter_small"), double_meter_rune, small_meter_x + 8, small_meter_y - 118, 2, 2, 0, c_white, 1); //frame
    draw_debug_text(small_meter_x + 12, small_meter_y - 96, "Charges: " + string(floor(charge_cur/100))); //text
}

//written by muno
#define rectDraw(x1, y1, width, height, color)
{
    draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
}
#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)
{
    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if outline {
        for (i = -1; i < 2; i++) {
            for (j = -1; j < 2; j++) {
                draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
            }
        }
    }

    if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

    if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
    else return;
}

