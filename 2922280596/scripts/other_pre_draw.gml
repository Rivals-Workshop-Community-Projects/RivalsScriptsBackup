
if(desirae_timelock && desirae_time_mode == 1)
{
    draw_sprite_ext(sprite_index, image_index, desirae_time_x, desirae_time_y, spr_dir*(1+small_sprites), 1+small_sprites, 0, c_red, 0.5);
    for(ic = 0; ic < desirae_rewind_spots; ic ++)
    {
        var tempclone = desirae_rewind_spot[ic]
        draw_sprite_ext(sprite_index, image_index, tempclone[0], tempclone[1], spr_dir*(1+small_sprites), 1+small_sprites, 0, c_red, 0.2);
    }
}
