// pre-draw

if (state == PS_RESPAWN || attack == AT_TAUNT && state == PS_ATTACK_GROUND && free == true)
{
    if (alt_cur != 14) draw_sprite_ext(sprite_get("plat_back"), 0, x+1, y, 2, 2, 0, c_white, 1);
    else draw_sprite_ext(sprite_get("plat_back_gb"), 0, x+1, y, 2, 2, 0, c_white, 1);
}

if (fs_alpha_bg > 0) rectDraw(view_get_xview(), view_get_yview(), view_get_wview(), view_get_hview(), bg_col, fs_alpha_bg*0.5);


//circleDraw(x, y, 400, c_blue);

#define circleDraw(x1, y1, radius, color)
draw_circle_color(x1, y1, radius, color, color, false);

#define rectDraw(x1, y1, width, height, color, alpha)
draw_set_alpha(alpha);
draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
draw_set_alpha(1);