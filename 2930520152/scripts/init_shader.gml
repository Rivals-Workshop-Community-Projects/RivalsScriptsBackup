// Default (Radiant)
// set_character_color_slot( 1, 0, 89, 89, 128 ); //Hair
// set_character_color_slot( 1, 1, 102, 95, 82 ); //Headband & Hilt
// set_character_color_slot( 1, 2, 89, 108, 128 ); //Cloths
// set_character_color_slot( 1, 3, 230, 210, 115 ); //Sword & Trim
// set_character_color_slot( 1, 4, 102, 82, 61 ); //Boots, Gloves, & Belt
// set_character_color_slot( 1, 5, 179, 74, 54 ); //Cape
// set_character_color_slot( 1, 6, 23, 230, 230 ); //Eruption

var alt_cur = get_player_color("alt_fix" in self? alt_fix: player)
if(alt_cur > 31){
	alt_cur = get_player_color(player);
}

if(alt_cur != 0){
    if(variable_instance_exists(self, "eruption_stored")){
        if(eruption_stored != 0){
            apply_color_slot(3, get_player_color(player), 7);
        } else {
            apply_color_slot(3, get_player_color(player), 3);
        }
    } else {
        apply_color_slot(3, get_player_color(player), 3);
    }
} else {
    set_character_color_slot( 0, 89, 108, 128 ); //Cloths
    set_character_color_slot( 1, 89, 89, 128 ); //Hair
    set_character_color_slot( 2, 102, 95, 82 ); //Headband & Hilt
    set_character_color_slot( 3, 230, 210, 115 ); //Sword & Trim
    set_character_color_slot( 4, 102, 82, 61 ); //Boots, Gloves, & Belt
    set_character_color_slot( 5, 179, 74, 54 ); //Cape
    set_character_color_slot( 6, 255, 255, 255 ); //Pants
    set_character_color_slot( 7, 23, 230, 230 ); //Eruption
    
    set_article_color_slot( 0, 89, 108, 128 ); //Cloths
    set_article_color_slot( 1, 89, 89, 128 ); //Hair
    set_article_color_slot( 2, 102, 95, 82 ); //Headband & Hilt
    set_article_color_slot( 3, 230, 210, 115 ); //Sword & Trim
    set_article_color_slot( 4, 102, 82, 61 ); //Boots, Gloves, & Belt
    set_article_color_slot( 5, 179, 74, 54 ); //Cape
    set_article_color_slot( 6, 255, 255, 255 ); //Pants
    set_article_color_slot( 7, 23, 230, 230 ); //Eruption
    
    if(variable_instance_exists(self, "eruption_stored")){
        if(eruption_stored != 0){
            set_character_color_slot( 3, 23, 230, 230 );
            set_article_color_slot( 3, 23, 230, 230 );
        } else {
            set_character_color_slot( 3, 230, 210, 115 );
            set_article_color_slot( 3, 230, 210, 115 );
        }
    } else {
        set_character_color_slot( 3, 230, 210, 115 );
        set_article_color_slot( 3, 230, 210, 115 );
    }
}

if(alt_cur == 17){
	set_character_color_shading(0, 0);
	set_character_color_shading(1, 0);
	set_character_color_shading(2, 0);
	set_character_color_shading(3, 0);
	set_character_color_shading(4, 0);
	set_character_color_shading(5, 0);
	set_character_color_shading(6, 0);
	set_character_color_shading(7, 0);
}

#define apply_color_slot(target_shade, source_color, source_shade)

   set_character_color_slot(target_shade,  
        get_color_profile_slot_r(source_color, source_shade),  
        get_color_profile_slot_g(source_color, source_shade),
        get_color_profile_slot_b(source_color, source_shade), 1);
   set_article_color_slot(target_shade,  
        get_color_profile_slot_r(source_color, source_shade),  
        get_color_profile_slot_g(source_color, source_shade),
        get_color_profile_slot_b(source_color, source_shade), 1);