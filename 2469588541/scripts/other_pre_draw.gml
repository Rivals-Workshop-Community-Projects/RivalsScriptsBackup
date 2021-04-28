if ("hitpause" in self)
{
	if (hitpause && state_cat == SC_HITSTUN && hit_player_obj == other_player_id && last_attack == AT_FSPECIAL && last_hbox_num == 3)
	{
		draw_set_alpha(0.6);
		draw_circle_colour(x, floor(y - char_height/2), ease_quartIn(0, floor(char_height * 1.5), hitstop, hitstop_full), c_black, c_white, false);
		draw_set_alpha(1);
	}
}