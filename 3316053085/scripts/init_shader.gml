//init_shader.gml

if ("shader_stop" in self && shader_stop) exit;

//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

if ("s_alt" not in self)
{
    s_alt = (get_player_name(player) == "SMURF"); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
}

if ("s_alt" in self && s_alt)
{
    set_all_color_slot(0, 252, 254, 255); //pink
    set_all_color_slot(1, 255, 239, 125); //hair
    set_all_color_slot(2, 156, 191, 255); //skin
    set_all_color_slot(3, 252, 254, 255); //white
    set_all_color_slot(4, 252, 254, 255); //black
    set_all_color_slot(5, 252, 254, 255); //leaf
    set_all_color_slot(6, 194, 249, 255); //holy water main
    set_all_color_slot(7, 125, 219, 255); //holy water sub
    set_shading(1, 1, 1.5, 1, 1, 1, 1, 1);
    set_outline(0, 0, 0);
}
else
{
    switch (alt_cur)
    {
        case 3: set_shading(1, 1, 1, 1, 1, 1, -2, 1); break; //asra
        case 4: set_shading(1, 1, 1, 1, 1, 1, 1, 0.5); break; //arc
        case 5: set_shading(1, 1, 1, 1, 1, 1, -1.5, 1); break; //omer
        case 6: set_shading(0.5, 1.5, 1, 1, 1, 1, -1, -1); break; //lillith
        case 8: set_shading(1, 1, 1, 2, 1, 1, 1, 1); break; //amy
        case 10: //byakuren alt
            if (object_index == asset_get("stage_HUD"))
            {
                set_ui_element(UI_HUD_ICON, sprite_get("ex1_hudnorm"));
                sprite_change_offset("ex1_hudnorm",0, -2);
            }
            //forces the results side portrait and the stage hud to have no color tolerances so the byakuren can take over
            if (object_index == asset_get("result_screen_box") || object_index == asset_get("stage_HUD"))
            {
                colorT[(1 * 4) + 0] = 0;
                colorT[(1 * 4) + 1] = 0;
                colorT[(1 * 4) + 2] = 0;
                colorT[(6 * 4) + 0] = 0;
                colorT[(6 * 4) + 1] = 0;
                colorT[(6 * 4) + 2] = 0;
            }

            if ("orig_hsv" in self && object_index == oPlayer) //set HSV values back to normal
            {
                set_color_profile_slot_range(1, orig_hsv[0][0], orig_hsv[0][1], orig_hsv[0][2]);
                set_color_profile_slot_range(6, orig_hsv[1][0], orig_hsv[1][1], orig_hsv[1][2]);
            }
            
            //hair color
            colorO[4 * 1 + 3] = 0;

            if (object_index != oPlayer && object_index != oTestPlayer)
            {
                if ("venus_color1" not in self) //rainbow stuff
                {
                    venus_color1 = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    venus_color2 = 240; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                }
                else
                {
                    //loops variable around (there's a total of 256 hues) to rotate between
                    venus_color1 += 1; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    if (venus_color1 >= 255) venus_color1 -= 255;

                    var color_rgb = make_color_rgb(255, 0, 0);
                    var hue = (color_get_hue(color_rgb) + venus_color1) % 255;
                    var hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb));
                    set_color_profile_slot(alt_cur, 6, color_get_red(hsv) + 300, color_get_green(hsv) + 300, color_get_blue(hsv) + 300);
                    set_article_color_slot(6, color_get_red(hsv) + 300, color_get_green(hsv) + 300, color_get_blue(hsv) + 300);

                    venus_color2 += 1; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    if (venus_color2 >= 255) venus_color2 -= 255;

                    var color_rgb = make_color_rgb(255, 0, 0);
                    var hue = (color_get_hue(color_rgb) + venus_color2) % 255;
                    var hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb));
                    set_color_profile_slot(alt_cur, 7, floor(color_get_red(hsv)*0.8), floor(color_get_green(hsv)*0.8), floor(color_get_blue(hsv)*0.8));
                    set_article_color_slot(7, floor(color_get_red(hsv)*0.8), floor(color_get_green(hsv)*0.8), floor(color_get_blue(hsv)*0.8));
                }
            }
            break;
        case 11: set_shading(1, 1.3, 1, 1, 1, 0.4, 1, 1); break; //rena
        case 13: set_shading(1, 1.2, 1, 1, 2, 1, 1, 1); break; //abyss
        case 14: //gameboy
            set_shading(0, 0, 0, 0, 0, 0, 0, 0);
            set_outline(15, 56, 15);
            break;
        case 15: set_shading(1, 1, 1, 2.2, 1, 1, 1, 1); break; //milestone - 2013
        case 19: //NES peach
            if (object_index != oPlayer && object_index != oTestPlayer)
            {
                if ("venus_array_color1" not in self)
                {
                    color_timer = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    venus_color_used = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    venus_array_color1 = [ // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                        [get_color_profile_slot_r(alt_cur, 1), get_color_profile_slot_g(alt_cur, 1), get_color_profile_slot_b(alt_cur, 1)],
                        [12, 147, 0],
                        [181, 49, 32],
                        [0, 0, 0]
                    ];
                    venus_array_color2 = [ // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                        [get_color_profile_slot_r(alt_cur, 3), get_color_profile_slot_g(alt_cur, 3), get_color_profile_slot_b(alt_cur, 3)],
                        [234, 158, 34],
                        [255, 255, 255],
                        [153, 78, 0]
                    ];
                    orig_light_main = [get_color_profile_slot_r(alt_cur, 6), get_color_profile_slot_g(alt_cur, 6), get_color_profile_slot_b(alt_cur, 6)]; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    orig_light_sub = [get_color_profile_slot_r(alt_cur, 7), get_color_profile_slot_g(alt_cur, 7), get_color_profile_slot_b(alt_cur, 7)]; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                }
                else
                {
                    color_timer ++;
                    if (color_timer % 20 == 0)
                    {
                        venus_color_used ++;
                        if (venus_color_used >= array_length(venus_array_color1)) venus_color_used = 0;
                    }

                    colorO[6*4+0] = lerp(orig_light_main[0], venus_array_color1[venus_color_used][0], 0.5)/255;
                    colorO[6*4+1] = lerp(orig_light_main[1], venus_array_color1[venus_color_used][1], 0.5)/255;
                    colorO[6*4+2] = lerp(orig_light_main[2], venus_array_color1[venus_color_used][2], 0.5)/255;
                    colorO[7*4+0] = lerp(orig_light_sub[0], venus_array_color2[venus_color_used][0], 0.5)/255;
                    colorO[7*4+1] = lerp(orig_light_sub[1], venus_array_color2[venus_color_used][1], 0.5)/255;
                    colorO[7*4+2] = lerp(orig_light_sub[2], venus_array_color2[venus_color_used][2], 0.5)/255;

                    static_colorO[6*4+0] = colorO[6*4+0];
                    static_colorO[6*4+1] = colorO[6*4+1];
                    static_colorO[6*4+2] = colorO[6*4+2];
                    static_colorO[7*4+0] = colorO[7*4+0];
                    static_colorO[7*4+1] = colorO[7*4+1];
                    static_colorO[7*4+2] = colorO[7*4+2];
                }
            }
            break;
        case 21: set_shading(1.5, 1.5, 1, 1, 1, 1, 1, 1); break; //kiku
        case 22: set_shading(1, 1, 1, 0.7, 0.7, 1, 2, 1); break; //kim
        case 26: set_shading(1.5, 1.2, 1, 1, 1, 1, 0.7, 1); break; //all-star heroines
        case 27: set_outline(90, 43, 55); break; //theikos
        case 30: //hud color
            var hud_r = color_get_red(get_player_hud_color(player))/255;
            var hud_g = color_get_green(get_player_hud_color(player))/255;
            var hud_b = color_get_blue(get_player_hud_color(player))/255;

            //pink
            colorO[4*0+0] = hud_r;
            colorO[4*0+1] = hud_g;
            colorO[4*0+2] = hud_b;
            //white
            colorO[4*3+0] = min(hud_r + 0.9, 1);
            colorO[4*3+1] = min(hud_g + 0.9, 1);
            colorO[4*3+2] = min(hud_b + 0.9, 1);
            //black
            colorO[4*4+0] = hud_r/3;
            colorO[4*4+1] = hud_g/3;
            colorO[4*4+2] = hud_b/3;
            //leaf
            colorO[4*5+0] = lerp(hud_r, get_color_profile_slot_r(alt_cur, 5)/255, 0.5);
            colorO[4*5+1] = lerp(hud_g, get_color_profile_slot_g(alt_cur, 5)/255, 0.5);
            colorO[4*5+2] = lerp(hud_b, get_color_profile_slot_b(alt_cur, 5)/255, 0.5);

            //article color setup lol
            static_colorO[4*0+0] = colorO[4*0+0];
            static_colorO[4*0+1] = colorO[4*0+1];
            static_colorO[4*0+2] = colorO[4*0+2];
            static_colorO[4*3+0] = colorO[4*3+0];
            static_colorO[4*3+1] = colorO[4*3+1];
            static_colorO[4*3+2] = colorO[4*3+2];
            static_colorO[4*4+0] = colorO[4*4+0];
            static_colorO[4*4+1] = colorO[4*4+1];
            static_colorO[4*4+2] = colorO[4*4+2];
            static_colorO[4*5+0] = colorO[4*5+0];
            static_colorO[4*5+1] = colorO[4*5+1];
            static_colorO[4*5+2] = colorO[4*5+2];
            break;
    }

    if (alt_cur == 0 || alt_cur == 30)
    {
        if ("alt_hair_apply" in self && alt_hair_apply)
        {
            set_all_color_slot(1, 229, 172, 148); //hair
            set_all_color_slot(6, 254, 208, 186); //holy water main
            set_all_color_slot(7, 255, 168, 189); //holy water sub
        }
    }
}

//byakuren alt hud reset
if (object_index == asset_get("stage_HUD") && (alt_cur != 10 || s_alt)) set_ui_element(UI_HUD_ICON, get_char_info(player, INFO_HUD));

//extended range for gameboy alt
if (!s_alt && alt_cur == 14) set_color_profile_slot_range(2, 31, 19, 26);
else set_color_profile_slot_range(2, 22, 16, 26);

#define set_shading()
{
    for (var i = 0; i < 8; i++) set_character_color_shading(i, argument[i]);
}
#define set_outline(r, g, b)
{
    if ("outline_color" not in self || outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0 && !burned)
    {
        var start = 8*4; //outline
        colorO[start] = r/255;
        colorO[start+1] = g/255;
        colorO[start+2] = b/255;
        static_colorO[start] = r/255;
        static_colorO[start+1] = g/255;
        static_colorO[start+2] = b/255;
    }
}
#define set_all_color_slot()
{
    var shade = argument[0], r = argument[1], g = argument[2], b = argument[3];
    var a = argument_count > 4 ? argument[4] : 1;
    
    set_character_color_slot(shade, r, g, b);
    set_article_color_slot(shade, r, g, b);
}