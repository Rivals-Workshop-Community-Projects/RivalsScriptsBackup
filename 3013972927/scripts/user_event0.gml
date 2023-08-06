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
    case 17: //Calebcity
        if ("cur_color1" not in self) cur_color1 = 0;
        else
        {
        	beat_hit_sfx_set = beat_hit_meme_sfx;
        }
        break;
        
}

init_shader();