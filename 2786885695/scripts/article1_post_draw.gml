//article1_post_draw - lightning stilleto

///////////////////////////////////////////////////// OWNER INDICATOR /////////////////////////////////////////////////////

if (state == 1 && player_id.stilleto_id == noone && !stilleto_offscreen && player_id.attack != player_id.AT_INTRO)
{
    draw_sprite_ext(sprite_get("hud_player_arrow"), 0, x, y-player_id.char_height+24, 2, 2, 0, p_col, 1);
}

///////////////////////////////////////////////////// OFFSCREEN INDICATOR /////////////////////////////////////////////////////

//capture area + sprite offsets
var view_left = view_get_xview() + 34; //0, y
var view_right = view_get_wview() + view_get_xview() - 34; //screenborder, y
var view_up = view_get_yview() + 32; //x, 0
var view_down = view_get_hview() + view_get_yview() - 86; //x, screenborder

//if the article is inside of the screen [stilleto_offscreen] is false
if (x >= view_left - 48 && x <= view_right + 48 && y >= view_up - 64 && y <= view_down + 118) stilleto_offscreen = false;
else stilleto_offscreen = true;

if (stilleto_offscreen && state == 1 && !player_id.playtest_active)
{
    //screen limits x
    if (x < view_left) offscreen_x_pos = view_left;
    else if (x > view_right) offscreen_x_pos = view_right;
    else offscreen_x_pos = x;

    //screen limits y
    if (y < view_up) offscreen_y_pos = view_up;
    else if (y > view_down) offscreen_y_pos = view_down; //tweak this so the indicator appears when the marker actually is offscreen
    else offscreen_y_pos = y;

    //image angles
    if (x < view_left)
    {
        if (y < view_up) arrow_image = 1;
        else if (y > view_down) arrow_image = 7;
        else  arrow_image = 0;
    }
    else if (x > view_right)
    {
        if (y < view_up) arrow_image = 3;
        else if (y > view_down) arrow_image = 5;
        else  arrow_image = 4;
    }
    else
    {
        if (y < view_up) arrow_image = 2;
        else if (y > view_down) arrow_image = 6;
    }

    //drawing the sprites
    if (player_id.stilleto_id == noone)
    {
        draw_sprite_ext(sprite_get("offscreen_arrow"), arrow_image, offscreen_x_pos, offscreen_y_pos, 2, 2, 0, p_col, 1);
        draw_sprite_ext(sprite_get("offscreen_icons"), 0, offscreen_x_pos, offscreen_y_pos, 2, 2, 0, c_white, 1);
    }
}


///////////////////////////////////////////////////// UNUSED & DEBUGGING /////////////////////////////////////////////////////

if (state == 1 && !stilleto_offscreen && player_id.debug_keqing)
{
    //debug
    draw_debug_text(x-32, y+32, "state = " + string(state));
    draw_debug_text(x-32, y+48, "timer = " + string(active_time));
    draw_debug_text(x-32, y+64, "x,y = " + string(x) + "," + string(y));
}


//center of the screen, i don't really need it but it's nice to know how to do it
//var view_center_x = view_get_xview() + view_get_wview()/2;
//var view_center_y = view_get_yview() + view_get_hview()/2;

//rectDraw(x, y, 1, 1, c_red);
//rectDraw(view_left, view_up, 1, 1, $00ffff);
//rectDraw(view_right, view_up, 1, 1, $00ffff);
//rectDraw(view_left, view_down, 1, 1, $00ffff);
//rectDraw(view_right, view_down, 1, 1, $00ffff);
//rectDraw(view_get_xview() + view_get_wview()/2, view_get_yview() + view_get_hview()/2, 1, 1, c_red);

#define rectDraw(x1, y1, width, height, color)
draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);