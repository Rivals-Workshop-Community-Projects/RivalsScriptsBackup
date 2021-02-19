if ("sworded" in self && sworded != 0 && "other_player_id" in self)
{
	with (other_player_id)
	{
		shader_start();
		draw_sprite_ext(swordout, 0, other.x, other.y-32, -spr_dir, 1, 0, c_white, 1 );
		shader_end();
	}
}