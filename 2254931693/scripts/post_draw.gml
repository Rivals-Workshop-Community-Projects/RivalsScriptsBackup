//post-draw



 
if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack == AT_NSPECIAL && window = 8 && image_index = 21){
    draw_sprite_pos(sprite_get("fspecialrope"), -1, x + 24 * spr_dir, y - 50,  hit_player_obj.x, hit_player_obj.y - 34,  hit_player_obj.x, hit_player_obj.y - 24, x + 24 * spr_dir, y - 40, 1);
    draw_sprite_ext(sprite_get("fspecialropeend"), -1, hit_player_obj.x, hit_player_obj.y - 38, spr_dir, 1, 0, c_white, 1 );
} 


if (has_rune("L") && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window == 2 && (attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND)){
        draw_sprite_ext(sprite_get("cyclone_rune_front"), image_index, x + 4 * spr_dir, y + 2, 1 * spr_dir, 1, 0, c_white, 1)
}


