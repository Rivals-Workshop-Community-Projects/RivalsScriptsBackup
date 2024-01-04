//article1_post_draw.gml

//resets shader to the default colors (removes colormapping too)
with (player_id)
{
    shader_end();
    rainbow_ring_shader = false;
    user_event(15);
}

//temporary setup for when the ring is in the spawning state
if (!ring_is_useable && state != 2) draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, image_angle, c_black, 0.5);

///////////////////////////////////////////////////// OFFSCREEN INDICATOR /////////////////////////////////////////////////////

//capture area + sprite offsets
var view_left = view_get_xview() + 34; //0, y
var view_right = view_get_wview() + view_get_xview() - 34; //screenborder, y
var view_up = view_get_yview() + 32; //x, 0
var view_down = view_get_hview() + view_get_yview() - 86; //x, screenborder

//offscreen check
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

        draw_sprite_ext(sprite_get("hud_offscreen_arrow"), offscreen_image, offscreen_x_pos, offscreen_y_pos, 2, 2, 0, offscreen_col, 1);
        draw_sprite_ext(sprite_get("hud_offscreen_image"), 0, offscreen_x_pos+33, offscreen_y_pos+33, 2, 2, 0, c_white, 1); //ring
        //draw_sprite_ext(sprite_get("hud_offscreen_image"), 1, offscreen_x_pos+33, offscreen_y_pos+33, 2, 2, image_angle, c_white, 1); //arrow
    }
    else depth = orig_depth;
}

//hitbox view lol
if (player_id.hbox_view) draw_sprite_ext(mask_index, image_index, x, y, 1, 1, image_angle, c_white, 0.5);