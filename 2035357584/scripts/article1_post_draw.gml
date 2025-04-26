//article1_post_draw

//offscreen indicator -- taken from Bar's "Tester" workshop character 
//https://steamcommunity.com/sharedfiles/filedetails/?id=2859046287&searchtext=tester
var view_left = view_get_xview() + 34; //0, y
var view_right = view_get_wview() + view_get_xview() - 34; //screenborder, y
var view_up = view_get_yview() + 32; //x, 0
var view_down = view_get_hview() + view_get_yview() - 86; //x, screenborder

article_offscreen = !(x >= view_left - 64 && x <= view_right + 64 && y >= view_up - 32 && y <= view_down + 85);

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

/* // trap outline
// why he out linin :joy:

if(!breakdown){
    if(aerial){
        draw_sprite_ext(sprite_get("airtrap_outline"), image_index, x, y, 1*spr_dir, 1, 0, hud_col, 1);
    }
    else{
        draw_sprite_ext(sprite_get("trap_outline"), 0, x, y, 1*spr_dir, 1, 0, hud_col, 1);
    }
}

/*