switch (attack)
{
	case AT_NSPECIAL:
		switch (hbox_num)
		{
			case 1:
				if (hitbox_timer%3==0) spawn_hit_fx(x+random_func(0,16,1)-8, y+random_func(1,16,1)-8, player_id.sparklefx);
				break;
			case 2:
				if (hitbox_timer%3==0)
				{
					spawn_hit_fx(x+random_func(0,16,1)-8, y+random_func(1,16,1)-8, player_id.particle);
				}
				if (hitbox_timer == length-1)
				{
					var hbox = create_hitbox(AT_NSPECIAL, 4, x, y);
					with(hbox) sound_play(asset_get("sfx_icehit_heavy2"));
					hbox.spr_dir = spr_dir;
					hbox.player = player;
					hbox.was_parried = was_parried;
					hbox.hasHitCrystal = false;
					destroyed = true;
					destroy_fx = 1;
					sound_play(sound_get("BigBoom"),0,-4,0.7);
					sound_play(sound_get("icebreak"));
				}
				break;
			case 3:
				if (hitbox_timer%6==0) for (var i = 0; i < array_length_1d(can_hit); ++i) can_hit[i] = 1;
				break;
			case 4:
				if (hitbox_timer==1)
				{
					spawn_hit_fx(x, y, player_id.boomfx);
				}
				if (hitbox_timer%8==0)
				{
					for (var i = 0; i < array_length_1d(can_hit); ++i) can_hit[i] = 1;
					hasHitCrystal = false;
				}
				break;
		}
		break;
	case AT_DTILT:
		if (hbox_num == 2)
		{
			if (!free)
			{
				var hbox = create_hitbox(AT_DTILT, 3, x, y-8);
				with(hbox) sound_play(asset_get("sfx_bird_sidespecial_start"));
				hbox.spr_dir = spr_dir;
				hbox.player = player;
				hbox.was_parried = was_parried;
				hbox.hasHitCrystal = hasHitCrystal;
				destroyed = true;
				destroy_fx = 1;
			}
			else if (hitbox_timer == length-1)
			{
				spawn_hit_fx(x, y, player_id.dtiltProjBreak);
			}
		}
		break;
	case AT_FSPECIAL:
		if (!was_parried && orig_player == player) with (oPlayer) if (player != other.player && get_player_team(player) == get_player_team(other.player)) with (other) if (collision_circle(x, y, 24, other, true, true))
		{
			destroyed = true;
			with (other) take_damage(player, -1, -1);
		}
		if (hitbox_timer%6==0)
		{
			spawn_hit_fx(x+random_func(0,16,1)-8, y+random_func(1,16,1)-8, player_id.particle);
		}
		break;
}