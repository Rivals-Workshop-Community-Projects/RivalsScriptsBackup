//GOT HIT

// Fspecial getting hit.
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
	if (attack == AT_FSPECIAL && super_armor)
	{
		sound_play(sound_get("tta_17"));
		spawn_hit_fx( hit_player_obj.x, hit_player_obj.y-(hit_player_obj.char_height/2), 66 );
		
		if (hit_player_obj.slender_haunt != noone)
		{
			if (hit_player_obj.slender_haunt_timer > 0)
			{
				take_damage(hit_player_obj.player, player, enemy_hitboxID.damage);
				sound_play(sound_get("distort_ex_2"));
				sound_play(sound_get("distort_ex_2"), false, noone, 0.6);
				spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - (hit_player_obj.char_height / 2), 19);
			}
		}
		else
		{
			hit_player_obj.slender_buildup =
					(enemy_hitboxID.type == 2)
					? hit_player_obj.slender_buildup + 30
					: hit_player_obj.slender_buildup + 15;
		}
		
		// Brief iframes to make subsiquent hits on same frame be ignored.
		// Should still let multihits win in trades.
		attack_invince = true;
		invincible_time = 3;
	}
}

// Slender sickness handling.
if (hit_player_obj.slender_haunt == noone)
{
	// Player does not have slender sickness.
	grabbed_player_obj = noone;
}
else
{
	// Player has slender sickness.
	if (!super_armor && enemy_hitboxID.type != 2)
	{
		// Removal of slender sickness if you are hit.
		hit_player_obj.slender_haunt = -4;
		hit_player_obj.slender_haunt_timer = 0;
		hit_player_obj.slender_buildup = 0;
	}
}

