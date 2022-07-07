// ==================== GRAFFITI ARTICLE INIT  ======================
// *** THIS SHOULD BE AT THE TOP OF YOUR ARTICLE3_INIT.GML FILE ***
// this part is just to create the article that draws the tag on the stage
// the graffiti article uses the "articlegraffiti_*.gml" scripts
// you can still use article3 for whatever you need, just put the code at the bottom of this script
if player_id.graffiti_tagging {
    sprite_change_offset("_graffiti_mask", 11, 0); // just in case... lol
    sprite_index = asset_get("empty_sprite");
    mask_index = sprite_get("_graffiti_mask");
    depth = 0;
    num = "graffiti";
    uses_shader = false;
    can_be_grounded = true;
    ignores_walls = false;
    
    // on a solid ground or plat?
    graffiti_on_solid = (player_id.ground_type == 1);
    
    // get colors/font indexes from the player object
    graffiti_colors = player_id.graffiti_colors;
    graffiti_fonts = player_id.graffiti_fonts;
    
    // get string from player object
    graffiti_string = player_id.graffiti_string
    graffiti_str_width = string_length(graffiti_string) * 10;
    
    // randomly decide where to drip
    graffiti_num_drips = 4;
    graffiti_drips = array_create(graffiti_num_drips, 0);
    for (var i = 0; i < graffiti_num_drips; i += 1) {
        var rand_x = random_func(i, floor(graffiti_str_width), true);
        var xx = rand_x - ceil(graffiti_str_width / 2);
        var yy = random_func_2(i, 9, true) + 5;
        
        var str_ind = max(ceil(rand_x/10), 1);
        if string_char_at(graffiti_string, str_ind) == " " { // prevent drips on spaces
            graffiti_drips[i] = noone;
        }
        else {
            graffiti_drips[i] = {x_off: xx, y_off: yy};
        }
    }
    
    // for handling drips
    graffiti_drip_timer_max = 60;
    graffiti_drip_timer = 0;
    
    // have to slightly offset everything because of how the fonts are set up
    graffiti_offset = -4;
    exit;
}
// ==================================================================
// you can put your actual article code below here
