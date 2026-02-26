

for (var i = 0; i < array_length_1d(afterimage_array); ++i){
    
    shader_end();
    var obj = afterimage_array[i];
    var spriteSize = obj.smallSprites;
    gpu_set_fog(true, get_player_hud_color(player), 0, 0);
    draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1+spriteSize), 1+spriteSize, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
    gpu_set_fog(false, c_black, 0, 0);
    with (player_id){ shader_start(); }

}