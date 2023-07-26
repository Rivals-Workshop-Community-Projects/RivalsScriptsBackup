//pre_draw.gml

shader_start();

//darkness orb
if (dark_state > -1 && dark_state < 4 && darkness_id != noone && darkness_owner == self)
{
    draw_sprite_ext(
        dark_sprite[dark_state][0],
        dark_image,
        floor(x),
        floor(y - char_height / 1.75),
        2, 2,
        (dark_state == 2 || dark_state == 3) && darkness_id != noone ? point_direction(x, y, darkness_id.x, darkness_id.y) : 0,
        c_white, dark_alpha
    );
}

shader_end();