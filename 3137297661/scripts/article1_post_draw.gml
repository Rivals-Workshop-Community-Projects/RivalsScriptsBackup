//article1_post_draw.gml
image_alpha = 1;
if (get_match_setting(SET_HITBOX_VIS)){
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,0.5);
}

draw_sprite_ext(spr,image_index, x, y, image_xscale, image_yscale, 0, c_white, 1.0);

