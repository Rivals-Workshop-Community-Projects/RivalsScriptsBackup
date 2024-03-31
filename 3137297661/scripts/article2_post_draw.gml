//article2_post_draw.gml

if (get_match_setting(SET_HITBOX_VIS)){
    draw_sprite_ext(mask_index,image_index,x,y,image_xscale,image_yscale,0,c_white,0.5);
}
if(!bell_end_flag && ((bell_anim_time > 9 && bell_anim_time < 22) || (bell_anim_time >= 34 && bell_anim_time < 43))){
    draw_sprite_ext(bell_spr, bell_anim_time, x + bell_xoff, y + bell_yoff, 2, 2, 0, c_white, 1);
}
if(!symbol_end_flag){
    draw_sprite_ext(symbol_spr, symbol_anim_time, x + symbol_xoff, y + symbol_yoff, 2, 2, 0, c_white, 0.8);
}

//draw_debug_text(x, y - 100, string(kb_store_total));
