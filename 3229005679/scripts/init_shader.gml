//Fixing Colors
var real_player = (room == asset_get("network_char_select") && object_index != oTestPlayer) ? 0 : player;
var alt_palette = get_player_color( real_player );

switch ( alt_palette ) {
    
    case 0: // Default
        set_character_color_slot(5, 248, 248, 248 ); //Cow
        set_article_color_slot(5, 248, 248, 248 ); //Cow
    break;

    case 24:
        set_character_color_shading(0, 0);
        set_character_color_shading(1, 0);
        set_character_color_shading(2, 0);
        set_character_color_shading(3, 0);
        set_character_color_shading(4, 0);
        set_character_color_shading(5, 0);
        outline_color = [15, 56, 15];
    break;

    case 25:
        set_character_color_shading(0, 0);
        set_character_color_shading(1, 0);
        set_character_color_shading(2, 0);
        set_character_color_shading(3, 0);
        set_character_color_shading(4, 0);
        set_character_color_shading(5, 0);
        //outline_color = [15, 56, 15];
    break;

    case 26:
        set_character_color_shading(0, 0);
        set_character_color_shading(1, 0);
        set_character_color_shading(2, 0);
        set_character_color_shading(3, 0);
        set_character_color_shading(4, 0);
        set_character_color_shading(5, 0);
        outline_color = [0, 0, 0];
    break;

}


//Image Mask
if  (get_synced_var(player) != 0) { 
    if("start_predraw" in self) && start_predraw{
        set_character_color_slot(0, 0, 0, 0, 0);
    }
} 