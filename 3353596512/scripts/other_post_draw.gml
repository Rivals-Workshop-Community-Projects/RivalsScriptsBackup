//postdraws (draws over) other players

if (flashbang_visual_timer > 0){
    var old_colorO = static_colorO;
    static_colorO = colorO;
    shader_start();
        draw_sprite_ext(sprite_index, image_index, x + flashbang_visual_timer*2, y, image_xscale*(small_sprites+1), image_yscale*(small_sprites+1), image_angle + spr_angle, c_white, 0.5);
        draw_sprite_ext(sprite_index, image_index, x - flashbang_visual_timer*2, y, image_xscale*(small_sprites+1), image_yscale*(small_sprites+1), image_angle + spr_angle, c_white, 0.5);
    shader_end();
    static_colorO = old_colorO;
}

if (has_reticle){
    with (other_player_id){
        draw_sprite_ext(sprite_get("scan_reticle_inner"), 0, other.x - 2, (other.y - other.char_height/2) - 2, other.reticle_zoom_inner, other.reticle_zoom_inner, 0, c_white, other.reticle_alpha*0.5);
        draw_sprite_ext(sprite_get("scan_reticle_outer"), 0, other.x, other.y - other.char_height/2, other.reticle_zoom_outer, other.reticle_zoom_outer, 0, c_white, other.reticle_alpha*0.5);
        draw_sprite_ext(sprite_get("scan_namebar_upper"), 0, other.x + 18, (other.y - other.char_height/2) - 22, other.reticle_box_upper, 2, 0, c_white, (other.reticle_alpha+0.4)*0.4);
        draw_sprite_ext(sprite_get("scan_namebar_lower"), 0, other.x + 18, (other.y - other.char_height/2) + 2, other.reticle_box_lower, 2, 0, c_white, (other.reticle_alpha+0.4)*0.4);
        textDraw(other.x + 20, other.y - (other.char_height/2 + 16), "fName", $000050, 0, 9999, fa_left, 1, 0, other.reticle_alpha, string(other.reticle_name), 0);
    }
}

if (got_masked && id != masked_id){
        //draw_debug_text(x, y, "mask type: " + string(mask_type == 0? "Comedy" : "Tragedy"));
        //draw_debug_text(x, y, "hurtbox bbox y: " + string(hurtboxID.bbox_top));
        draw_sprite_ext(other_player_id.mask_sprite, masked_index + mask_type*7, x + 6*spr_dir, mask_position, 2*spr_dir, 2, 0, c_white, 1);
    }
    
//draw_debug_text(x, y+16, "vehicular manslaughter lockout: " + string(cruiser_lockout));


#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(floor(x1) + i * 2, floor(y1) + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha > 0 draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;