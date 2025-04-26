if ("other_player_id" in self)
{
	if (instance_exists(noelleFrostbiteID) && noelleFrostbiteID.player == other_player_id.player)
	{
		if (draw_indicator && noelleFrostbite > 0) with (other_player_id)
		{
			shader_start();
			draw_sprite_ext(sprite_get("frostbite"), other.noelleFrostbite-1, other.x, other.y+28, 2, 2, 0, c_white, 1);
			shader_end();
		}
		if (noelleFrostgrave) with (other_player_id)
		{
			var alpha = 1;
			if (other.noelleFrostgraveTime == other.noelleFrostgrave || ((hitpause || (other.state == PS_HITSTUN && other.state_timer == 1)) && other.noelleFrostgrave <= other.hitstun_full/3))
			{
				gpu_set_fog(1, c_white, 0, 1);
				alpha = 0.75;
			}
			else shader_start();
			draw_sprite_ext(sprite_get("crystal"), get_gameplay_time()/4, other.x, other.y, 2, 2, 0, c_white, 1*alpha);
			shader_end();
			gpu_set_fog(1, c_black, 0, 1);
			draw_sprite_ext(other.sprite_index, other.image_index, other.x+other.draw_x, other.y+other.draw_y, (1+other.small_sprites)*other.spr_dir, 1+other.small_sprites, 0, c_white, 0.8*alpha);
			gpu_set_fog(0, c_white, 0, 0);
			shader_start();
			draw_sprite_ext(sprite_get("crystal"), get_gameplay_time()/4, other.x, other.y, 2, 2, 0, c_white, 0.3*alpha);
			shader_end();
			var frostHeight = (1-min(other.noelleFrostgrave/other.noelleFrostgraveTime,other.hitstun/other.hitstun_full));
			draw_sprite_part_ext(sprite_get("crystalOutline"), 0, 0, round(84*frostHeight), 52, 84, other.x-52, other.y-122+round(168*frostHeight/2)*2, 2, 2, c_white, 1*alpha);
		}
	}
}