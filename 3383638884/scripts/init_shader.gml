/* custom colors
if(get_synced_var(player) == 1)
{
	var n = 0;
	while(n<8)
	{
		set_character_color_slot(n, get_color_profile_slot_r(14, n), get_color_profile_slot_g(14, n), get_color_profile_slot_b(14, n));
		set_article_color_slot(n, get_color_profile_slot_r(14, n), get_color_profile_slot_g(14, n), get_color_profile_slot_b(14, n));
		n++;
	}
}
else
{
*/
	_col = get_player_color(player);
	switch _col {
		case 0: // default
			set_character_color_slot( 0, 255, 255, 255);
			set_character_color_slot( 1, 152, 152, 152);

			set_article_color_slot(0, 255, 255, 255 );
			set_article_color_slot(1, 152, 152, 152 );
			break;
		default:
			set_character_color_slot(0, get_color_profile_slot_r(_col, 0), get_color_profile_slot_g(_col, 0), get_color_profile_slot_b(_col, 0));
			set_character_color_slot(1, get_color_profile_slot_r(_col, 1), get_color_profile_slot_g(_col, 1), get_color_profile_slot_b(_col, 1));

			set_article_color_slot(0, get_color_profile_slot_r(_col, 0), get_color_profile_slot_g(_col, 0), get_color_profile_slot_b(_col, 0));
			set_article_color_slot(1, get_color_profile_slot_r(_col, 1), get_color_profile_slot_g(_col, 1), get_color_profile_slot_b(_col, 1));
			break;
	}
//}
