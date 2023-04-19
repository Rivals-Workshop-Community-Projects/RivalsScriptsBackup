//user_event0.gml
//user_event scripts are essencially whatever we want them to include, they are custom scripts we can use to help us send information between scripts
//aswell as not flood other scripts if a lot should go into them
//to call user events in other scripts we put user_event(#);, with # being a number between 0 to 15 depending the script you need

//NOTE: THIS SCRIPT WILL NOT WORK ON THE RESULTS SCREEN

var shade_slot = 0; //tells the color functions which slot to change (done in the switch statement)
var mult = 0; //tells the color functions a color offset to go off of, allowing for shading (done in the switch statement)

//rainbow alt shenanigans
switch (alt_cur)
{
    case 28: //rainbow v1 = seamless color loop
        if ("cur_color1" not in self) cur_color1 = 0;
        else
        {
            //loops variable around (there's a total of 256 hues) to rotate between
            cur_color1 += .7;
            if (cur_color1 >= 255) cur_color1 -= 255;

            var color_rgb = make_color_rgb(255, 0, 0); //sets the initial color
            var hue = (color_get_hue(color_rgb) + cur_color1) % 255; //actually loops around from the initial hue using our variable from earlier
            var hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb)); //sets the final hue, saturation and value... values.


            //storing colors here in the array for comfort but this step isn't neccesary
            var colors = [color_get_red(hsv), color_get_green(hsv), color_get_blue(hsv)];



            shade_slot = 1; //body shader
            mult = -10;
            set_color_profile_slot(alt_cur, shade_slot, colors[0]+mult, colors[1]+mult, colors[2]+mult);
            set_article_color_slot(shade_slot, colors[0]+mult, colors[1]+mult, colors[2]+mult, 1);

            shade_slot = 2; //effects
            mult = 45;
            set_color_profile_slot(alt_cur, shade_slot, colors[0]+mult, colors[1]+mult, colors[2]+mult);
            set_article_color_slot(shade_slot, colors[0]+mult, colors[1]+mult, colors[2]+mult, 1);

            //NOTE: set_article_color_slot will mak it so the articles will also be colored dynamically
        }
        break;
}
init_shader();