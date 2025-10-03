//hitbox_init

if(has_rune("N")){
    set_character_color_slot( 1, 225, 64, 64 ); //Liquid
    set_article_color_slot( 1, 225, 64, 64 ); //Liquid
    
    col_r_2 = 225;
    col_g_2 = 64;
    col_b_2 = 64;
    
    rgb_slot2 = make_color_rgb(col_r_2 / 2, col_g_2 / 2, col_b_2 / 2);
    rgb_slot2_saturated = make_color_rgb(col_r_2, col_g_2, col_b_2);
}