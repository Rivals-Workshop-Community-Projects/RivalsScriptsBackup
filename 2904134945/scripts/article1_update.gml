#macro AS_SPAWN         0
#macro AS_IDLE          1
#macro AS_DESPAWN       2
if ("Pocketed" in self) with (oPlayer) if (self != other.player_id && "Pocketed_Projectile" in self && Pocketed_Projectile == other && url == "2909667246")
{
	invincible = 0;
	with (other)
	{
		newState = AS_DESPAWN;
		var hbox = create_hitbox(49, 1, x, y);
		hbox.kb_value *= 3;
		for (var i = 0; i < array_length_1d(hbox.can_hit); ++i) hbox.can_hit[i] = (i==other.player);
	}
}
if (newState != state) SetArticleState(newState);


switch (state)
{
	case AS_SPAWN:
		hsp = lerp(orighsp, 0, state_timer/startupTime);
		DetectHitboxes();
		if (state_timer >= startupTime)
		{
			hsp = 0;
			SetArticleState(AS_IDLE);
			ignores_walls = true;
		}
		break;
	case AS_IDLE:
		y += sin(state_timer/16)/4;
		if (state_timer % 12 == 0)
		{
			var angle = random_func(0, 360, 0);
			var dist = random_func(1, 30, 0)-60;
			var p = spawn_hit_fx(x+lengthdir_x(dist, angle), y+lengthdir_y(dist, angle)-60, player_id.sparklefx);
			p.depth = depth-1;
		}

		DetectHitboxes();

		with (oPlayer) if (place_meeting(x,y,other.id) && state == PS_HITSTUN && state_timer >= 4)
		{
			with (other)
			{
				var hbox = create_hitbox(AT_DSPECIAL, 1, x, round(y-38));
				hbox.crystalObj = self;
				for (var i = 0; i < array_length_1d(hbox.can_hit); ++i) hbox.can_hit[i] = (i==other.player);
				if (other == player_id || has_rune("B"))
				{
					hbox.hit_flipper = other.hsp<0?0:5;
					if (other == player_id) hbox.can_hit_self = true;
				}
			}
		}
		break;
	case AS_DESPAWN:
		if (state_timer >= dieTime)
		{
			if (breakForce > 0) for (var i = 1; i <= 7; ++i)
			{
				var icebreak = instance_create(x, round(y), "obj_article3");
				icebreak.sprite_index = sprite_get("crystalBreak");
				icebreak.image_index = i-1;
				icebreak.dieTime = random_func_2(2+5*i, 4, 0)+8;
				icebreak.hsp = random_func_2(3+5*i, 6, 0)-3+lengthdir_x(breakForce, breakAngle)*1.2;
				icebreak.vsp = random_func_2(4+5*i, 6, 0)-3+lengthdir_y(breakForce, breakAngle)*1.2;
			}
			sound_play(asset_get("sfx_icehit_medium2"));
			instance_destroy();
			exit;
		}
		break;
}

// Animation
if (state_timer % animSpeed == 0 && state_timer != 0)
{
	++image_index;
}

++state_timer;

#define SetArticleState(_state)
{
	newState = _state;
	state = _state;
	state_timer = 0;
	image_index = 0;
	SetSprites();
}

#define SetSprites()
{
	// change sprite and anim rate
	switch (state)
	{
		default:
			sprite_index = sprite_get("crystal");
			animSpeed = 4;
			break;
		case AS_SPAWN:
			sprite_index = sprite_get("crystalSpawn");
			animSpeed = startupTime/6;
			break;
		case AS_DESPAWN:
			sprite_index = asset_get("empty_sprite");
			animSpeed = 1;
			break;
	}
}

#define ApplyStack()
{
	noelleFrostbite = clamp(noelleFrostbite+1, 0, player_id.frostbiteMax);
}

#define DetectHitboxes()
{
	if (lockout > 0) lockout--;
	with (player_id) if (has_rune("E")) return;
	with (asset_get("pHitBox"))
	{
		if (other.lockout <= 0
			&& place_meeting(x,y,other.id)
			&& damage > 0
			&& effect != 9
			&& hit_priority > 0)
		{
			if (other.state == AS_IDLE && other.player != player && get_player_team(player) != get_player_team(other.player)) // opponent
			{
				sound_play(sound_effect);
				var fx = spawn_hit_fx(other.x+(hit_effect_x*spr_dir)+x-other.x,other.y+hit_effect_y+y-other.y,hit_effect);
				//fx.draw_angle = kb_angle;
				fx.spr_dir = spr_dir;
				other.newState = AS_DESPAWN;
				with (other) breakAngle = get_hitbox_angle(other);
				other.breakForce = kb_value+kb_scale;
				with (oPlayer) if (player == other.player) has_hit = true;
				break;
			}
			else if (other.player_id.url == player_id.url && other.noelleFrostbite < other.player_id.frostbiteMax && "hasHitCrystal" in self && !hasHitCrystal)
			{
				var stacked = false;
				switch (attack)
				{
					case AT_NSPECIAL:
						if (hbox_num == 1)
						{
							var hbox = create_hitbox(AT_NSPECIAL, 3, x, y);
							hbox.spr_dir = spr_dir;
							hbox.player = player;
							hbox.was_parried = was_parried;
							destroyed = true;
						}
						else if (hbox_num == 3) sound_play(sound_get("flakeIce"))
						if (hbox_num != 2)
						{
							other.ApplyStack();
							stacked = true;
						}
						break;
				
					case AT_DTILT:
						if (hbox_num == 2 || hbox_num == 3)
						{
							other.ApplyStack();
							stacked = true;
						}
						break;
				
					case AT_FSTRONG:
					case AT_USTRONG:
						if (hbox_num == 3)
						{
							other.ApplyStack();
							stacked = true;
						}
						break;
				
					case AT_DSTRONG:
					case AT_USPECIAL:
					case AT_FSPECIAL:
					case AT_NAIR:
						{
							other.ApplyStack();
							stacked = true;
						}
						break;
				
					case AT_UAIR:
						if (hbox_num <= 4)
						{
							if (hbox_num < 4) other.player_id.hasHitUAir = true;
							other.ApplyStack();
							stacked = true;
						}
						break;
				}
				if (stacked)
				{
					sound_play(sound_effect);
					var fx = spawn_hit_fx(other.x+(hit_effect_x*spr_dir)+x-other.x,other.y+hit_effect_y+y-other.y,hit_effect);
					//fx.draw_angle = kb_angle;
					fx.spr_dir = spr_dir;
					other.lockout = no_other_hit+extra_hitpause;
					hasHitCrystal = true;
				}
			}
		}
	}
}