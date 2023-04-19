//article1_post_draw.gml
//nspec items

if (item[item_type].name == "car" && car_item_held != -1) draw_sprite(sprite_get("artc_nspec_" + item[car_item_held].name), 0, x, y - 16);

if (item[item_type].name == "bomb" && item_timer >= bomb_time && item_timer < bomb_time + bomb_flash_time)
{
    draw_sprite_ext(
        sprite_get("fx_bomb_flash"), 0, x, y, 2 * spr_dir, 2, 0, c_white,
        lerp(0, 1, (item_timer - bomb_time) / bomb_flash_time)
    );
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

        draw_sprite_ext(sprite_get("hud_offscreen_arrow"), offscreen_image, offscreen_x_pos, offscreen_y_pos, 2, 2, 0, hud_col, 1);
        draw_sprite_ext(sprite_get("hud_items"), item_type, offscreen_x_pos+33, offscreen_y_pos+33, 2, 2, 0, c_white, 1);
    }
    else depth = orig_depth;
}


/////////////////////////////////////////////////// SHOW MASK ON HITBOX VIEW ///////////////////////////////////////////////////

if (get_match_setting(SET_HITBOX_VIS)) draw_sprite_ext(mask_index, image_index, x, y, 1, 1, 0, c_white, 0.5);