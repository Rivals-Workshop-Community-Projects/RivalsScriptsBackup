if (get_synced_var(player))
{
	orig_knock *= 0.8;
	var damage_takenn = get_player_damage(player) - counter_dmg;
	if (attack == AT_DSPECIAL && super_armor)
	{
	    if (damage_takenn <= 99999)
	    {
	        window = 2;
	        window_timer = 0;
			set_player_damage(player, counter_dmg);
			orig_knock = 0;
			should_make_shockwave = false;
			invincible = true;
			invince_time = 40;
			if (hit_player_obj)
			{
				x = hit_player_obj.x - (20 * spr_dir);
				y = hit_player_obj.y;
			}
		}
	}
}
else
{
	//uspecBan = false;
	
	if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	{
		if (attack == AT_NSPECIAL && state == 2)
			asCharge = 0;
	}
	
	if (enemy_hitboxID.type == 1 && instance_exists(boneMark) && hit_player_obj == boneMark) with (obj_article3) if (player_id == other.id && state == 1)
	{
	    player_id.boneObj = noone;
	    instance_destroy();
	}
	
	sound_stop(sound_get("riolu"));
}