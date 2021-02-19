//hitbox_init
stale = false;
if ((attack == AT_FTILT || attack == AT_FAIR))
{
	effect = player_id.bombEffect;
	stale = player_id.bombStale;
	
	if (effect != 0)
	{
		player_id.lastEffect = effect;
	}
	     
	if (effect == -3)//feu
	{
	    effect = 1;
	}
	if (effect == -2)//liane
	{
	    damage = 10 - 4 * stale;
	    hitpause = 4;
	    //sound_effect = sound_get(sfx_ori_bash_launch);
	}
	if (effect == -1)//spike
	{
	    kb_angle = 270;
	    kb_value = 3 - 2 * stale;
	    kb_scale = 2;
	    damage = 10 - 4 * stale;
	}
	if (effect == 11)//plasma
	{
	    hitpause = 12 - 8 * stale;
	    damage = 0;
	}
	if (!stale)
		hit_priority = 4;
	
	
	hit_effect = hit_fx_create(sprite_get("explosion"), 30);
	if (player_id.fxG)
	    hit_effect = hit_fx_create(sprite_get("explosionG"), 30);
	
	
	player_id.bombEffect = 0;
	player_id.bombStale = 0;
}
