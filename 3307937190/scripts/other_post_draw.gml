//Draw over Pastelle Inks!
if ("past_ink_owner" not in self || past_ink_owner == noone || "is_pastelle_DE" in self) exit;

if (past_ink_owner == other_player_id)
{
    var past_ink_color = past_ink_owner.ink_colors[0];
    if (past_ink_b > 0) past_ink_color = past_ink_owner.ink_colors[1];
    else if (past_ink_y > 0) past_ink_color = past_ink_owner.ink_colors[2];

    if ((past_ink_r > 0 || past_ink_b > 0 || past_ink_y > 0) && visible && !perfect_dodging && !strong_flashing)
    {
        gpu_set_fog(1, past_ink_color, 0, 1);
        draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, (1 + small_sprites) * spr_dir, 1 + small_sprites, spr_angle, c_white, 0.5 * sin(get_gameplay_time()/10));
        gpu_set_fog(0, c_white, 0, 0);
        shader_start();
        draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, (1 + small_sprites) * spr_dir, 1 + small_sprites, spr_angle, past_ink_color, 0.5);
        shader_end();
    }
}