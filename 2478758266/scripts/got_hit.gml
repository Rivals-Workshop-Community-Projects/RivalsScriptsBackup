if defenseup
    {
        if enemy_hitboxID.damage > 1
        {
            take_damage( player, -2, floor(-enemy_hitboxID.damage/2) ); 
        }
    }       

if (abs(orig_knock) > 20)
{
	sound_play(sound_get("ow"));
}
