//other_pre_draw.gml

if (instance_exists(bar_sonic_reticle_owner)) with (bar_sonic_reticle_owner)
{
    static_colorO[4] = cur_colors[1][0]/255;
    static_colorO[5] = cur_colors[1][1]/255;
    static_colorO[6] = cur_colors[1][2]/255;
    static_colorB[4] = alt_cur > array_length(shading_data) ? 1 : shading_data[alt_cur][1];
    
    //outline
    var pos = 2*8 //shoes
    static_colorO[pos] = nspec_reticle_line_col[0]/255;
    static_colorO[pos+1] = nspec_reticle_line_col[1]/255;
    static_colorO[pos+2] = nspec_reticle_line_col[2]/255;
    shader_start();

    //draw reticle sprite
    draw_sprite_ext(
        reticle_spr, other.nspec_reticle_time + 4,
        other.x, other.y - floor(other.char_height/1.75),
        2, 2, 0, c_white, 1
    );
    shader_end();
}