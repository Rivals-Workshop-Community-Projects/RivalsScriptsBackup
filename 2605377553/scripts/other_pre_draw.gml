/*if (strongStunnedTimer > 0)
{
	var a = 1;
	with(other_player_id)
	{
		draw_sprite_ext(sprite_get("chains_back"), get_gameplay_time()/10, other.x, other.y, other.spr_dir, 1, 0, c_white, a);
		draw_sprite_ext(sprite_get("chains_back"), get_gameplay_time()/10, other.x, other.y, -other.spr_dir, 1, 0, c_white, a);
	}
}