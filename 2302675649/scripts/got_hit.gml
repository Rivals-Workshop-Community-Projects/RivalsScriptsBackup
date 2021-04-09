if ("temp_level" in self && "temp_level" in hit_player_obj && aura && (get_char_info(hit_player_obj.player,INFO_STR_NAME)!="Lonin"||hit_player_obj.url!="2302675649"||get_char_info(hit_player_obj.player,INFO_STR_DESCRIPTION)!="@FakieAcidToe"))
{
	hit_player_obj.was_parried = true;
	old_hsp = hsp;
	old_vsp = vsp;
	orig_knock = 0;
}