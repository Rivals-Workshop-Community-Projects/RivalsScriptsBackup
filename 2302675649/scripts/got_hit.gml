if ("temp_level" in self && temp_level != 0 && "temp_level" in hit_player_obj && hit_player_obj.temp_level != 0 && aura && get_char_info(hit_player_obj.player,INFO_STR_DESCRIPTION)!="@FakieAcidToe")
{
	hit_player_obj.was_parried = true;
	old_hsp = hsp;
	old_vsp = vsp;
	orig_knock = 0;
}