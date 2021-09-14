switch (get_player_color(player))
{
    //early access alt
    case 5:
    {
        for(var i = 0; i < 8; ++i)
        {
            set_character_color_shading(i, 0);
        }
    }
    break;
    //metal
    case 18:
    {
        set_character_color_shading(0, 3);
        set_character_color_shading(7, 2);
    }
    break;
    //tanjiro
    case 24:
    {
        if ("state" in self)
        {
            if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack != AT_TAUNT && attack != AT_TAUNT_2 && attack != AT_EXTRA_1)
            {
                if (get_player_damage(player) < 100)
                    set_character_color_slot(0, 102, 182, 222, 1);
                else if (state_timer % 3)
                    set_character_color_slot(0, 242, 69, 27, 1);
                else
                    set_character_color_slot(0, 254, 251, 112, 1);
            }
            else
                set_character_color_slot(0, 24, 30, 37, 1);
        }
    }
    break;
    //astral
    case 26:
    {
        AstralColours(1, 219, 64, 180, 82, 64, 219 );
        AstralColours(2, 158, 35, 105, 35, 37, 158 );
        AstralColours(3, 173, 20, 181, 20, 146, 181);
        AstralColours(4, 109, 34, 122, 34, 91, 122 );
    }
    break;
    //redline
    case 27:
    {
        set_character_color_shading(0, 3);
        set_character_color_shading(7, 3);
    }
    break;
    //champion
    case 28:
    {
	    var temp_a = 0.6;
	    var temp_r = get_color_profile_slot_r(28, 0);
	    var temp_g = get_color_profile_slot_g(28, 0);
	    var temp_b = get_color_profile_slot_b(28, 0);
	    set_character_color_slot(0, temp_r, temp_g, temp_b, temp_a);
	    set_article_color_slot(0, temp_r, temp_g, temp_b, temp_a);
	    temp_r = get_color_profile_slot_r(28, 5);
	    temp_g = get_color_profile_slot_g(28, 5);
	    temp_b = get_color_profile_slot_b(28, 5);
	    set_character_color_slot(5, temp_r, temp_g, temp_b, temp_a);
	    set_article_color_slot(5, temp_r, temp_g, temp_b, temp_a);
	    temp_r = get_color_profile_slot_r(28, 6);
	    temp_g = get_color_profile_slot_g(28, 6);
	    temp_b = get_color_profile_slot_b(28, 6);
	    set_character_color_slot(6, temp_r, temp_g, temp_b, temp_a);
	    set_article_color_slot(6, temp_r, temp_g, temp_b, temp_a);
    }
    break;
}

outline_colour = [0, 0, 0];
switch (get_player_color(player))
{
    case 3:  outline_colour = [60,   0,   60]; break;
    case 5:  outline_colour = [35,   67,  49]; break;
    case 21: outline_colour = [90,   31,   7]; break;
}

if ("teleFlash" in self && teleFlash > 0)
{
	var glow_value = abs(8-teleFlash)/8;
	outline_color = [	lerp(255,outline_colour[0],glow_value), 
						lerp(255,outline_colour[1],glow_value),
						lerp(255,outline_colour[2],glow_value) ];
}
else outline_color = outline_colour;

if (object_index == asset_get("draw_result_screen") && gpu_get_alphatestfunc())
{
    winner_name = "Void Dragon Lonin wins!";
}

#define AstralColours(_index, _r, _g, _b, _r2, _g2, _b2)
{
    var lerpAmount = y/room_height;
    set_character_color_slot(   _index,
                                floor(lerp(_r, _r2, lerpAmount)),
                                floor(lerp(_g, _g2, lerpAmount)),
                                floor(lerp(_b, _b2, lerpAmount)),
                                1);
}