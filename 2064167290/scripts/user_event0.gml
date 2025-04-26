//user_event0.gml

//sary homosexual skin, yes real

var shade_slot = 0; //tells the color functions which slot to change (done in the switch statement)
var mult = 0; //tells the color functions a color offset to go off of, allowing for shading (done in the switch statement)

if ("alt_cur" not in self) alt_cur = get_player_color(player);

//rainbow alt shenanigans, it is called in update.gml and css_update.gml
//to make it work in the results screen, if you want to check for a spefic alt color you need to check with [ get_player_color(player) ]
switch (alt_cur)
{
    case 18: //rainbow v1 = seamless color loop
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


            shade_slot = 1; //shirt stripe
            mult = 0;
            set_color_profile_slot(alt_cur, shade_slot, colors[0]+mult, colors[1]+mult, colors[2]+mult);
            set_article_color_slot(shade_slot, colors[0]+mult, colors[1]+mult, colors[2]+mult, 1);

            shade_slot = 4; //shirt
            mult = 0;
            set_color_profile_slot(alt_cur, shade_slot, colors[0]+mult, colors[1]+mult, colors[2]+mult);
            set_article_color_slot(shade_slot, colors[0]+mult, colors[1]+mult, colors[2]+mult, 1);

            shade_slot = 2; //button
            mult = 0;
            set_color_profile_slot(alt_cur, shade_slot, colors[0]+mult, colors[1]+mult, colors[2]+mult);
            set_article_color_slot(shade_slot, colors[0]+mult, colors[1]+mult, colors[2]+mult, 1);


            //NOTE: set_article_color_slot will mak it so the articles will also be colored dynamically
        }
        break;
}
init_shader();