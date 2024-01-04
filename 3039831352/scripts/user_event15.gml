//rainbow ring shader fix

if (rainbow_ring_shader) //reffers to when the shader should start reffering to itself as the rainbow ring
{
    //set new colors for rainbow ring
    if ("rainbow_ring_colorO" not in self)
    {
        rainbow_ring_colorO = array_clone(static_colorO);
        rainbow_ring_colorB = array_clone(static_colorB);
    }
    static_colorO = rainbow_ring_colorO;
    static_colorB = rainbow_ring_colorB;

    for (var i = 0; i < 7; i++)
    {
        var col = make_color_hsv((trick_ring_hue + floor(255/trick_ring_colors) * i)%255, trick_ring_saturation, trick_ring_value)

        var pos = i*4;
        //article colors
        static_colorO[pos] = color_get_red(col) / 255;
        static_colorO[pos+1] = color_get_green(col) / 255;
        static_colorO[pos+2] = color_get_blue(col) / 255;

        //shading
        static_colorB[pos] = 1;
    }
    static_colorO[32] = 0;
    static_colorO[33] = 0;
    static_colorO[34] = 0;
    static_colorO[35] = 1;
}
else //turn it back to sonic
{
    set_colors_back();
}

#define set_colors_back
{
    if (static_colorO[0] != temp_O[1])
    {
        for (var i = 0; i < 8; i++) //update sonic's colors for drawing
        {
            if (alt_cur < 32 && get_color_profile_slot_r(alt_cur, i + 8) != 999)
            {
                temp_O[i*4 + 0] = cur_colors[i + uses_super_colors*8][0]/255;
                temp_O[i*4 + 1] = cur_colors[i + uses_super_colors*8][1]/255;
                temp_O[i*4 + 2] = cur_colors[i + uses_super_colors*8][2]/255;
                temp_O[i*4 + 3] = cur_alpha[i];
            }
            else
            {
                temp_O[i*4 + 0] = cur_colors[i][0]/255;
                temp_O[i*4 + 1] = cur_colors[i][1]/255;
                temp_O[i*4 + 2] = cur_colors[i][2]/255;
                temp_O[i*4 + 3] = cur_alpha[i];
            }

            temp_B[i*4] = alt_cur > 32 ? 1 : shading_data[alt_cur][i + uses_super_colors * 8];
        }
        temp_O[8*4 + 0] = temp_outline_color[0]/255;
        temp_O[8*4 + 1] = temp_outline_color[1]/255;
        temp_O[8*4 + 2] = temp_outline_color[2]/255;
        temp_O[8*4 + 3] = 1;

        static_colorO = temp_O;
        static_colorB = temp_B;
    }
}