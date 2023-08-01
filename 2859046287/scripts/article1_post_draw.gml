//article1_post_draw.gml
//similarly to a player's post_draw.gml, this script draws over the article's graphics

/////////////////////////////////////////////////////// OWNER INDICATOR ///////////////////////////////////////////////////////

//if the article isn't offscreen, it will draw the hud arrow
if (!article_offscreen) draw_sprite_ext(sprite_get("hud_player_arrow"), 0, x, y-article_height, 2, 2, 0, hud_col, 1);


///////////////////////////////////////////////////// OFFSCREEN INDICATOR /////////////////////////////////////////////////////

//capture area + sprite offsets
var view_left = view_get_xview() + 34; //0, y
var view_right = view_get_wview() + view_get_xview() - 34; //screenborder, y
var view_up = view_get_yview() + 32; //x, 0
var view_down = view_get_hview() + view_get_yview() - 86; //x, screenborder

//if the article is inside of the screen [article_offscreen] is false
article_offscreen = !(x >= view_left - 64 && x <= view_right + 64 && y >= view_up - 32 && y <= view_down + 85);


if (offscreen_arrow_enabled)
{
    if (article_offscreen && !player_id.playtest_active)
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

        draw_sprite_ext(sprite_get("hud_offscreen_arrow"), offscreen_image, offscreen_x_pos, offscreen_y_pos, 2, 2, 0, hud_col, 1);
        draw_sprite_ext(sprite_get("hud_offscreen_image"), 0, offscreen_x_pos, offscreen_y_pos, 2, 2, 0, c_white, 1);
    }
    else depth = orig_depth; //reset depth back to normal when it's on screen
}

/////////////////////////////////////////////////// SHOW MASK ON HITBOX VIEW ///////////////////////////////////////////////////

if (player_id.hbox_view) draw_sprite_ext(mask_index, image_index, x, y, 1, 1, 0, c_white, 0.5);

///////////////////////////////////////////////////////////// OTHER /////////////////////////////////////////////////////////////

//darken sprite when gravity field is on cooldown by drawing the same sprite
if (has_rune("H") && can_be_hit[player_id.player] > 0) draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_black, 0.5);