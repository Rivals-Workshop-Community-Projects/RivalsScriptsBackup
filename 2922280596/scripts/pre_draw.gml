if((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
{
    if(attack == AT_NSPECIAL_2 && window <= 2 && nspec_target != noone)
    {
        draw_y = -999;
        shader_start();
        draw_sprite_ext(sprite_get("ffnspecial_rot"), image_index, x, y-30, 1, spr_dir, point_direction(x,y,nspec_target.x,nspec_target.y-30), c_white, 1);
        shader_end();
    }
    else
        draw_y = 0;
}

if(desirae_timelock)
{
    draw_sprite_ext(sprite_index, image_index, desirae_time_x, desirae_time_y, spr_dir*(1+small_sprites), 1+small_sprites, 0, c_red, 0.5);
    for(ic = 0; ic > desirae_rewind_spots; ic ++)
    {
        var tempclone = desirae_rewind_spot[ic]
        draw_sprite_ext(sprite_index, image_index, tempclone[0], tempclone[1], spr_dir*(1+small_sprites), 1+small_sprites, 0, c_red, 0.2);
    }
}
// afterimage
if(fast_fwd)
{
    for (var i = 0; i < array_length_1d(afterimage_array); ++i)
    {
        var obj = afterimage_array[i];
        gpu_set_blendmode_ext(bm_src_alpha, bm_max)
        shader_start();
        draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1+small_sprites), 1+small_sprites, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
        shader_end();
        gpu_set_blendmode(bm_normal);
    }
}