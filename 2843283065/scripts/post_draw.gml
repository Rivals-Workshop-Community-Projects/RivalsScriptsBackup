if (!dragon_summoning && !dragon_active)
{
	for (var i=0;i<array_length_1d(dragon_ball_owners);i++)
	{
		if (i == 0)
		{
			star_color = c_red
		}
		else if (i == 1)
		{
			star_color = c_orange
		}
		else if (i == 2)
		{
			star_color = c_yellow
		}
		else if (i == 3)
		{
			star_color = c_fuchsia
		}
		else if (i == 4)
		{
			star_color = c_blue
		}
		else if (i == 5)
		{
			star_color = c_aqua
		}
		else if (i == 6)
		{
			star_color = c_lime
		}
		else
		{
			star_color = c_white
		}
		if (dragon_ball_owners[i] > 0 && dragon_ball_owners[i] < 5)
		{
			draw_sprite_ext(sprite_get("star"), 0, player_x[(dragon_ball_owners[i])] + lengthdir_x(45, (i * 51.4285714286) + (get_gameplay_time() * 2.5)), player_y[(dragon_ball_owners[i])] + lengthdir_y(45, (i * 51.4285714286) + (get_gameplay_time() * 2.5)) - (player_height[(dragon_ball_owners[i])] / 2), ((dragon_ball_lifetime[i] + 1) % 2) / 2, ((dragon_ball_lifetime[i] + 1) % 2) / 2, get_gameplay_time() * -3, star_color, 1)
		}
		if (dragon_ball_owners[i] != -1 && dragon_ball_owners[i] < 1)
		{
			if (dragon_ball_lifetime[i] >= 120)
			{
				draw_sprite_ext(sprite_get("star"), 0, dragon_ball_x[i], dragon_ball_y[i], 0.5, 0.5, get_gameplay_time() * -3, star_color, 1)
			}
			else
			{
				draw_sprite_ext(sprite_get("star"), 0, dragon_ball_x[i], dragon_ball_y[i], ((dragon_ball_lifetime[i] + 1) % 2) / 2, ((dragon_ball_lifetime[i] + 1) % 2) / 2, get_gameplay_time() * -3, star_color, 1)
			}
		}
		else if (dragon_ball_owners[i] != -2 && dragon_ball_owners[i] < 1)
		{
			draw_sprite_ext(sprite_get("star"), 0, dragon_ball_x[i], dragon_ball_y[i], 1, 1, get_gameplay_time() * -3, star_color, 1)
		}
	}
}
if (!dragon_active && !wish_made)
{
	if (use_old_nimbus)
	{
		if (!dragon_ball_on_nimbus)
		{
			//draw_sprite_ext(sprite_get("flying_nimbus"), 0, flying_nimbus_x - 6, flying_nimbus_y + 6, (flying_nimbus_dir - 0.5) * 4, 2, 0, c_white, 0.25)
		}
		else
		{
			//draw_sprite_ext(sprite_get("flying_nimbus"), 0, flying_nimbus_x - 6, flying_nimbus_y + 6, (flying_nimbus_dir - 0.5) * 4, 2, 0, c_white, 1)
		}
		//draw_sprite_ext(sprite_get("flying_nimbus"), 0, flying_nimbus_x - 6, flying_nimbus_y + 6, (flying_nimbus_dir - 0.5) * 4, 2, 0, c_black, min(ease_linear(0, 1, summon_progress, 30), 0.75))
		//draw_sprite_ext(sprite_get("flying_nimbus_white"), 0, flying_nimbus_x - 6, flying_nimbus_y + 6, (flying_nimbus_dir - 0.5) * 4, 2, 0, c_white, ease_linear(0, 1, summon_progress - 180, 60))
	}
	else
	{
		if (!dragon_ball_on_nimbus)
		{
			//draw_sprite_ext(sprite_get("new_flying_nimbus"), 0, flying_nimbus_x - 60, flying_nimbus_y + 20, (flying_nimbus_dir - 0.5) * 4, 2, 0, c_white, 0.5)
		}
		else
		{
			//draw_sprite_ext(sprite_get("new_flying_nimbus"), 0, flying_nimbus_x - 60, flying_nimbus_y + 20, (flying_nimbus_dir - 0.5) * 4, 2, 0, c_white, 1)
		}
		//draw_sprite_ext(sprite_get("new_flying_nimbus"), 0, flying_nimbus_x - 60, flying_nimbus_y + 20, (flying_nimbus_dir - 0.5) * 4, 2, 0, c_black, min(ease_linear(0, 1, summon_progress, 30), 0.75))
		//draw_sprite_ext(sprite_get("new_flying_nimbus_white"), 0, flying_nimbus_x - 60, flying_nimbus_y + 20, (flying_nimbus_dir - 0.5) * 4, 2, 0, c_white, ease_linear(0, 1, summon_progress - 180, 60))
	}
}

if (dramatic_finish)
{
	if (dramatic_finish_url < 20)
	{
		if (dramatic_finish_url == 2)
		{
			other.dramatic_finish_player_sprite = sprite_get("zetterburn")
		}
		else if (dramatic_finish_url == 3)
		{
			other.dramatic_finish_player_sprite = sprite_get("orcane")
		}
		else if (dramatic_finish_url == 4)
		{
			other.dramatic_finish_player_sprite = sprite_get("wrastor")
		}
		else if (dramatic_finish_url == 5)
		{
			other.dramatic_finish_player_sprite = sprite_get("kragg")
		}
		else if (dramatic_finish_url == 6)
		{
			other.dramatic_finish_player_sprite = sprite_get("forsburn")
		}
		else if (dramatic_finish_url == 7)
		{
			other.dramatic_finish_player_sprite = sprite_get("maypul")
		}
		else if (dramatic_finish_url == 8)
		{
			other.dramatic_finish_player_sprite = sprite_get("absa")
		}
		else if (dramatic_finish_url == 9)
		{
			other.dramatic_finish_player_sprite = sprite_get("etalus")
		}
		else if (dramatic_finish_url == 10)
		{
			other.dramatic_finish_player_sprite = sprite_get("ori")
		}
		else if (dramatic_finish_url == 11)
		{
			other.dramatic_finish_player_sprite = sprite_get("ranno")
		}
		else if (dramatic_finish_url == 12)
		{
			other.dramatic_finish_player_sprite = sprite_get("clairen")
		}
		else if (dramatic_finish_url == 13)
		{
			other.dramatic_finish_player_sprite = sprite_get("sylvanos")
		}
		else if (dramatic_finish_url == 14)
		{
			other.dramatic_finish_player_sprite = sprite_get("elliana")
		}
		else if (dramatic_finish_url == 15)
		{
			other.dramatic_finish_player_sprite = sprite_get("shovel")
		}
		else if (dramatic_finish_url == 16)
		{
			other.dramatic_finish_player_sprite = sprite_get("mollo")
		}
		else if (dramatic_finish_url == 17)
		{
			other.dramatic_finish_player_sprite = sprite_get("hodan")
		}
		else if (dramatic_finish_url == 18)
		{
			other.dramatic_finish_player_sprite = sprite_get("pomme")
		}
		else if (dramatic_finish_url == 19)
		{
			other.dramatic_finish_player_sprite = sprite_get("olympia")
		}
	}
	if (dramatic_finish_time >= 90 && !dramatic_finish_music_playing)
	{
		dramatic_finish_music_playing = true
		sound_play( sound_get( "dramatic_finish_short" ) )
	}
	if (dramatic_finish_time <= 90)
	{
		//print("DRAM_FINISH_TIME: " + string(dramatic_finish_time))
		set_view_position( room_width / 2, room_height / 2 )
		//draw_sprite_ext(sprite_get("big_flying_nimbus"), 0, flying_nimbus_x, flying_nimbus_y, 0.75, 0.75, 0, c_white, 1)
		stage_x = get_stage_data( SD_X_POS );
		stage_y = get_stage_data( SD_Y_POS );
		stage_center_x = ease_linear(stage_x, room_width - stage_x, 1, 2)
		nova_height = ease_linear( stage_y, room_height - stage_y, 1, 2 )
		draw_sprite_ext(sprite_get("dramatic_background"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), ease_linear( stage_y, room_height - stage_y, 1, 2 ), 2, 2, 0, c_white, 1)
		//draw_sprite_ext(sprite_get("flash"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), ease_linear( stage_y, room_height - stage_y, 1, 2 ), 120, 120, 0, c_black, 0.75);
		draw_sprite_ext( sprite_get("fufu_nova_pendulum"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), 100 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, sin((90 - dramatic_finish_time) / 60) * 25, c_white, 1 )
		draw_sprite_ext( sprite_get("fufu_nova_things"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, c_white, 1 )
		draw_sprite_ext( sprite_get("fufu_nova_pupils"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, c_white, 1 )
		//draw_sprite_ext( sprite_get("nova_vane_eyes"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, cos((dramatic_finish_time * -1) / 75) * 0, c_white, 1 )
		//draw_sprite_ext( sprite_get("nova_big_gear"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 114, -110 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, (dramatic_finish_time), c_white, 1 )
		//draw_sprite_ext( sprite_get("nova_silver_gear"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 60, -120 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, (dramatic_finish_time), c_white, 1 )
		//draw_sprite_ext( sprite_get("nova_small_gear"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 124, -90 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, (dramatic_finish_time * -1), c_white, 1 )
		draw_sprite_ext( sprite_get("fufu_nova_big_gear"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 114, -110 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, 90 - (dramatic_finish_time), c_white, 1 )
		draw_sprite_ext( sprite_get("fufu_nova_silver_gear"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 80, -120 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, 90 - (dramatic_finish_time), c_white, 1 )
		draw_sprite_ext( sprite_get("fufu_nova_small_gear"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 124, -90 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, 90 - (dramatic_finish_time * -1), c_white, 1 )
		//draw_sprite_ext( sprite_get("nova_wind_up_thingy"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 150, 0 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, cos(dramatic_finish_time / 30), 25, c_white, 1 )
		draw_sprite_ext( sprite_get("fufu_nova_wind_up_thingy"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 150, 0 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, cos((dramatic_finish_time * -1) / 30) * 2, 25, c_white, 1 )
		draw_sprite_ext( sprite_get("fufu_nova_eyelids_upper"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), min(nova_height, max(nova_height - 20, ease_linear(nova_height, nova_height - 20, 360 - 240, 120))) + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, c_white, 1 )
		draw_sprite_ext( sprite_get("fufu_nova_eyelids_lower"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), min(nova_height + 20, max(nova_height, ease_linear(nova_height, nova_height + 20, 360 - 240, 120))) + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, c_white, 1 )
		//draw_sprite_ext( sprite_get("nova_face"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, cos((dramatic_finish_time * -1) / 75) * 0, c_white, 1 )
		//draw_sprite_ext( sprite_get("og_nova_face"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 4, 4, cos((dramatic_finish_time * -1) / 75) * 0, c_white, 1 )
		draw_sprite_ext( sprite_get("fufu_nova_base"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, c_white, 1 )
		draw_sprite_ext( sprite_get("fufu_nova_second_hand"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) - 113, 107 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, ((90 - dramatic_finish_time) * -1.5) - 45, c_white, 1 )
		draw_sprite_ext( sprite_get("fufu_nova_first_hand"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) - 113, 107 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, ((90 - dramatic_finish_time)) - 45, c_white, 1 )
		draw_sprite_ext( dramatic_finish_player_sprite, 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) - 175, ease_linear( stage_y, room_height - stage_y, 1, 2 ) + min(room_height, max(room_height * -1, ease_linear(room_height, room_height * -1, dramatic_finish_time, 30))), 1, 1, 0, c_white, 1)
		draw_sprite_ext( dramatic_finish_player_sprite, 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) - 175, ease_linear( stage_y, room_height - stage_y, 1, 2 ) + min(room_height, max(room_height * -1, ease_linear(room_height, room_height * -1, dramatic_finish_time - 3, 30))), 1, 1, 0, c_white, 0.75)
		draw_sprite_ext( dramatic_finish_player_sprite, 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) - 175, ease_linear( stage_y, room_height - stage_y, 1, 2 ) + min(room_height, max(room_height * -1, ease_linear(room_height, room_height * -1, dramatic_finish_time - 6, 30))), 1, 1, 0, c_white, 0.5)
		draw_sprite_ext( dramatic_finish_player_sprite, 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) - 175, ease_linear( stage_y, room_height - stage_y, 1, 2 ) + min(room_height, max(room_height * -1, ease_linear(room_height, room_height * -1, dramatic_finish_time - 9, 30))), 1, 1, 0, c_white, 0.25)
		draw_sprite_ext( dramatic_finish_player_sprite, 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 50, ease_linear( stage_y, room_height - stage_y, 1, 2 ) + min(-100, max(room_height * -1, ease_linear(room_height * -1, -100, dramatic_finish_time - 0, 90))), 0.1, 0.1, 0, c_white, 1)
		suppress_stage_music(min(1, max(0, ease_linear(1, 0, dramatic_finish_time, 200))));
	}
	else
	{
		if (dramatic_finish_time < 90 && dramatic_finish_time % 4 == 0)
		{
			array_push(explosion_index, 0);
			array_push(explosion_x, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + random_func(get_gameplay_time() % 24,300,0) - 150);
			array_push(explosion_y, nova_height + random_func_2(get_gameplay_time() % 12,300,0) - 150);
		}
		else if (dramatic_finish_time < 150 && dramatic_finish_time % 8 == 0)
		{
			array_push(explosion_index, 0);
			array_push(explosion_x, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + random_func(get_gameplay_time() % 24,300,0) - 150);
			array_push(explosion_y, nova_height + random_func_2(get_gameplay_time() % 12,300,0) - 150);
		}
		else if (dramatic_finish_time < 210 && dramatic_finish_time % 12 == 0)
		{
			array_push(explosion_index, 0);
			array_push(explosion_x, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + random_func(get_gameplay_time() % 24,300,0) - 150);
			array_push(explosion_y, nova_height + random_func_2(get_gameplay_time() % 12,300,0) - 150);
		}
		if (dramatic_finish_time < 280)
		{
			if (dramatic_finish_time % 2 == 0)
			{
				nova_color = c_white
			}
		}
		nova_color = merge_colour(c_white, c_black, min(1, max(0, ease_linear(0, 1, dramatic_finish_time - 150, 30))));
		suppress_stage_music(0);
		//print("DRAM_FINISH_TIME: " + string(dramatic_finish_time))
		set_view_position( room_width / 2, room_height / 2 )
		//draw_sprite_ext(sprite_get("big_flying_nimbus"), 0, flying_nimbus_x, flying_nimbus_y, 0.75, 0.75, 0, c_white, 1)
		stage_x = get_stage_data( SD_X_POS );
		stage_y = get_stage_data( SD_Y_POS );
		stage_center_x = ease_linear(stage_x, room_width - stage_x, 1, 2)
		nova_height = ease_linear( stage_y, room_height - stage_y, 1, 2 )
		draw_sprite_ext(sprite_get("dramatic_background"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), ease_linear( stage_y, room_height - stage_y, 1, 2 ), 2, 2, 0, c_white, 1)
		if (dramatic_finish_time < 92)
		{
			draw_sprite_ext(sprite_get("flash"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), ease_linear( stage_y, room_height - stage_y, 1, 2 ), 120, 120, 0, c_yellow, 1);
		}
		if (dramatic_finish_time > 94 && dramatic_finish_time < 96)
		{
			draw_sprite_ext(sprite_get("flash"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), ease_linear( stage_y, room_height - stage_y, 1, 2 ), 120, 120, 0, c_yellow, 1);
		}
		if (dramatic_finish_time > 98 && dramatic_finish_time < 100)
		{
			draw_sprite_ext(sprite_get("flash"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), ease_linear( stage_y, room_height - stage_y, 1, 2 ), 120, 120, 0, c_yellow, 1);
		}
		draw_sprite_ext(sprite_get("flash"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), ease_linear( stage_y, room_height - stage_y, 1, 2 ), 120, 120, 0, c_white, min(1, max(0, ease_linear(0, 1, dramatic_finish_time - 150, 120))));
		draw_sprite_ext( sprite_get("fufu_nova_smaller_pendulum"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), min(50, max(0, ease_linear(0, 50, dramatic_finish_time - 180, 210))) + 100 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, 0, nova_color, 1 )
		draw_sprite_ext( sprite_get("fufu_nova_things"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, nova_color, 1 )
		draw_sprite_ext( sprite_get("fufu_nova_pupils_destruction"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, nova_color, 1 )
		//draw_sprite_ext( sprite_get("nova_vane_eyes"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, cos((dramatic_finish_time * -1) / 75) * 0, nova_color, 1 )
		//draw_sprite_ext( sprite_get("nova_big_gear"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 114, -110 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, (dramatic_finish_time), nova_color, 1 )
		//draw_sprite_ext( sprite_get("nova_silver_gear"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 60, -120 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, (dramatic_finish_time), nova_color, 1 )
		//draw_sprite_ext( sprite_get("nova_small_gear"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 124, -90 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, (dramatic_finish_time * -1), nova_color, 1 )
		draw_sprite_ext( sprite_get("fufu_nova_big_gear"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 114, -110 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, 0, nova_color, 1 )
		draw_sprite_ext( sprite_get("fufu_nova_silver_gear"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 80, -120 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, 0, nova_color, 1 )
		draw_sprite_ext( sprite_get("fufu_nova_small_gear"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 124, -90 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, 0, nova_color, 1 )
		//draw_sprite_ext( sprite_get("nova_wind_up_thingy"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 150, 0 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, cos(dramatic_finish_time / 30), 25, nova_color, 1 )
		draw_sprite_ext( sprite_get("fufu_nova_wind_up_thingy"), 0, min(100, max(0, ease_linear(0, 100, dramatic_finish_time - 180, 210))) + ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 150, min(0, max(-50, ease_linear(0, -50, dramatic_finish_time - 180, 210))) + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, 25, nova_color, 1 )
		//draw_sprite_ext( sprite_get("fufu_nova_eyelids_upper"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), min(nova_height, max(nova_height - 20, ease_linear(nova_height, nova_height - 20, 360 - 240, 120))) + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, nova_color, 1 )
		//draw_sprite_ext( sprite_get("fufu_nova_eyelids_lower"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), min(nova_height + 20, max(nova_height, ease_linear(nova_height, nova_height + 20, 360 - 240, 120))) + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, nova_color, 1 )
		//draw_sprite_ext( sprite_get("nova_face"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, cos((dramatic_finish_time * -1) / 75) * 0, nova_color, 1 )
		//draw_sprite_ext( sprite_get("og_nova_face"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 4, 4, cos((dramatic_finish_time * -1) / 75) * 0, nova_color, 1 )
		if (dramatic_finish_time > 180)
		{
			draw_sprite_ext( sprite_get("fufu_nova_exploding"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, nova_color, 1 )
			draw_sprite_ext( sprite_get("fufu_nova_pocketwatch"), 0, min(0, max(-100, ease_linear(0, -100, dramatic_finish_time - 180, 210))) + ease_linear( stage_x, room_width - stage_x, 1, 2 ), min(100, max(0, ease_linear(0, 100, dramatic_finish_time - 180, 210))) + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, nova_color, 1 )
			draw_sprite_ext( sprite_get("fufu_nova_trisquare"), 0, min(0, max(-125, ease_linear(0, -125, dramatic_finish_time - 180, 210))) + ease_linear( stage_x, room_width - stage_x, 1, 2 ), min(50, max(0, ease_linear(0, 50, dramatic_finish_time - 180, 210))) + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, nova_color, 1 )
			draw_sprite_ext( sprite_get("fufu_nova_globe"), 0, min(125, max(0, ease_linear(0, 125, dramatic_finish_time - 180, 210))) + ease_linear( stage_x, room_width - stage_x, 1, 2 ), min(50, max(0, ease_linear(0, 50, dramatic_finish_time - 180, 210))) + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, nova_color, 1 )
			draw_sprite_ext( sprite_get("fufu_nova_loop"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), min(0, max(-50, ease_linear(0, -50, dramatic_finish_time - 180, 210))) + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, nova_color, 1 )
			draw_sprite_ext( sprite_get("fufu_nova_poky_things"), 0, min(50, max(0, ease_linear(0, 50, dramatic_finish_time - 180, 210))) + ease_linear( stage_x, room_width - stage_x, 1, 2 ), min(100, max(0, ease_linear(0, 100, dramatic_finish_time - 180, 210))) + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, nova_color, 1 )
			draw_sprite_ext( sprite_get("fufu_nova_telescope"), 0, min(125, max(0, ease_linear(0, 125, dramatic_finish_time - 180, 210))) + ease_linear( stage_x, room_width - stage_x, 1, 2 ), min(0, max(-125, ease_linear(0, -125, dramatic_finish_time - 180, 210))) + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, nova_color, 1 )
			draw_sprite_ext( sprite_get("fufu_nova_keyboard"), 0, min(0, max(-150, ease_linear(0, -150, dramatic_finish_time - 180, 210))) + ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, nova_color, 1 )
		}
		else
		{
			draw_sprite_ext( sprite_get("fufu_nova_base"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, nova_color, 1 )
		}
		draw_sprite_ext( sprite_get("fufu_nova_second_hand"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) - 113, 107 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, (0 * -1.5) - 45, nova_color, 1 )
		draw_sprite_ext( sprite_get("fufu_nova_first_hand"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) - 113, 107 + nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 1, 1, (0) - 45, nova_color, 1 )
		draw_sprite_ext(sprite_get("flash"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), ease_linear( stage_y, room_height - stage_y, 1, 2 ), 120, 120, 0, c_white, min(1, max(0, ease_linear(0, 1, dramatic_finish_time - 270, 120))));
		draw_sprite_ext( sprite_get("fufu_nova_pupils_destruction"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((dramatic_finish_time * -1) / 20) * 2, 2, 2, cos((dramatic_finish_time * -1) / 75) * 0, c_black, 1 )
		draw_sprite_ext(sprite_get("flash"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), ease_linear( stage_y, room_height - stage_y, 1, 2 ), 120, 120, 0, c_white, min(1, max(0, ease_linear(0, 1, dramatic_finish_time - 360, 120))));
	}
	//draw_sprite_ext(sprite_get("flash"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), ease_linear( stage_y, room_height - stage_y, 1, 2 ), 120, 120, 0, c_white, ease_linear(1, 0, summon_progress - 240, 60));
	if (safe_mode = false)
	{
		depth = -1000
	}
	//draw_sprite_ext(sprite_get("flash"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), ease_linear( stage_y, room_height - stage_y, 1, 2 ), max(0, ease_linear(0, 120, disappear_progress - 180, 120)), 120, 0, c_white, 1);
	//draw_sprite_ext(sprite_get("flash"), 0, (ease_linear( stage_x, room_width - stage_x, 1, 2 ) - 64) + ((player_x[wishing_player] - stage_center_x / 1) div 25), (nova_height - 16 + cos((get_gameplay_time() * -1) / 20) * 2) + ((player_y[wishing_player] - nova_height) div 25), max(0, ease_linear(0, 120, disappear_progress - 180, 120)), 120, 0, c_white, 1);
	//draw_sprite_ext(sprite_get("flash"), 0, (ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 64) + ((player_x[wishing_player] - stage_center_x / 1) div 25), (nova_height - 16 + cos((get_gameplay_time() * -1) / 20) * 2) + ((player_y[wishing_player] - nova_height) div 25), max(0, ease_linear(0, 120, disappear_progress - 180, 120)), 120, 0, c_white, 1);
	if (disappear_progress > 180)
	{
		shake_camera( 1, 2 )
	}

	for (var i=0;i<array_length_1d(explosion_index);i++)
	{
		explosion_index[i]++
		explosion_y[i]--
		explosion_y[i]--
		explosion_y[i]--
		explosion_y[i]--
		if (explosion_index[i] < 17)
		{
			draw_sprite_ext(sprite_get("spr_realisticexplosion_"+string(explosion_index[i])), explosion_index[i], explosion_x[i], explosion_y[i], 1, 1, 0, c_white, 1)
		}
	}
}