switch(frozen_level){
    case 1:
    draw_sprite_ext(other_player_id.ice_icon, 0, x - 10, y - char_height - 40, 2, 2, 0, c_white, ice_alpha);
    break;
    
    case 2:
    draw_sprite_ext(other_player_id.ice_icon, 0, x - 20, y - char_height - 40, 2, 2, 0, c_white, ice_alpha);
    draw_sprite_ext(other_player_id.ice_icon, 0, x, y - char_height - 40, 2, 2, 0, c_white, ice_alpha);
    break;
}

draw_sprite_ext(sprite_index, image_index, x, y, (1 + small_sprites) * spr_dir, 1 + small_sprites, 0, c_aqua, ice_alpha);
draw_sprite_ext(other_player_id.ice_particle, 1, x - 30, y - 50, 2, 2, 0, c_white, ice_alpha - 1);
draw_sprite_ext(other_player_id.ice_particle, 1, x - 30, y - 10, 2, 2, 0, c_white, ice_alpha - 1);
draw_sprite_ext(other_player_id.ice_particle, 1, x, y - 30, 2, 2, 0, c_white, ice_alpha - 1);