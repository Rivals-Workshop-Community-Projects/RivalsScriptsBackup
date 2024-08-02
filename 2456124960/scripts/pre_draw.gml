with (obj_article1) {
	if (player_id == other.id && objectType == 0 && article_mode == 0 && instance_exists(hb)) {
        //print("hi");
        if (size == 0) {
            draw_sprite_ext(sprite_get("crystaloutline_small"), 0, x, y, -1, 1, 0, myOutlineColor, 1);        
        } else {
            draw_sprite_ext(sprite_get("crystaloutline_large"), 0, x, y, -1, 1, 0, myOutlineColor, 1);        
        }   
	}
}

auraColor = make_colour_rgb(217, 217, 175);
if (state == PS_ATTACK_GROUND && attack == AT_TAUNT_2 && (window == 2 || window == 3)) {
    if (window == 2) {
        draw_set_alpha(0.05);
    } else if (window == 3 && window_timer < 25) {
        draw_set_alpha(0.05 + (window_timer/250));
    } else {
        draw_set_alpha(0.15);
    }
    draw_circle_colour(x, y - 30, 245, auraColor, auraColor, false);
    //draw_circle_colour(x, y, 249, auraColor, auraColor, true);
    //draw_circle_colour(x, y, 248, auraColor, auraColor, true);
    //draw_circle_colour(x, y, 247, auraColor, auraColor, true);
    draw_set_alpha(1);
}