if ("temp_level" in self && temp_level != 0 && "temp_level" in hit_player_obj && hit_player_obj.temp_level != 0 && aura && get_char_info(hit_player_obj.player,INFO_STR_DESCRIPTION)!="@FakieAcidToe")
{
	if (orig_knock > 10)
	{
		hit_player_obj.was_parried = true;
		orig_knock = 0;
		old_hsp = hsp;
		old_vsp = vsp;
		hitstun = 0;
		hitstun_full = hitstun;
		hitstop = 0;
		hitstop_full = hitstop;
	}
	else
	{
		hitstun = floor(min(hitstun*0.75, 30));
		hitstun_full = hitstun;
		hitstop = min(hitstop, 30);
		hitstop_full = hitstop;
	}
}