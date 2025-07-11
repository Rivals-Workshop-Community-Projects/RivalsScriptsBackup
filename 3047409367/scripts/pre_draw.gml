shader_start();
if (attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if (spr_dir == 1){
    	draw_sprite_ext(sprite_get("nspecial_hand"), image_index, x + 0*spr_dir, y - 28, spr_dir*(small_sprites + 1), 1*(small_sprites + 1), nspec_dir, -1, 1);
    }
    else{
        draw_sprite_ext(sprite_get("nspecial_hand_flipped"), image_index, x - 1*spr_dir, y - 28, spr_dir*(small_sprites + 1), 1*(small_sprites + 1), nspec_dir, -1, 1);
    }
}

if (attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if (get_player_color( player ) != 0){
        if (spr_dir == 1){
            draw_sprite_ext(sprite_get("uspecial_draw"), image_index, x + 0 - 0*(spr_dir == 1), y - 30, spr_dir*(small_sprites + 1), 1*(small_sprites + 1), uspec_dir, -1, 1);
        }
        else{
            draw_sprite_ext(sprite_get("uspecial_draw_flipped"), image_index, x + 0 - 0*(spr_dir == 1), y - 30, spr_dir*(small_sprites + 1), 1*(small_sprites + 1), uspec_dir, -1, 1);
        }
    }
    else{
        if (spr_dir == 1){
            draw_sprite_ext(sprite_get("uspecial_draw_mapped"), image_index, x + 0 - 0*(spr_dir == 1), y - 30, spr_dir*(small_sprites + 1), 1*(small_sprites + 1), uspec_dir, -1, 1);
        }
        else{
            draw_sprite_ext(sprite_get("uspecial_draw_flipped_mapped"), image_index, x + 0 - 0*(spr_dir == 1), y - 30, spr_dir*(small_sprites + 1), 1*(small_sprites + 1), uspec_dir, -1, 1);
        }
    }
    
    if (window < 3){
        if (spr_dir == 1){
            draw_sprite_ext(sprite_get("arrow"), image_index, x + 0 - 0*(spr_dir == 1), y - 30, spr_dir*(small_sprites + 1), 1*(small_sprites + 1), uspec_dir, -1, 1);
        }
        else{
            draw_sprite_ext(sprite_get("arrow_flipped"), image_index, x + 0 - 0*(spr_dir == 1), y - 30, spr_dir*(small_sprites + 1), 1*(small_sprites + 1), uspec_dir, -1, 1);
        }
    }
}
shader_end();