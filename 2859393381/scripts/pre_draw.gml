if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack = AT_EXTRA_1) 
{
        if (window = 1) draw_set_alpha((0+window_timer/8)/3);
        else if (window = 5) draw_set_alpha((1-window_timer/6)/3);
        else draw_set_alpha(1/3);
        draw_rectangle_colour(view_get_xview(), view_get_yview(), view_get_xview()+view_get_wview(), view_get_yview()+view_get_hview(), c_black, c_black, c_black, c_black, false);
        draw_set_alpha(1);
}

// afterimage
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    gpu_set_fog(1, obj.col, 0, 1);
    draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1+small_sprites), 1+small_sprites, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
}
gpu_set_fog(0, c_white, 0, 0);
