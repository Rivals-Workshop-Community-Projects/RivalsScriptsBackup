// snowflake
with (player_id)
{
	var alpha = (flake.isOut||move_cooldown[AT_DSPECIAL]==0)?1:0.5;
	draw_sprite_ext(sprite_get("snowflake"), 0, floor(flake.x-flake.hsp/2), floor(flake.y-flake.vsp/2), 2, 2, get_gameplay_time()*1.5, c_white, alpha/2);
	draw_sprite_ext(sprite_get("snowflake"), 0, floor(flake.x), floor(flake.y), 2, 2, get_gameplay_time()*1.5, c_white, alpha);
}

with (obj_article1) if (player_id == other.player_id)
{
	draw_sprite_ext(sprite_index, image_index, x-hsp/2, y-vsp/2, spr_dir*2, 2, angle+90, tint, 0.5);
	draw_sprite_ext(sprite_index, image_index, x, y, spr_dir*2, 2, angle+90, tint, 1);
}