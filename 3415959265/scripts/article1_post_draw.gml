//article1_post_draw.gml

/////////////////////////////////////////////////////// OWNER INDICATOR ///////////////////////////////////////////////////////

//if the article isn't offscreen, it will draw the hud arrow
if (!article_offscreen) draw_sprite_ext(sprite_get("hud_player_arrow"), 0, x-4, y-article_height, 2, 2, 0, hud_col, 1);


///////////////////////////////////////////////////// OFFSCREEN INDICATOR /////////////////////////////////////////////////////

//capture area + sprite offsets
var view_left = view_get_xview() + 34; //0, y // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")).
var view_right = view_get_wview() + view_get_xview() - 34; //screenborder, y // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")).
var view_up = view_get_yview() + 32; //x, 0 // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).
var view_down = view_get_hview() + view_get_yview() - 86; //x, screenborder // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).

//offscreen check
article_offscreen = !(x >= view_left - 64 && x <= view_right + 64 && y >= view_up - 32 && y <= view_down + 85); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.


if (offscreen_arrow_enabled)
{
    if (article_offscreen && !player_id.playtest_active)
    {
        depth = -200; //makes the indicator appear above everything // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        
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
        draw_sprite_ext(sprite_get("hud_offscreen_image"), 0, offscreen_x_pos, offscreen_y_pos, 2, 2, 0, c_white, 1);
    }
    else depth = orig_depth;
}



/////////////////////////////////////////////////// SHOW MASK ON HITBOX VIEW ///////////////////////////////////////////////////

if (get_match_setting(SET_HITBOX_VIS)) draw_sprite_ext(mask_index, image_index, x, y, 1, 1, 0, c_white, 0.5);



/////////////////////////////////////////////////// FLASH WHITE ON HIT ///////////////////////////////////////////////////

if hitstop>1 draw_sprite_ext(sprite_get("artc_hit"), state_timer / 5, x, y, 1, 1, 0, c_white, 0.5);