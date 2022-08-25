// pre-draw

if (state == PS_RESPAWN || respawn_taunt > 0)
{
    draw_sprite_ext(sprite_get(is_gb ? "plat_back_gb" : "plat_back"), 0, x+1, y, 2, 2, 0, c_white, 1);
}

if (fs_alpha_bg > 0) rectDraw(view_get_xview(), view_get_yview(), view_get_wview(), view_get_hview(), bg_col, fs_alpha_bg*0.5);


//wind glider
if (wind_glider_toggle && windglider_open_time >= 5) draw_sprite_ext(sprite_get("runeK_glider"), state_timer*0.25, x-4*spr_dir, y-48, 2, 2, 0, c_white, 1);



// RAIDEN SHOGUN RESOLVE
shader_start();
if (has_resolve_mechanic && resolve_cur > 0)
{
    //draw_circle_gauge(x, y-48, resolve_cur, resolve_max, 48);

    if (get_gameplay_time() % 6 == 0) vhd_alpha = (vhd_alpha == 0.8) ? 1 : 0.8;

    draw_sprite_ext(sprite_get("runeO_line"), resolve_cur/resolve_max*64, x, y-48, 2, 2, 0, c_white, vhd_alpha);
    draw_sprite_ext(sprite_get("runeO_main"), resolve_cur/resolve_max*6, x, y-48, 2, 2, 0, c_white, vhd_alpha);
}
shader_end();

#define circleDraw(x1, y1, radius, color)
{
    draw_circle_color(x1, y1, radius, color, color, false);
}

#define rectDraw(x1, y1, width, height, color, alpha)
{
    draw_set_alpha(alpha);
    draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
    draw_set_alpha(1);
}

/*
#define draw_circle_gauge(_x, _y, _value, _max, _radius)
{
    if (_value > 0)
    {
        var i, len, tx, ty, val;
        var num_sections = 90;
        var size_sections = 360/num_sections;
        val = (_value/_max) * num_sections;

        draw_sprite_ext(sprite_get("fx_runeO_line"), 0, _x, _y, 2, 2, 0, c_white, 1);

        //gpu_set_blendenable(false);
        //gpu_set_colorwriteenable(false, false, false, true);
        if (val > 1)
        {
            draw_primitive_begin(pr_trianglefan);
            draw_vertex(_x, _y);
            for (var i = 0; i < val; ++i)
            {
                len = (i*size_sections + 90);
                tx = lengthdir_x(_radius, len);
                ty = lengthdir_y(_radius, len);
                draw_vertex(_x + tx, _y + ty);
            }
            draw_primitive_end();
        }
        //gpu_set_colorwriteenable(true, true, true, true);
        //gpu_set_blendenable(true);

        gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
        gpu_set_alphatestenable(true);
        draw_sprite_ext(sprite_get("fx_runeO_line"), 1, _x, _y, 2, 2, 0, c_white, 1);
        //draw_set_color(blend_color);
        gpu_set_alphatestenable(false);
        gpu_set_blendmode(bm_normal);
    }
}