with player_id shader_start();
draw_sprite_ext(fake_sprite_index, fake_image_index, x + fake_x, y + fake_y - (!free && !place_meeting(x, y + 1, asset_get("par_block"))), spr_dir, 1, fake_image_angle * spr_dir, c_white, 1);
with player_id shader_end();

if player_id.phone_ditto{
	draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x - 7, y - 40, 1, 1, 0, get_player_hud_color(player), 1);
}

if state == PS_ATTACK_AIR && uspecialing_player == noone && grabbed_player == noone && "attack_owner" in self{
	draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x - 7, y - 40, 1, 1, 0, get_player_hud_color(attack_owner), 1);
}