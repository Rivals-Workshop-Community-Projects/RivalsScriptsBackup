//article2_pre_draw.gml
if(!bell_end_flag && (bell_anim_time < bell_start_window || (bell_anim_time > 21 && bell_anim_time < 34) || bell_anim_time > 42)){
    draw_sprite_ext(bell_spr, bell_anim_time, x + bell_xoff, y + bell_yoff, 2, 2, 0, c_white, 1);
}

