//Fixing Colors
var real_player = (room == asset_get("network_char_select") && object_index != oTestPlayer) ? 0 : player;
var alt_palette = get_player_color( real_player );

switch ( alt_palette ) {
    

    //Silver
    case 21:
        set_character_color_shading(0, 0.5);
        set_character_color_shading(1, 0.5);
        set_character_color_shading(2, 0.5);
        set_character_color_shading(3, 0.5);
        set_character_color_shading(4, 0.5);
        set_character_color_shading(5, 0.5);
		set_character_color_shading(6, 0.5);
		set_character_color_shading(7, 0.5);
    break;

    //Gold
    case 22:
        set_character_color_shading(0, 0.75);
        set_character_color_shading(1, 0.75);
        set_character_color_shading(2, 0.75);
        set_character_color_shading(3, 0.75);
        set_character_color_shading(4, 0.75);
        set_character_color_shading(5, 0.75);
		set_character_color_shading(6, 0.75);
		set_character_color_shading(7, 0.75);
    break;

    //Sketches
    case 23:
        set_character_color_shading(0, 0);
        set_character_color_shading(1, 0);
        set_character_color_shading(2, 0);
        set_character_color_shading(3, 0);
        set_character_color_shading(4, 0);
        set_character_color_shading(5, 0);
		set_character_color_shading(6, 0);
		set_character_color_shading(7, 0);
    break;

    //Shadow
	case 24:
        set_character_color_shading(0, 0);
        set_character_color_shading(1, 0);
        set_character_color_shading(2, 0);
        set_character_color_shading(3, 0);
        set_character_color_shading(4, 0);
        set_character_color_shading(5, 0);
		set_character_color_shading(6, 0);
		set_character_color_shading(7, 0);
        outline_color = [255, 255, 255];
    break;

    //Rainbow
    case 25:
    var colorChanger = round(sin(get_gameplay_time() * pi / 120) * 127 + 127) + 1;

    var color_rgb = make_color_rgb(255, 0, 0);
    var hue = (color_get_hue(color_rgb) + colorChanger) % 255;
    var hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb));

    for (var i = 0; i <= 7; i++){
        set_color_profile_slot( 25, i, color_get_red(hsv), color_get_blue(hsv), color_get_green(hsv));
        set_article_color_slot(i, color_get_red(hsv), color_get_blue(hsv), color_get_green(hsv));
    }
    break;

    //Rainbow Rainbow
    case 26:
    var colorChanger = round(sin(get_gameplay_time() * pi / 120) * 127 + 127) + 1;

    var color_rgb = make_color_rgb(255, 0, 0);

    for (var i = 0; i <= 7; i++){
        var hue = (color_get_hue(color_rgb) + colorChanger + (32 * i)) % 255;
        var hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb));
        set_color_profile_slot( 26, i, color_get_red(hsv), color_get_blue(hsv), color_get_green(hsv));
        set_article_color_slot(i, color_get_red(hsv), color_get_blue(hsv), color_get_green(hsv));
    }
    break;

    //Classic Pizza
    case 28:
        set_character_color_shading(0, 0);
        set_character_color_shading(1, 0);
        set_character_color_shading(2, 0);
        set_character_color_shading(3, 0);
        set_character_color_shading(4, 0);
        set_character_color_shading(5, 0);
		set_character_color_shading(6, 0);
		set_character_color_shading(7, 0);
    break;

}