//

if (get_match_setting(SET_HITBOX_VIS)){
    var tank_mask = draw_sprite_ext(mask_index, player_id.image_index, x, y, 1 * spr_dir, 1, 0, c_white, 0.5 - player_id.free*0.5 - player_id.attack_invince*0.5);
    tank_mask.depth = player_id.depth - 1;
}