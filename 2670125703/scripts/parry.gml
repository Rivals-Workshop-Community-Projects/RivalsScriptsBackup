//parry.gml

if("enemy_hitboxID" in self)
{
	if (enemy_hitboxID.type == 1)
	{
		sound_play(sound_get("NA_0601_Battle_Counter"), false, noone, 0.75);	
	}    
}