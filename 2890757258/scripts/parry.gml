//	parry.gml

if (!muted)
{
	if ("enemy_hitboxID" in self)
	{
		magic_meter += 10;		
		
		if (enemy_hitboxID.type == 1)
		{
			sound_play(sound_get("sfx_smashparry"));
		}    
	}
}