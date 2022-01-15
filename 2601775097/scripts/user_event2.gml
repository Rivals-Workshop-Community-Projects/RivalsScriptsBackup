//user event 2 - fancy visuals (update) + theikos rune (update)

if (helel_alt)
{
    color_rate += 5;
    if (color_rate >= 255) color_rate = 0;

    var color_slot = 25; //helel alt is alt 25 now

    var color_rgb = make_color_rgb(255, 0, 0);
    var hue = (color_get_hue(color_rgb)+color_rate) mod 255;
    var helel_hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb));

    //light
    set_color_profile_slot(color_slot ,alt_col_light , color_get_red(helel_hsv) ,color_get_green(helel_hsv) ,color_get_blue(helel_hsv));
    set_article_color_slot(alt_col_light, color_get_red(helel_hsv), color_get_green(helel_hsv), color_get_blue(helel_hsv));

    //fire
    set_color_profile_slot(color_slot ,alt_col_fire , color_get_red(helel_hsv)-120 ,color_get_green(helel_hsv)-120 ,color_get_blue(helel_hsv)-120);
    set_article_color_slot(alt_col_fire, color_get_red(helel_hsv)-120 ,color_get_green(helel_hsv)-120 ,color_get_blue(helel_hsv)-120);



    //afterimage work
    var helel_r = get_color_profile_slot_r(color_slot, alt_col_light);
    var helel_g = get_color_profile_slot_g(color_slot, alt_col_light);
    var helel_b = get_color_profile_slot_b(color_slot, alt_col_light);
    var helel_blend_color = make_colour_rgb(helel_r, helel_g, helel_b);

    //blur logic from the joke motion blur character
    for(var i = array_length_1d(helel_blur) - 1; i > 0; i--) helel_blur[@ i] = helel_blur[i - 1];
    helel_blur[@ i] = [sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, helel_blend_color, image_alpha];
    init_shader();
}

//hair flash (needs to be seperated cuz it needs to update)
if (theikos_alt)
{
    if (theikos_color_increase)
    {
        theikos_color_alpha += theikos_color_rate;
        theikos_red += theikos_redrate;
        theikos_green += theikos_greenrate;
        theikos_blue += theikos_bluerate;

        if (theikos_color_alpha >= theikos_color_maxTime) theikos_color_increase = false;
    }
    else
    {
        theikos_color_alpha -= theikos_color_rate; //this only controls the "if" statements
        theikos_red -= theikos_redrate;
        theikos_green -= theikos_greenrate;
        theikos_blue -= theikos_bluerate;

        if (theikos_color_alpha <= 0) theikos_color_increase = true;
    }
    set_color_profile_slot(26, alt_col_hair, theikos_red, theikos_green, theikos_blue);
    init_shader();
}

//merge_color(small num, big num, time);