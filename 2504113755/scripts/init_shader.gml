
//sword 1 color range thing
 

//sword 2 color range thing
 

//fur (s) color range thing
 

if (get_player_color(player) == 0)
{

    set_character_color_slot( 3, 28, 96, 158 );
    set_article_color_slot( 3, 28, 96, 158 );
	
	set_character_color_slot( 5, 22, 26, 43 );
	set_article_color_slot( 5, 22, 26, 43 );
	
	set_character_color_slot( 6, 112, 100, 138 );
	set_article_color_slot( 6, 112, 100, 138 );

    } else
    
    
    {
    	 set_character_color_shading( 6, 0 );

    	
    	
    }
    
    
    

     

if (get_player_color(player) == 14) {
    
    
    outline_color = [35, 67, 49];
} 





if (get_player_color(player) == 25) {
    
    
    outline_color = [32, 32, 32];
	if (!variable_instance_exists(id, "hue_offset")){

hue_offset=0; }
hue_speed=1; //change this to change the speed of the hueshift




hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

color_rgb=make_color_rgb(255, 27, 24); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot(25, 0, 215,215,215); //uses that variable to set the slot's new colours
set_article_color_slot(0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours

color_rgb_2=make_color_rgb(255, 145, 208); //input rgb values here, uses rgb to create a gamemaker colour variable
hue_2=(color_get_hue(color_rgb_2)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv_2=make_color_hsv(hue_2,color_get_saturation(color_rgb_2),color_get_value(color_rgb_2)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot(25, 1, color_get_red(color_hsv_2),color_get_green(color_hsv_2),color_get_blue(color_hsv_2)); //uses that variable to set the slot's new colours
set_article_color_slot(1, color_get_red(color_hsv_2),color_get_green(color_hsv_2),color_get_blue(color_hsv_2)); //uses that variable to set the slot's new colours

    
    
}