//SAVE point post draw

if (saved_player != player_id) with (saved_player)
{
    for (var _x = -2; _x <= 2; _x += 2) for (var _y = -2; _y <= 2; _y += 2)
    {
        gpu_set_fog(true, get_player_hud_color(other.player), 0, 1);
        draw_sprite(
            get_char_info(player, INFO_ICON),
            (!is_string(url) ? url-1 : 0),
            other.x - 3 + _x - 8 * is_string(url),
            other.y - 80 + _y - 5 * is_string(url)
        );
        gpu_set_fog(false, c_white, 1, 0);
    }

    shader_start();
    draw_sprite(
        get_char_info(player, INFO_ICON),
        (!is_string(url) ? url-1 : 0),
        other.x - 3 - 8 * is_string(url),
        other.y - 80 - 5 * is_string(url)
    );
    shader_end();
}

///////////////////////////////////////////////////// OFFSCREEN INDICATOR /////////////////////////////////////////////////////

//capture area + sprite offsets
var view_left = view_get_xview() + 34; //0, y
var view_right = view_get_wview() + view_get_xview() - 34; //screenborder, y
var view_up = view_get_yview() + 32; //x, 0
var view_down = view_get_hview() + view_get_yview() - 86; //x, screenborder

//if the article is inside of the screen [article_offscreen] is false
article_offscreen = !(x >= view_left - 64 && x <= view_right + 64 && y >= view_up - 32 && y <= view_down + 85);

if (article_offscreen && player_id.object_index != oTestPlayer)
{
    //sets article depth to a very large negative number so the indicator appears in front of things
    //we are doing this because article#_post_draw relies on the article's depth too
    depth = -200;
    
    //screen limits x - this decides how far the indicator should follow the article on the X axis
    if (x < view_left - 65) offscreen_x_pos = view_left - 32;
    else if (x > view_right + 65) offscreen_x_pos = view_right - 32;
    else offscreen_x_pos = x - 32;

    //screen limits y - this decides how far the indicator should follow the article on the Y axis
    if (y < view_up + 24) offscreen_y_pos = view_up - 32;
    else if (y > view_down + 24) offscreen_y_pos = view_down - 32;
    else offscreen_y_pos = y - 54;

    //image angles - decides at which coordinates should the article change the arrow sprite
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

    //for the version with the circle inside it replace  "offscreen_cloud_bg_spr"  with  "offscreen_bg_spr"
    draw_sprite_ext(asset_get("offscreen_cloud_bg_spr"), offscreen_image, offscreen_x_pos + 32, offscreen_y_pos + 34, 1, 1, 0, get_player_hud_color(player), 1);
    draw_sprite_ext(sprite_get("hud_offscreen_image"), 0, offscreen_x_pos, offscreen_y_pos, 2, 2, 0, c_white, 1);
}
else depth = orig_depth; //reset depth back to normal when it's on screen

/////////////////////////////////////////////////// SHOW MASK ON HITBOX VIEW ///////////////////////////////////////////////////

if (hitbox_view)
{
    draw_set_alpha(0.5);
    draw_circle_color(x - 1, y - 33, collision_radius, c_blue, c_blue, false);
    draw_set_alpha(1);
}