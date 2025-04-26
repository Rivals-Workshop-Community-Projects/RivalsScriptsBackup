//pre_draw.gml

shader_start();

if (dark_state > -1 && variable_instance_exists(dark_spr[dark_state], "spr")) //transfer animation is a wip
{
    if (dark_state == 3) //travel between enemy and player
    {
        draw_sprite_ext(
            sprite_get("fx_darkorb_travel"),
            lerp(0, sprite_get_number(sprite_get("fx_darkorb_travel")), dark_timer/dark_spr[dark_state].anim_spd),
            floor(lerp(dark_target_prev.x, dark_target.x, 0.5)),
            floor(lerp(dark_target_prev.y - dark_target_prev.char_height / 1.75, dark_target.y - dark_target.char_height / 1.75, 0.5)),
            point_distance(dark_target_prev.x, dark_target_prev.y, dark_target.x, dark_target.y) / (128),
            2,
            point_direction(dark_target_prev.x, dark_target_prev.y, dark_target.x, dark_target.y),
            c_white, dark_alpha.cur
        );
    }
    if (dark_state == 5) //transition from when an enemy is dead to player
    {
        draw_sprite_ext(
            sprite_get("fx_darkorb_travel"),
            lerp(0, sprite_get_number(sprite_get("fx_darkorb_travel")), dark_timer/dark_spr[dark_state].anim_spd),
            floor(lerp(dark_last_coords[0], x, 0.5)),
            floor(lerp(dark_last_coords[1], y - char_height / 1.75, 0.5)),
            point_distance(dark_last_coords[0], dark_last_coords[1], x, y) / (128),
            2,
            point_direction(dark_last_coords[0], dark_last_coords[1], x, y),
            c_white, dark_alpha.cur
        );
    }

    if (dark_target == self) //current target
    {
        var dir_check = 0;
        var img_check = dark_img;
        if (dark_state == 3)
        {
            img_check = lerp(sprite_get_number(dark_spr[dark_state].spr)-1, 0, dark_timer/dark_spr[dark_state].anim_spd);
            dir_check = point_direction(dark_target.x, dark_target.y, dark_target_prev.x, dark_target_prev.y);
        }
        else if (dark_state == 5)
        {
            img_check = lerp(sprite_get_number(dark_spr[dark_state].spr)-1, 0, dark_timer/dark_spr[dark_state].anim_spd);
            dir_check = point_direction(x, y, dark_last_coords[0], dark_last_coords[1]);
        }

        draw_sprite_ext(
        dark_spr[dark_state].spr, img_check,
        floor(dark_target.x + dark_target.draw_x),
        floor(dark_target.y - dark_target.char_height / 1.75 + dark_target.draw_y),
        2, 2, dir_check,
        c_white, dark_alpha.cur);
    }

    if (dark_target_prev == self && dark_state == 3) //transfer from previous darkness target
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