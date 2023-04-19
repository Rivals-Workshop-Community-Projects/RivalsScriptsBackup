with other_player_id{
    if !(hitstop && timingt && state == PS_ATTACK_GROUND && (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR)){
        shader_start();
        draw_sprite_stretched_ext(sprite_get("radar_circle1"), 0, other.x - (floor(other.char_height * 4/3) + 20) / 2, other.y - floor(other.char_height * 2 / 5) - 13, floor(other.char_height * 4/3) + 20, 26, c_white, radar_a);
        shader_end();
    }
}

if(emmi_fr && state == PS_WRAPPED){
    with other_player_id{ if has_rune("N") other.emmi_rune = 100}
    gpu_set_fog(1, c_aqua, 1, 0);
    draw_sprite_ext(sprite_index, image_index, x, y, (1 + small_sprites) * spr_dir, 1 + small_sprites, image_angle, c_white, 0.7 - 0.6 * state_timer/(70 + emmi_rune));
    gpu_set_fog(0, c_aqua, 0, 1);
    with other_player_id{
        draw_sprite_ext(sprite_get("ice_particle"), 0, other.x + other.char_height / 3, other.y - 40, 2, 2, 0, c_white, 0.8 - 0.6 * other.state_timer/(70 + other.emmi_rune));
        draw_sprite_ext(sprite_get("ice_particle"), 0, other.x + other.char_height / 3, other.y - 40 - other.char_height * 2/4, 2, 2, 0, c_white, 0.8 - 0.6 * other.state_timer/(70 + other.emmi_rune));
        draw_sprite_ext(sprite_get("ice_particle"), 0, other.x - other.char_height / 3, other.y - 40 - other.char_height * 1/4, 2, 2, 0, c_white, 0.8 - 0.6 * other.state_timer/(70 + other.emmi_rune));
    }
}

if(emmi_st){
    gpu_set_fog(1, c_fuchsia, 1, 0);
    draw_sprite_ext(sprite_index, image_index, x, y, (1 + small_sprites) * spr_dir, 1 + small_sprites, image_angle, c_white, abs(emmi_st % 28 - 13) * 0.05);
    gpu_set_fog(0, c_fuchsia, 0, 1);
}