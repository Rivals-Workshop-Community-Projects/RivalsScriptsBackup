//predraw article 2
enum FX{
    graze,
    graze_after,
    fspecial,
    install,
    install_bg,
    install_cloud,
    dstrong_charge,
    ustrong_charge,
    dstrong_hitbox,
    iku,
    bad_load
}
if(fx_type == FX.install){
    var temp_col = seed ? tenshi.rainbow_color2 : tenshi.rainbow_color;
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, temp_col, sub_alpha);
} else if (fx_type == FX.install_cloud){
    for(var i = 0; i < 8; i++){
        draw_sprite_ext(sprite_index, image_index, (i*(room_width+400/8)+2*life)%(room_width+400)-400, y+50, 1, 1, 0, tenshi.rainbow_dark, sub_alpha/2);
        draw_sprite_ext(sprite_index, image_index, (i*(room_width+400/8)+life)%(room_width+400)-400, y, 1, 1, 0, tenshi.rainbow_dark2, sub_alpha);
    }
} else if (fx_type == FX.graze and "trail_pos" in self){
    for(var i = 0; i < 4; i++){
		if(trail_pos[i].life > 0){
		    draw_sprite_ext(sprite_get("graze_trail"), 3-trail_pos[i].life/2%3, trail_pos[i].x, trail_pos[i].y, 1, 1, 0, c_white, .5 );
	    }
    }
}

