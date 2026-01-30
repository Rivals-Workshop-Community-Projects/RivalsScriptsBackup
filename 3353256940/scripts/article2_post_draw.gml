
if (state == 1) draw_sprite_ext(sprite_get(scrapbomb_visual), image_index_scrapb, x, y, spr_dir, 1, angle_scrapb, has_bounced ? c_white : c_white, 1);

// acid color for unbounced projectile
var col_acid = make_colour_rgb(get_color_profile_slot_r( get_player_color(player), 7 ), get_color_profile_slot_g( get_player_color(player), 7 ), get_color_profile_slot_b( get_player_color(player), 7 ));

shader_end();

if (fuse_active && bomb_fuse < 90) {
    var upper = 0.8 - (bomb_fuse / 120);
    var intensity = upper/2 * (1 + cos(pi*bomb_fuse/8)); // 16f period
    
    gpu_set_fog(true, fuse_color, depth, depth);
    if (state == 1) draw_sprite_ext(sprite_get(scrapbomb_visual), image_index_scrapb, x, y, spr_dir, 1, angle_scrapb, c_white, intensity);
    if (state == 11) draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_white, intensity);
    gpu_set_fog(false, c_white, 0, 0);
}

// fog when hasnt bounced and explodes on hit
if (!has_bounced && free) {
    gpu_set_fog(true, col_acid, depth, depth);
    if (state == 1) draw_sprite_ext(sprite_get(scrapbomb_visual), image_index_scrapb, x, y, spr_dir, 1, angle_scrapb, col_acid, 0.4);
    if (state == 11) draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, col_acid, 0.3);
    gpu_set_fog(false, col_acid, 0, 0);
}

if ((state == 1 || state == 11) && get_match_setting(SET_HITBOX_VIS)) draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, c_white, 0.5);

if (player_id.debug) draw_debug_text( x, y, string("fuse: ") + string(bomb_fuse) )

