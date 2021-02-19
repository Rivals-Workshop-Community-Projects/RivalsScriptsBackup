//post_draw is drawn in front of the character

if(attack == AT_NSPECIAL_1){
    if(sprite_index == sprite_get("nspecial_1") && image_index < 9){
        draw_sprite_ext(sprite_get("nspec1_swoosh"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
    }
}

with (pHitBox){
    if (orig_player == other.player && attack == AT_NSPECIAL && hbox_num == 1) {
        draw_sprite_ext(sprite, draw_timer, x, y, flipped, 1, 0, c_white, 1);
    }
}