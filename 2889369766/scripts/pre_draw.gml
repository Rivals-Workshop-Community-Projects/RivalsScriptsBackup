//PRE DRAW
shader_start();

if (has_wings && !consumed_wings){
    draw_sprite_ext(angelwings_spr, floor(angelwingsAnimTimer), x, y+8*lower_wings-64*upsidedown_wings, 1, 1-(upsidedown_wings*2), 0, c_white, wings_alpha*hide_fspecial);
    //draw_sprite(angelwings_spr, 1, x, y);
} else if (has_wings && consumed_wings){
    draw_sprite_ext(wingsflap_spr, floor(wingsflapAnimTimer), x, y, 1, 1, 0, c_white, wingsflap_alpha);
}

if (field_consumed){
    draw_sprite_ext(underlay_spr, 1, field_x, field_y, underlay_Xscale, underlay_Yscale, 0, c_white, underlay_alpha);
}



shader_end();