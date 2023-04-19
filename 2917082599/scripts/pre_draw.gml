/*
*             ----------- pre_draw.gml ------------
*       Use this file to draw sprites on top of your character.
*       Example: This will draw sandberts jab projectile under your character.
*       draw_sprite_ext(sprite_get("jab_proj"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
*/
// afterimage
    for (var i = 0; i < array_length_1d(afterimage_array); ++i)
    {
        var obj = afterimage_array[i];
        gpu_set_blendmode_ext(bm_src_alpha, bm_max)
        shader_start();
        draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1+small_sprites), 1+small_sprites, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
        shader_end();
        gpu_set_blendmode(bm_normal);
    }