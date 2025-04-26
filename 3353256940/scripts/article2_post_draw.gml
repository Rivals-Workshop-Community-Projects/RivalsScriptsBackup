
if (state == 1) draw_sprite_ext(sprite_get(scrapbomb_visual), image_index_scrapb, x, y, spr_dir, 1, angle_scrapb, c_white, 1);

shader_end();

if (fuse_active && bomb_fuse < 40) {
    var upper = 0.8 - (bomb_fuse / 60);
    var intensity = upper/2 * (1 + cos(pi*bomb_fuse/8)); // 16f period
    
    gpu_set_fog(true, fuse_color, depth, depth);
    if (state == 1) draw_sprite_ext(sprite_get(scrapbomb_visual), image_index_scrapb, x, y, spr_dir, 1, angle_scrapb, c_white, intensity);
    if (state == 11) draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_white, intensity);
    gpu_set_fog(false, c_white, 0, 0);
}

if ((state == 1 || state == 11) && get_match_setting(SET_HITBOX_VIS)) draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, c_white, 0.5);

if (player_id.debug) draw_debug_text( x, y, string("fuse: ") + string(bomb_fuse) )

