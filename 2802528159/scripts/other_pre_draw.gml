if(instance_exists(other_player_id.grabp) && other_player_id.attack == AT_NSPECIAL && other_player_id.grabp == self){
    shader_start();
    draw_y = 9999;
    draw_x = 9999;
    draw_sprite_ext(sprite_index, image_index, other_player_id.x + (10 + char_height / 2) * other_player_id.spr_dir, other_player_id.y - 4, (1 + small_sprites) * spr_dir, image_yscale + small_sprites, other_player_id.grab_angle, c_white, 1);
    shader_end();
}else if(instance_exists(other_player_id.grabp) && other_player_id.attack == AT_NSPECIAL_AIR && other_player_id.grabp == self){
    shader_start();
    draw_y = 9999;
    draw_x = 9999;
    draw_sprite_ext(sprite_index, image_index, other_player_id.x + (10 + char_height / 2) * other_player_id.spr_dir, other_player_id.y - 4, (1 + small_sprites) * spr_dir, image_yscale + small_sprites, -90 * other_player_id.spr_dir, c_white, 1);
    shader_end();
}

with other_player_id{
    shader_start();
    draw_sprite_stretched_ext(sprite_get("radar_circle2"), 0, other.x - (floor(other.char_height * 4/3) + 20) / 2, other.y - floor(other.char_height * 2 / 5) - 13, floor(other.char_height * 4/3) + 20, 26, c_white, radar_a);
    shader_end();
}