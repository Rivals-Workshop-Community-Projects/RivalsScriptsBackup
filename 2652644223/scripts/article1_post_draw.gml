for(i = 0; i < 3; i++)
{
    if(bullets_held-1 >= i)
        bullets[i].alpha = 1;
    draw_sprite_ext(sprite_get("dspecial_fire"), 0, x,y, 0.9*spr_dir, 0.9, bullets[i].rot, c_white, bullets[i].alpha - (bullets[i].enhanced ? 0 : 0.3));
}
with player_id
{
    var col = get_player_color(player);
    var slot = 4;
}
var glow_color = make_color_rgb(get_color_profile_slot_r(col,slot),get_color_profile_slot_g(col,slot),get_color_profile_slot_b(col,slot))
draw_sprite_ext(sprite_get("dspecial_glow"), image_index, x,y, 1, 1, 0, glow_color, 1);
draw_sprite_ext(sprite_get("articlearrow"),image_index, x,y, 1, 1, 0, get_player_hud_color(player), image_alpha);