dspecBan = false;
spr_angle = 0;
draw_x = 0;
draw_y = 0;

if (hit_player_obj != self && enemy_hitboxID.type != 2 && hit_player_obj.noelleFrostbite > 0)
{
	--hit_player_obj.noelleFrostbite;
	hit_player_obj.noelleFrostbiteID = self;
}

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