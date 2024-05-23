//other_pre_draw.gml

with (dark_owner_last)
{
    shader_start();
    if (dark_state > -1 && variable_instance_exists(dark_spr[dark_state], "spr")) //transfer animation is a wip
    {
        if (dark_target == other) //current target
        {
            draw_sprite_ext(
            dark_spr[dark_state].spr,
            (dark_state != 3) ? dark_img : lerp(sprite_get_number(dark_spr[dark_state].spr)-1, 0, dark_timer/dark_spr[dark_state].anim_spd),
            floor(dark_target.x + dark_target.draw_x),
            floor(dark_target.y - dark_target.char_height / 1.75 + dark_target.draw_y),
            2, 2,
            (dark_state != 3) ? 0 : point_direction(dark_target.x, dark_target.y, dark_target_prev.x, dark_target_prev.y),
            c_white, dark_alpha.cur);
        }

        if (dark_target_prev == other && dark_state == 3) //transfer from previous darkness target
        {
            draw_sprite_ext(
                dark_spr[dark_state].spr,
                dark_img,
                floor(dark_target_prev.x + dark_target_prev.draw_x),
                floor(dark_target_prev.y - dark_target_prev.char_height / 1.75 + dark_target_prev.draw_y),
                2, 2,
                point_direction(dark_target_prev.x, dark_target_prev.y, dark_target.x, dark_target.y),
                c_white, dark_alpha.cur
            );
        }
    }
    shader_end();
}