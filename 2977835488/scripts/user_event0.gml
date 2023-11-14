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
    case 31: //rainbow v2 = specific colors loop
        //color list to scroll
            cur_colors[0] = [0, 255, 16];
            cur_colors[1] = [255, 230, 0];
            cur_colors[2] = [255, 0, 0];
        if ("color_timer" not in self) //"init" - set anything you want here
        {
            cur_colors = [];
            color_timer_set[0] = 30; //time a color stays on
            color_timer_set[1] = 10; //time it takes colors to switch


            cur_color2 = 0; //it's used to see which color is up currently
            color_timer = color_timer_set[0];
            
            lerp_array = [0, 255, 16]; //should be the same as the first color to scroll
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

            shade_slot = 2; //Eye
            mult = 1;
            set_color_profile_slot(alt_cur, shade_slot, lerp_array[0]+mult, lerp_array[1]+mult, lerp_array[2]+mult);
            set_article_color_slot(shade_slot, lerp_array[0]+mult, lerp_array[1]+mult, lerp_array[2]+mult, 1);

            shade_slot = 3; //Teeth
            mult = 1;
            set_color_profile_slot(alt_cur, shade_slot, lerp_array[0]+mult, lerp_array[1]+mult, lerp_array[2]+mult);
            set_article_color_slot(shade_slot, lerp_array[0]+mult, lerp_array[1]+mult, lerp_array[2]+mult, 1);
            
            shade_slot = 6; //Iris
            mult = 150;
            set_color_profile_slot(alt_cur, shade_slot, lerp_array[0]+mult, lerp_array[1]+mult, lerp_array[2]+mult);
            set_article_color_slot(shade_slot, lerp_array[0]+mult, lerp_array[1]+mult, lerp_array[2]+mult, 1);
            //NOTE: set_article_color_slot will mak it so the articles will also be colored dynamically
        }
        break;
}
init_shader();