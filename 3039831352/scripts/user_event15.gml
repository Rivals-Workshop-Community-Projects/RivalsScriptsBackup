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
}
else //turn it back to sonic
{
    static_colorO = temp_O;
    static_colorB = temp_B;

    print (temp_O)
}