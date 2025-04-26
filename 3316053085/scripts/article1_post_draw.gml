//article1_post_draw.gml

draw_sprite_ext(sprite_get("artc_rune_layers"), 0, x, y, image_xscale, image_yscale, image_angle, hud_col, image_alpha);
gpu_set_blendmode(bm_add);
draw_sprite_ext(
    sprite_get("artc_rune_layers"), 1, x, y,
    image_xscale, image_yscale, image_angle, pow_col,
    ease_quadInOut(0, 1, glow_time, glow_time_max) * glow_pow_max * image_alpha
);
if (hp < hp_max) //cracks
{
    draw_sprite_ext(
        sprite_get("artc_rune_hp"),
        lerp(0, 1, hp/hp_max) * 3,
        x, y, image_xscale, image_yscale, image_angle, c_white,
        lerp(1, 0, hp/hp_max) * image_alpha
    );
}
gpu_set_blendmode(bm_normal);

if (flash_fx_timer < flash_fx_time_max)
{
    gpu_set_fog(true, c_white, 0, 1)
    draw_sprite_ext(
        sprite_get("artc_rune_layers"), 2, x, y,
        image_xscale, image_yscale, image_angle, c_white,
        lerp(1, 0, flash_fx_timer/flash_fx_time_max)
    );
    gpu_set_fog(false, c_white, 0, 1)

    gpu_set_blendmode(bm_add);
    draw_sprite_ext(
        sprite_get("artc_rune_layers"), 1, x, y,
        lerp(image_xscale, 3 * sign(image_xscale), flash_fx_timer/flash_fx_time_max),
        lerp(image_yscale, 3 * sign(image_yscale), flash_fx_timer/flash_fx_time_max), image_angle, pow_col,
        lerp(1, 0, flash_fx_timer/flash_fx_time_max)
    );
    gpu_set_blendmode(bm_normal);
}

if (charge_lvl > 0) for (var i = 0; i < charge_lvl; i ++) with (player_id)
{
    if (!s_alt && alt_cur == 28) shader_end();
    draw_sprite(
        other.fx_lvl_sparkle,
        game_time * 0.2,
        other.x + lengthdir_x(other.lvl_indc_base_dist + abs(lengthdir_y(other.lvl_indc_ex_dist, other.rune_angle)), game_time*4 - i/other.charge_lvl*360),
        other.y + lengthdir_y(other.lvl_indc_base_dist + abs(lengthdir_x(other.lvl_indc_ex_dist, other.rune_angle)), game_time*4 - i/other.charge_lvl*360)
    );
    if (!s_alt && alt_cur == 28) shader_start();
}

///////////////////////////////////////////////////// OFFSCREEN INDICATOR /////////////////////////////////////////////////////

//capture area + sprite offsets
var view_left = view_get_xview() + 34; //0, y
var view_right = view_get_wview() + view_get_xview() - 34; //screenborder, y
var view_up = view_get_yview() + 32; //x, 0
var view_down = view_get_hview() + view_get_yview() - 86; //x, screenborder

//offscree check
article_offscreen = !(x >= view_left - 64 && x <= view_right + 64 && y >= view_up - 32 && y <= view_down + 85);

if (offscreen_arrow_enabled)
{
    if (article_offscreen && !player_id.playtest_active)
    {
        depth = -200; //makes the indicator appear above everything
        
        //screen limits x
        if (x < view_left - 65) offscreen_x_pos = view_left - 32;
        else if (x > view_right + 65) offscreen_x_pos = view_right - 32;
        else offscreen_x_pos = x - 32;

        //screen limits y
        if (y < view_up + 24) offscreen_y_pos = view_up - 32;
        else if (y > view_down + 24) offscreen_y_pos = view_down - 32;
        else offscreen_y_pos = y - 54;


        //image angles
        if (x < view_left - 63)
        {
            if (y < view_up - 33) offscreen_image = 1;
            else if (y > view_down + 85) offscreen_image = 7;
            else  offscreen_image = 0;
        }
        else if (x > view_right + 63)
        {
            if (y < view_up - 33) offscreen_image = 3;
            else if (y > view_down + 85) offscreen_image = 5;
            else  offscreen_image = 4;
        }
        else
        {
            if (y < view_up - 33) offscreen_image = 2;
            else if (y > view_down + 85) offscreen_image = 6;
        }

        draw_sprite_ext(asset_get("offscreen_cloud_bg_spr"), offscreen_image, offscreen_x_pos + 32, offscreen_y_pos + 34, 1, 1, 0, hud_col, 1);
        draw_sprite_ext(sprite_get("hud_artc_rune_offscreen"), 0, offscreen_x_pos, offscreen_y_pos, 2, 2, 0, c_white, 1);

        //draw_text_colfnt(floor(offscreen_x_pos) + 34, floor(offscreen_y_pos) + 40, string(rune_angle % 180), c_white, asset_get("roundFont"))
        draw_sprite_ext(sprite_get("hud_artc_rune_angle"), 0, offscreen_x_pos + 33, offscreen_y_pos + 33, 1, 1, rune_angle % 180, c_white, 1);
    }
    else depth = orig_depth;
}

#define draw_text_colfnt()
{
    var xpos = argument[0], ypos = argument[1], str = argument[2];
    var col = argument_count > 3 ? argument[3] : c_white;
    var fnt = argument_count > 4 ? argument[4] : 0;

    draw_set_halign(fa_center);
    draw_set_font(fnt);
    for (var _x = -2; _x <= 2; _x++) for (var _y = -2; _y <= 2; _y++) draw_text_color(xpos + _x, ypos + _y, string(rune_angle % 180), c_black, c_black, c_black, c_black, 1);
    draw_text_color(xpos, ypos, string(rune_angle % 180), col, col, col, col, 1);
}