//post_draw.gml

shader_start();

//respawn platform
if (state == PS_RESPAWN || respawn_taunt > 0)
{
    draw_sprite_ext(sprite_get("plat_post"), game_time * plat_speed, x, y, small_sprites + 1, small_sprites + 1, 0, c_white, 1);
}

shader_end();

// FSpecial flash
if (fspecial_flash > 0) {
    gpu_set_fog(true, poison_color, depth, depth);
    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_white, fspecial_flash);
    gpu_set_fog(false, c_white, 1, 1);
}

// Training mode: display footstool detection box
if (state == PS_CROUCH && state_timer >= footstool_start && down_down && get_match_setting(SET_HITBOX_VIS)) {
    draw_set_alpha(0.5);
    rectDraw(x+footstool_x, y+footstool_y, footstool_w, footstool_h, make_color_rgb(255, 0, 255));
    draw_set_alpha(1);
}

// Training mode + Abyss Rune: Nspecial Windbox visual
if (nspecial_windbox_rune && is_attacking && attack == AT_NSPECIAL && (window == 2 || window == 3) && get_match_setting(SET_HITBOX_VIS)) {
    draw_set_alpha(0.5);
    rectDraw(x+strong_windbox_x, y+strong_windbox_y, strong_windbox_w, strong_windbox_h, c_blue);
    rectDraw(x+weak_windbox_x, y+weak_windbox_y, weak_windbox_w, weak_windbox_h, c_purple);
    draw_set_alpha(1);
}


//written by muno
#define rectDraw(x1, y1, width, height, color)
{
    draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
}
#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)
{
    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if outline {
        for (i = -1; i < 2; i++) {
            for (j = -1; j < 2; j++) {
                draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
            }
        }
    }

    if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

    if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
    else return;
}

//bair visual 
if (attack == bairvfx && state == PS_ATTACK_AIR && window == 3 && window_timer == 1)
{
spawn_hit_fx( x, y, bairvfx)
}