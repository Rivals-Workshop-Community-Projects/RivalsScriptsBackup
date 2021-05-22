//init-shader

//print(object_index)

set_color_profile_slot_range( 3, 1, 1, 255);

var alt_cur = get_player_color(player);
if variable_instance_exists(self, "timer") && !(state == PS_PARRY && window == 1) {
    if alt_cur == 0 {
        set_character_color_slot(6, 181, 30, 30, 1);
        set_article_color_slot(6, 181, 30, 30, 1);
    }
    
    var col_r = get_color_profile_slot_r(alt_cur, 4);
    var col_g = get_color_profile_slot_g(alt_cur, 4);
    var col_b = get_color_profile_slot_b(alt_cur, 4);
    
    set_character_color_slot(3, col_r, col_g, col_b, 1);
    set_character_color_shading(3, 0);
    set_character_color_shading(6, 0);

    set_article_color_slot(3, col_r, col_g, col_b, 1);
}

//victory screen draw

if object_index == asset_get("draw_result_screen") {
    if alt_cur == 0 {
        set_character_color_slot(6, 255, 255, 255, 1);
        set_character_color_slot(3, 181, 30, 30, 1);
    }
	//draw_sprite(sprite_get("portrait_arrow"), 0, object_index.x, object_index.y)
}