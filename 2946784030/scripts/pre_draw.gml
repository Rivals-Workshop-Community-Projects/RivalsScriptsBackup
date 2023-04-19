// pre-draw
// afterimage ripped from feenix rite
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    gpu_set_fog(1, obj.col, 0, 1);
    draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1+small_sprites), 1+small_sprites, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
}
gpu_set_fog(0, c_white, 0, 0);