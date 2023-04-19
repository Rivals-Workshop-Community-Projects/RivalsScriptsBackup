if player_id.graffiti_tagging {
    // this part is just to create the article that draws the tag on the stage
    // the graffiti article uses the "articlegraffiti_*.gml" scripts
    // you can still use article3 for whatever you need, just put the code at the bottom of this script
    
    // ==================== SET UP YOUR COLORS  ======================
    graffiti_colors[0] = $aa5356; // outer outline5653aa
    graffiti_colors[1] = $69322a; // outline 2a3269
    graffiti_colors[2] = $ffffff; // main text
    graffiti_colors[3] = $ffbbff; // text anti-aliasing
    // ===============================================================
    
    // ignore the rest of this unless you want to mess with things
    sprite_change_offset("graffiti_mask", 1, 0);
    sprite_index = asset_get("empty_sprite");
    mask_index = sprite_get("graffiti_mask"); // it's literally just two white pixels
    depth = 5;
    num = "graffiti";
    uses_shader = false;
    can_be_grounded = true;
    ignores_walls = false;
    
    // the fonts to use when drawing -- the array indexes match up with the graffiti_colors array indexes
    graffiti_fonts[0] = font_get("graffiti_outerline");
    graffiti_fonts[1] = font_get("graffiti_outline");
    graffiti_fonts[2] = font_get("graffiti");
    graffiti_fonts[3] = font_get("graffiti_aa");
    
    // get tag
    str = string_lower(get_player_name(player));
    switch str { // default to "infamous" if no tag (sorry if you use p1, p2, p3, or p4 as a tag lmao)
        case "p1": case "p2": case "p3": case "p4":
            str = "infamous";
            break;
    }
    
    // figure out how long the string is, adjust mask width
    str_width = string_length(str) * 10;
    var player_width = abs(player_id.bbox_right - player_id.bbox_left);
    image_xscale = max(player_width, str_width * 0.8) / 2;
    
    // randomly decide where to drip
    num_drips = 4;
    drips = array_create(num_drips, 0);
    for (var i = 0; i < num_drips; i += 1) {
        var xx = random_func(i, floor(str_width), true) - ceil(str_width / 2);
        var yy = random_func_2(i, 9, true) + 5;
        drips[i] = {x_off: xx, y_off: yy};
    }
    
    // for handling drips
    drip_timer_max = 60;
    drip_timer = 0;
    exit;
}
// you can put your actual article code below here