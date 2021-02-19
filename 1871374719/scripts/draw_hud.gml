//draw_hud - the x position of your HUD element is 48*(i-1)

// UStrong HUD Icon
var temp_color = c_white;
if (move_cooldown[AT_USTRONG] > 0) temp_color = c_gray;

switch (ustrng)
{
	case 7:
		draw_sprite_ext(sprite_get("ustrong_artifact_icon"), 0, temp_x+186, temp_y-20, 2, 2, 0, temp_color, 1);
	break;
	case 6:
		draw_sprite_ext(sprite_get("ustrong_snow_icon"), 0, temp_x+186, temp_y-20, 2, 2, 0, temp_color, 1);
	break;
	default:
		draw_sprite_ext(sprite_get("ustrong_bone_icon"), 0, temp_x+186, temp_y-20, 2, 2, 0, temp_color, 1);
}


// FSpecial HUD Icon
if (carfuel <= 100 && carfuel >= 9 || move_cooldown[AT_FSPECIAL] > 0)
{
	draw_sprite_ext(sprite_get("fspecial_icon"), 0, temp_x+155, temp_y-22, 2, 2, 0, c_white, 1);
}

if ((carfuel >= 90 && carfuel <= 99) || (move_cooldown[AT_FSPECIAL] <= 4 && move_cooldown[AT_FSPECIAL] >= 1))
{
	draw_sprite_ext(sprite_get("fspecial_icon"), 1, temp_x+155, temp_y-22, 2, 2, 0, c_gray, 1);
}
else 
{
	if ((carfuel >= 80 && carfuel <= 89) || (move_cooldown[AT_FSPECIAL] <= 8 && move_cooldown[AT_FSPECIAL] >= 5))
	{
		draw_sprite_ext(sprite_get("fspecial_icon"), 2, temp_x+155, temp_y-22, 2, 2, 0, c_gray, 1);
	}
	else
	{
		if ((carfuel >= 70 && carfuel <= 79) || (move_cooldown[AT_FSPECIAL] <= 12 && move_cooldown[AT_FSPECIAL] >= 9))
		{
			draw_sprite_ext(sprite_get("fspecial_icon"), 3, temp_x+155, temp_y-22, 2, 2, 0, c_gray, 1);
		}
		else
		{
			if ((carfuel >= 60 && carfuel <= 69) || (move_cooldown[AT_FSPECIAL] <= 16 && move_cooldown[AT_FSPECIAL] >= 13))
			{
				draw_sprite_ext(sprite_get("fspecial_icon"), 4, temp_x+155, temp_y-22, 2, 2, 0, c_gray, 1);
			}
			else
			{
				if ((carfuel >= 50 && carfuel <= 59) || (move_cooldown[AT_FSPECIAL] <= 20 && move_cooldown[AT_FSPECIAL] >= 17))
				{
					draw_sprite_ext(sprite_get("fspecial_icon"), 5, temp_x+155, temp_y-22, 2, 2, 0, c_gray, 1);
				}
				else
				{
					if ((carfuel >= 40 && carfuel <= 49) || (move_cooldown[AT_FSPECIAL] <= 24 && move_cooldown[AT_FSPECIAL] >= 21))
					{
						draw_sprite_ext(sprite_get("fspecial_icon"), 6, temp_x+155, temp_y-22, 2, 2, 0, c_gray, 1);
					}
					else
					{
						if ((carfuel >= 30 && carfuel <= 39) || (move_cooldown[AT_FSPECIAL] <= 28 && move_cooldown[AT_FSPECIAL] >= 25))
						{
							draw_sprite_ext(sprite_get("fspecial_icon"), 7, temp_x+155, temp_y-22, 2, 2, 0, c_gray, 1);
						}
						else
						{
							if ((carfuel >= 20 && carfuel <= 29) || (move_cooldown[AT_FSPECIAL] <= 32 && move_cooldown[AT_FSPECIAL] >= 29))
							{
								draw_sprite_ext(sprite_get("fspecial_icon"), 8, temp_x+155, temp_y-22, 2, 2, 0, c_gray, 1);
							}
							else
							{
								if ((carfuel >= 10 && carfuel <= 19) || (move_cooldown[AT_FSPECIAL] <= 36 && move_cooldown[AT_FSPECIAL] >= 33))
								{
									draw_sprite_ext(sprite_get("fspecial_icon"), 9, temp_x+155, temp_y-22, 2, 2, 0, c_gray, 1);
								}
								else
								{
									if ((carfuel < 10) && (move_cooldown[AT_FSPECIAL] <= 40 && move_cooldown[AT_FSPECIAL] >= 37))
									{
										draw_sprite_ext(sprite_get("fspecial_icon"), 10, temp_x+155, temp_y-22, 2, 2, 0, c_gray, 1);
									}
								}
							}
						}
					}
				}
			}
		}
	}
}


//abyss gui code
ab_hud_x = temp_x;
ab_hud_y = temp_y;
//this is for the outdated warning message
if ("depNotice" not in self) depNotice = 0;
if (abyssEnabled && (menuActive || timerActive)) abyssDraw();
#define abyssDraw 
/// abyssDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_drawArray" in self && ds_list_valid(abyss_drawArray))  {
    if (ds_list_size(abyss_drawArray) > 0) {
        for (var _i = 0; _i < ds_list_size(abyss_drawArray);_i++) {
            var _text = abyss_drawArray[| _i];
            if draw_get_halign() != _text[6] {
                draw_set_halign(_text[6]);
            }
            switch (_text[0]) {
                case 0:
                    draw_debug_text(floor(_text[1]),floor(_text[2]),string(_text[3]));
                    break;
                case 1:
                    draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
                    break;
                case 2:
                    draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
                    break;
                case 3:
                    if draw_get_font() != 1 draw_set_font(1);
                    draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
                    break;
                default:
                break;
            }
        }
    }
    //finished drawing, so clear the table for the next frame.
    ds_list_clear(abyss_drawArray);
}
//return draw_calls;
#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.
var x = argument[0], y = argument[1], text = argument[2], font = argument[3];
var color = argument_count > 4 ? argument[4] : c_white;
if draw_get_font() != font {
    draw_set_font(font);
}
draw_text_color(x+2,y,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x-2,y,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y-2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y+2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x+2,y-2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x-2,y-2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x+2,y+2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x-2,y+2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y,text,color,color,color,color,1);