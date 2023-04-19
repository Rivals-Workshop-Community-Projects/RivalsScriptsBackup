with (player_id)
{
	// attacks
	if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	{
		switch (attack)
		{
			case AT_DSTRONG:
				if (image_index > 2)
				{
					shader_start();
					draw_sprite_ext(sprite_get("dstrong2"), image_index-3, x, y, spr_dir*2, 2, 0, c_white, 1);
					shader_end();
				}
				break;
		}
	}
}