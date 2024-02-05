if "other_player_id" not in self || !instance_exists(other_player_id) || "drone" not in other_player_id exit;
if other_player_id.drone != noone && other_player_id.drone.state == clamp(other_player_id.drone.state, 1, 4) && targeted[other_player_id.player - 1]{
    target_anim[@other_player_id.player - 1]++;
    var anim = target_anim[other_player_id.player - 1];
    with other_player_id shader_start();
    draw_sprite_ext(other_player_id.target_spr, (anim < 15? anim/5: 3 + (anim/5)%3), x, y - char_height/2, 2, 2, 0, c_white, 1);
    with other_player_id shader_end();
}else target_anim[@other_player_id.player - 1] = 0;
if frozen{
    frozen--;
    gpu_set_fog(1, c_teal, 1, 0);
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, (small_sprites+1)*spr_dir, small_sprites+1, spr_angle, c_white, frozen/120);
    gpu_set_fog(0, c_teal, 1, 0);
}