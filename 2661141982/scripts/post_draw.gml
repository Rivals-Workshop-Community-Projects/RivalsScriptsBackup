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

//Genesis
if(get_player_color(player) == 11)
{
    var rand_x, rand_y;
    rand_x = random_func(3,75,true);
    rand_y = random_func(6,50,true);
    if(random_func(2, 100, false) > 95)
        draw_sprite_part_ext(sprite_index,image_index,50+rand_x,25+rand_y,random_func(8,200,true),random_func(2,200,true),x-20*spr_dir+(random_func(6,20,true)+rand_x)*spr_dir,y-80+random_func(10,20,true)+rand_y,spr_dir,1,c_white,1);
}
shader_end();