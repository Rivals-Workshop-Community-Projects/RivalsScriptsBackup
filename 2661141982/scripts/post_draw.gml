//ZOOM BITCH
draw_sprite_ext(sprite_get("lefishe"),0,view_get_xview(),view_get_yview(),2,2,0,c_white,fishe);

shader_start();
if(attack == 49 && fs_cinematic && window >= 6 && window <= 9 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
{
    hud_offset = 999;
    draw_sprite_ext(sprite_index, image_index, x, y+50, 2*spr_dir, 2, 0, c_white, 1);
    if(window == 9)
    {
        draw_sprite_ext(sprite_get("beamfs"), get_gameplay_time() / 4, x, y-256, ease_quadOut(0,5,window_timer,15), 2, 0, c_white, 1);
        draw_sprite_ext(sprite_get("beamfs"), get_gameplay_time() / 4, x, y, ease_quadOut(0,5,window_timer,15), 2, 0, c_white, 1);
        draw_sprite_ext(sprite_get("beamfs"), get_gameplay_time() / 4, x, y+256, ease_quadOut(0,5,window_timer,15), 2, 0, c_white, 1)
        draw_set_alpha(ease_quadOut(0,1,window_timer,20));
        draw_triangle_colour(-5000, -5000, 5000, 5000, 5000, -5000, c_white, c_white, c_white, 0);
        draw_triangle_colour(-5000, -5000, 5000, 5000, -5000, 5000, c_white, c_white, c_white, 0);
        draw_set_alpha(1)
    }
}
else
{
    fs_zoom = 1;
    fs_go_to_hud = false;
}
shader_end();