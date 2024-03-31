//color set event

//super form color stuff
outline_color = temp_outline_color;
if (("holyburning" not in self || !holyburning))
{
    if ("uses_super_colors" in self && uses_super_colors)
    {
        if (!is_fake_x) outline_color = [
            clamp(floor(lerp((temp_outline_color[0] + (cur_colors[8][0] == 999 ? cur_colors[0][0] : cur_colors[8][0] - 100) + super_glow_intensity - 200)/2, (cur_colors[8][0] == 999 ? cur_colors[0][0] : cur_colors[8][0] - 100), 0.5)), 0, 255),
            clamp(floor(lerp((temp_outline_color[1] + (cur_colors[8][1] == 999 ? cur_colors[0][1] : cur_colors[8][1] - 100) + super_glow_intensity - 200)/2, (cur_colors[8][1] == 999 ? cur_colors[0][1] : cur_colors[8][1] - 100), 0.5)), 0, 255),
            clamp(floor(lerp((temp_outline_color[2] + (cur_colors[8][2] == 999 ? cur_colors[0][2] : cur_colors[8][2] - 100) + super_glow_intensity - 200)/2, (cur_colors[8][2] == 999 ? cur_colors[0][2] : cur_colors[8][2] - 100), 0.5)), 0, 255)
        ];
    }
}

if ("super_col_lerp_time" in self && ("is_fake_x" not in self || is_fake_x == false))
{
    load_shade = true;
    if (super_col_lerp_time > 0)
    {
        //transformation lerp
        for (var i = 0; i < 8; i ++)
        {
            var col_r = 0;
            var col_g = 0;
            var col_b = 0;

            //aura and portrait light colors doesn't need to lerp
            if(i == 0)
            {
                if (get_color_profile_slot_r(alt_cur, 0) != 999) //filter colors that don't change
                {
                    col_r = (uses_super_colors ? cur_colors[8][0] : cur_colors[0][0]);
                    col_g = (uses_super_colors ? cur_colors[8][1] : cur_colors[0][1]);
                    col_b = (uses_super_colors ? cur_colors[8][2] : cur_colors[0][2]);
                }
            }
            else
            {
                //glow lerp
                if (i == 1 && uses_super_colors && super_glow_intensity != 0) //filter out alts that don't use the glow
                {
                    col_r = clamp(floor(lerp((cur_colors[9][0] == 999 ? cur_colors[1][0] : cur_colors[9][0]), (cur_colors[9][0] == 999 ? cur_colors[1][0] : cur_colors[9][0]) + super_glow_intensity, super_glow/super_glow_max)), 0, 255);
                    col_g = clamp(floor(lerp((cur_colors[9][1] == 999 ? cur_colors[1][1] : cur_colors[9][1]), (cur_colors[9][1] == 999 ? cur_colors[1][1] : cur_colors[9][1]) + super_glow_intensity, super_glow/super_glow_max)), 0, 255);
                    col_b = clamp(floor(lerp((cur_colors[9][2] == 999 ? cur_colors[1][2] : cur_colors[9][2]), (cur_colors[9][2] == 999 ? cur_colors[1][2] : cur_colors[9][2]) + super_glow_intensity, super_glow/super_glow_max)), 0, 255);
                }
                else if (get_color_profile_slot_r(alt_cur, i + 8) != 999) //filter out colors that don't change
                {
                    col_r = floor(lerp(cur_colors[i][0], cur_colors[i + 8][0] + (100 * (super_glow_intensity != 0 && cur_colors[i + 8][0] > 25 && (i == 1)) ), super_col_lerp_time/super_col_lerp_time_max));
                    col_g = floor(lerp(cur_colors[i][1], cur_colors[i + 8][1] + (100 * (super_glow_intensity != 0 && cur_colors[i + 8][0] > 25 && (i == 1)) ), super_col_lerp_time/super_col_lerp_time_max));
                    col_b = floor(lerp(cur_colors[i][2], cur_colors[i + 8][2] + (100 * (super_glow_intensity != 0 && cur_colors[i + 8][0] > 25 && (i == 1)) ), super_col_lerp_time/super_col_lerp_time_max));
                }
            }
            //Apply the colors if they have a color to go to.
            if !(col_r == 0 && col_g == 0 && col_b == 0)
            {
                if (cur_alpha[i] == 1) set_character_color_slot(i, col_r,  col_g,  col_b); 
                else set_character_color_slot(i, col_r,  col_g,  col_b,  cur_alpha[i]);

                set_article_color_slot(i, col_r,  col_g,  col_b, 1);
                set_character_color_shading(i, shading_data[alt_cur][i==0 ? 0 + 8 : (i + 8 * uses_super_colors)] );
            }
        }
    }

    //chaos emeralds buddy + super sonic alt/rune = hyper sonic
    if (super_col_lerp_time > super_col_lerp_time_max)
    {
        var col_r = (min(color_get_red(hyper_hsv), 255) + 255)/2
        var col_g = (min(color_get_green(hyper_hsv), 255) + 255)/2
        var col_b = (min(color_get_blue(hyper_hsv), 255) + 255)/2

        if ("hyper_color" not in self || hyper_color >= 255) hyper_color = 0;
        
        hyper_color += 1;

        var color_rgb = make_color_rgb(255, 0, 0);
        var hue = (color_get_hue(color_rgb)+hyper_color) % 255;
        var hyper_hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb));

        if (alt_cur == 0 || alt_cur == 26) //hyper sonic is sonic alt exclusive
        {
            var timer = (super_col_lerp_time-super_col_lerp_time_max)/super_col_lerp_time_max;
            set_character_color_slot(1,
                floor( lerp(cur_colors[9][0], col_r, timer)),
                floor( lerp(cur_colors[9][1], col_g, timer)),
                floor( lerp(cur_colors[9][2], col_b, timer)),
            );
            set_character_color_slot(2,
                floor(lerp(cur_colors[10][0], 190, timer)),
                floor(lerp(cur_colors[10][1], 18, timer)),
                floor(lerp(cur_colors[10][2], 238, timer))
            );
        }

        super_form_aura = make_color_rgb(col_r,col_g,col_b);

        outline_color = [col_r/2,col_g/2,col_b/2];
    }
}