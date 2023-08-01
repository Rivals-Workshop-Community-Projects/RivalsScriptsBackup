//article3_post_draw.gml
//particle generation

with (player_id)
{
    //particle system
    for(var i = 0; i < array_length(fx_part); i++)
    {
        var cur_part = fx_part[i];

        if (cur_part.shader) shader_start();
        if (cur_part.layer == 0)
        {
            gpu_set_fog(cur_part.filled, cur_part.color, 0, 1);
            draw_sprite_ext(
                cur_part.spr,
                cur_part.img,
                cur_part.xpos,
                cur_part.ypos,
                cur_part.xscale * cur_part.dir,
                cur_part.yscale,
                cur_part.angle,
                cur_part.color,
                cur_part.alpha
            )
            gpu_set_fog(false, cur_part.color, 0, 0);
        }
        if (cur_part.shader) shader_end();
    }
}