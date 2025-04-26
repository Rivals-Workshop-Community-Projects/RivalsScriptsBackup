//init_shader.gml
//we use this script for color shenanigans, when we want to mess with the colors in the colors.gml script a bit beyond what we can do normally
//this includes messing with the shading contrast, applying transperency etc.

//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

switch (alt_cur)
{
    case 0: //default - colormapped the color of the face
        set_character_color_slot(2, 0, 0, 0);
		set_article_color_slot(2, 0, 0, 0);
        break;
    case 10: //shadow
        set_outline(150, 0, 0);
        break;
    case 8: //BLW
        set_shading(1, 1, 1, -6);
        break;
    case 12: //rainbow v2
        set_shading(1, 1, 1, -1);
        break;
    case 14: //gameboy / early access - gameboy palletes don't have shading
        set_shading(0, 0, 0, 1);
		set_outline(15, 56, 15);
        //outline_color = [15, 56, 15];
        break;
    case 15: //milestone - this alt has black transperency and a unique outline
        set_character_color_slot(0, 0, 0, 0, 0.2);
        set_character_color_slot(1, 0, 0, 0, 0.6);
        set_outline(0, 255, 0);
        break
}


//this function makes it so outlines are always consistent across all screens
#define set_outline(r, g, b)
{
    if ("outline_color" not in self || outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0 && !burned)
    {
        var start = 8*4; //outline
        colorO[start] = r/255;
        colorO[start+1] = g/255;
        colorO[start+2] = b/255;
    }
}
//function that allows you to change the shading strength of alts more effectively
//keep a value as 1 if it shouldn't have any changes, but you must include the 1s (see examples above with the BLW/brown and rainbow v2 alts)
#define set_shading()
{
    //this hacky code essencially lets us detect how many color slots we are actually using
    //we do this for the shading loop below to not error or crash as there's an insufficient number of slots
    //keep in mind that if for some reason you have color shade slot 28 as an extra but your usual amount ends at 7 it will NOT read slot 28
    if ("max_shade" not in self)
    {
        max_shade = 0;
        while (get_color_profile_slot_range(max_shade, 0) != 0) max_shade ++; //counts up as long as there's shade slots remaining
    }

    //pushes to the function the option for all the available slots' shading changes in order
    for (var i = 0; i < max_shade; i++) set_character_color_shading(i, argument[i]);
}