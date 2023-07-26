//other_pre_draw.gml

if (darkness_owner == noone || darkness_owner == self) exit;
else
{
    if (dark_state > -1 && dark_state < 4)
    {
        with (darkness_owner)
        {
            shader_start();
            draw_sprite_ext(
                dark_sprite[other.dark_state][0],
                dark_image,
                floor(other.x),
                floor(other.y - other.char_height / 1.75),
                2, 2,
                other.dark_state == 2 || other.dark_state == 3 ? point_direction(other.x, other.y, x, y) : 0,
                c_white, dark_alpha
            );
            shader_end();
        }
    }
}