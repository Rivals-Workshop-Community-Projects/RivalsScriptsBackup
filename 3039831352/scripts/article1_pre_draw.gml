//article1_pre_draw.gml

if (state != 2)
{
    for (var _x = -2; _x <= 2; _x += 2) for (var _y = -2; _y <= 2; _y += 2)
    {
        gpu_set_fog(1, hud_owner_col, 1, 1);
        draw_sprite_ext(sprite_index, image_index, x + _x, y + _y, spr_dir, 1, image_angle, c_white, 1);
        gpu_set_fog(0, c_white, 1, 1);
    }
}

//changes colors whenever out on sonic's vfx
with (player_id)
{
    //shader manipulation
    rainbow_ring_shader = true;
    user_event(15);
    shader_start();
}