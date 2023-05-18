if("blue" not in self) exit;

if (blue){
    set_character_color_slot( 2, fireblue_col[0][0], fireblue_col[0][1], fireblue_col[0][2] ); //fire light
    set_character_color_slot( 3, fireblue_col[1][0], fireblue_col[1][1], fireblue_col[1][2] ); //fire mid
    set_character_color_slot( 4, fireblue_col[2][0], fireblue_col[2][1], fireblue_col[2][2] ); //fire dark
    
    set_article_color_slot( 2, fireblue_col[0][0], fireblue_col[0][1], fireblue_col[0][2] ); //fire light
    set_article_color_slot( 3, fireblue_col[1][0], fireblue_col[1][1], fireblue_col[1][2] ); //fire mid
    set_article_color_slot( 4, fireblue_col[2][0], fireblue_col[2][1], fireblue_col[2][2] ); //fire dark
}else{
    set_character_color_slot( 2, fire_col[0][0], fire_col[0][1], fire_col[0][2] ); //fire light
    set_character_color_slot( 3, fire_col[1][0], fire_col[1][1], fire_col[1][2] ); //fire mid
    set_character_color_slot( 4, fire_col[2][0], fire_col[2][1], fire_col[2][2] ); //fire dark
    
    set_article_color_slot( 2, fire_col[0][0], fire_col[0][1], fire_col[0][2] ); //fire light
    set_article_color_slot( 3, fire_col[1][0], fire_col[1][1], fire_col[1][2] ); //fire mid
    set_article_color_slot( 4, fire_col[2][0], fire_col[2][1], fire_col[2][2] ); //fire dark
}

if(get_player_color( player) == 9){
    //keine
    if(blue){
        //rgb(53, 140, 117)
        set_character_color_slot( 0, 53, 140, 117 ); //clothes red
        
        set_article_color_slot( 0, 53, 140, 117 ); //clothes red
    }else{
        set_character_color_slot( 0, 77, 53, 140 ); //clothes red
        
        set_article_color_slot( 0, 77, 53, 140 ); //clothes red
    }
}

//kaguya alt rainbow
if (blue && get_player_color(player) == 10) {
    
    /* 
     * Heat of the battle and light of the moon,
     * The energy rising is making me feel like a lunatic.
     */
     
    hue = (hue + hue_speed) % 255; //finds the hue and shifts it
    var color_hsv1 = make_color_hsv(hue, 100, 242); //creates a new gamemaker colour variable using the shifted hue
    var color_hsv2 = make_color_hsv((hue + 5) % 255, 210, 138); //creates a new gamemaker colour variable using the shifted hue
    set_character_color_slot( 3, color_get_red(color_hsv1), color_get_green(color_hsv1), color_get_blue(color_hsv1) ); //fire mid
    set_character_color_slot( 4, color_get_red(color_hsv2), color_get_green(color_hsv2), color_get_blue(color_hsv2) ); //fire dark
    
    set_article_color_slot( 3, color_get_red(color_hsv1), color_get_green(color_hsv1), color_get_blue(color_hsv1) ); //fire mid
    set_article_color_slot( 4, color_get_red(color_hsv2), color_get_green(color_hsv2), color_get_blue(color_hsv2) ); //fire dark
}