if ("other_player_id" in self)
{
	if (hitpause && last_player == other_player_id.player && last_attack == AT_FSPECIAL && last_hbox_num == 1) with (other_player_id)
	{
		shader_start();
		draw_sprite_ext(sprite_get("final_ice"), 0, other.x, other.y-other.char_height/2, 2, 2, 0, c_white, min(hitstop<4?hitstop/4:(hitstop_full-hitstop)/6, 1)*0.5);
		shader_end();
	}
}