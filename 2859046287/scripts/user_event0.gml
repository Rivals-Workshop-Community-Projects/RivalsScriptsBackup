//user_event0.gml
//user_event scripts are essencially whatever we want them to include, they are custom scripts we can use to help us send information between scripts
//aswell as not flood other scripts if a lot should go into them
//to call user events in other scripts we put user_event(#);, with # being a number between 0 to 15 depending the script you need

var shade_slot = 0; //tells the color functions which slot to change (done in the switch statement)
var mult = 0; //tells the color functions a color offset to go off of, allowing for shading (done in the switch statement)

if ("alt_cur" not in self) alt_cur = get_player_color(player);

//rainbow alt shenanigans, it is called in update.gml and css_update.gml
//to make it work in the results screen, if you want to check for a spefic alt color you need to check with [ get_player_color(player) ]
switch (alt_cur)
{
    case 11: //rainbow v1 = seamless color loop
        if ("cur_color1" not in self) cur_color1 = 0;
        else
        {
            //loops variable around (there's a total of 256 hues) to rotate between
            cur_color1 += 2;
            if (cur_color1 >= 255) cur_color1 -= 255;

            var color_rgb = make_color_rgb(255, 0, 0); //sets the initial color
            var hue = (color_get_hue(color_rgb) + cur_color1) % 255; //actually loops around from the initial hue using our variable from earlier
            var hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb)); //sets the final hue, saturation and value... values.


            //storing colors here in the array for comfort but this step isn't neccesary
            var colors = [color_get_red(hsv), color_get_green(hsv), color_get_blue(hsv)];


            shade_slot = 0; //body
            mult = 0;
            set_color_profile_slot(alt_cur, shade_slot, colors[0]+mult, colors[1]+mult, colors[2]+mult);
            set_article_color_slot(shade_slot, colors[0]+mult, colors[1]+mult, colors[2]+mult, 1);

            shade_slot = 1; //body shader
            mult = -100;
            set_color_profile_slot(alt_cur, shade_slot, colors[0]+mult, colors[1]+mult, colors[2]+mult);
            set_article_color_slot(shade_slot, colors[0]+mult, colors[1]+mult, colors[2]+mult, 1);

            shade_slot = 3; //effects
            mult = 450;
            set_color_profile_slot(alt_cur, shade_slot, colors[0]+mult, colors[1]+mult, colors[2]+mult);
            set_article_color_slot(shade_slot, colors[0]+mult, colors[1]+mult, colors[2]+mult, 1);

            //NOTE: set_article_color_slot will mak it so the articles will also be colored dynamically
        }
        break;
    case 12: //rainbow v2 = specific colors loop

        //variable setup - change your colors and timings here
        //color list to scroll
        cur_colors[0] = [255, 0, 0];
        cur_colors[1] = [0, 255, 0];
        cur_colors[2] = [0, 0, 255];

        color_timer_set[0] = 30; //time a color stays on
        color_timer_set[1] = 10; //time it takes colors to switch

        if ("color_timer" not in self) //"init" - makes sure the variables exist (note that the variables do get stored between characters)
        {
            cur_color2 = 0; //it's used to see which color is up currently
            color_timer = color_timer_set[0];
            lerp_array = cur_colors[0];
            color_lerp = false;
        }
        else //"update"
        {
            if (!color_lerp) //if not lerping, count down to 0 from the [ color_timer_set[0] ] value
            {
                color_timer --;

                if (color_timer == 0) //update color right before lerping, and make the lerping activate
                {
                    cur_color2 ++;
                    if (cur_color2 >= array_length(cur_colors)) cur_color2 = 0;
                    
                    color_lerp = true;
                }
            }
            else //if lerping, count up from 0 to the [ color_timer_set[1] ] value
            {
                color_timer ++;

                //this is where the transition happens, it takes the previous color in the array and transitions it to the new color
                for (var i = 0; i <= 2; ++i)
                {
                    if (cur_color2 == 0) lerp_array[i] = floor(lerp(cur_colors[array_length(cur_colors)-1][i], cur_colors[cur_color2][i], color_timer/color_timer_set[1]));
                    else lerp_array[i] = floor(lerp(cur_colors[cur_color2-1][i], cur_colors[cur_color2][i], color_timer/color_timer_set[1]));
                }

                //when the transition is over, deactivate the lerping and set the timer to the [ color_timer_set[0] ] value
                if (color_timer >= color_timer_set[1])
                {
                    color_lerp = false;
                    color_timer = color_timer_set[0];
                }
            }

            shade_slot = 0; //body
            mult = 150;
            set_color_profile_slot(alt_cur, shade_slot, lerp_array[0]+mult, lerp_array[1]+mult, lerp_array[2]+mult);
            set_article_color_slot(shade_slot, lerp_array[0]+mult, lerp_array[1]+mult, lerp_array[2]+mult, 1);

            shade_slot = 1; //body shader
            mult = -40;
            set_color_profile_slot(alt_cur, shade_slot, lerp_array[0]+mult, lerp_array[1]+mult, lerp_array[2]+mult);
            set_article_color_slot(shade_slot, lerp_array[0]+mult, lerp_array[1]+mult, lerp_array[2]+mult, 1);

            //NOTE: set_article_color_slot will mak it so the articles will also be colored dynamically
        }
        break;
}
init_shader();