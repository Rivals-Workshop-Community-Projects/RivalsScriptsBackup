//death.gml
as_charge = 0;
as_frame = 0;
as_charging = false;
aura = false;
counter_dmg = 0;
killarticles = true;
killarticles2 = true;
aurapt[5] = 0;
if (beast_deity)
{
	beast_state_timer = 0;
	beast_state = 0;
	speedrun_timer = 0;
	coutline = -1;
}
if (get_player_color(tempplayer) == 14)
{
	switch (get_color_profile_slot_r(14, 1))
	{
		case 123: // 123, 230, 84
			set_color_profile_slot(14,1,202,112,193);
			set_article_color_slot(1,202,112,193);
			break;
		case 130: // 130, 210, 251
			set_color_profile_slot(14,1,123,230,84);
			set_article_color_slot(1,123,230,84);
			break;
		case 202: // 202, 112, 193
			set_color_profile_slot(14,1,130,210,251);
			set_article_color_slot(1,130,210,251);
			break;
	}
	init_shader();
}