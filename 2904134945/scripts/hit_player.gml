with (hit_fx_obj) if (depth == 3 && (hit_fx == other.spinfx || hit_fx == other.hexfx || hit_fx == other.sweetfx)) depth = other.depth;

if (has_rune("G")) ApplyStack();

switch (my_hitboxID.attack)
{
	case AT_NSPECIAL:
		if (my_hitboxID.hbox_num == 1)
		{
			var hbox = create_hitbox(AT_NSPECIAL, 3, hit_player_obj.x, hit_player_obj.y-30);
			hbox.spr_dir = my_hitboxID.spr_dir;
			hbox.player = my_hitboxID.player;
			hbox.was_parried = my_hitboxID.was_parried;
			hit_player_obj.should_make_shockwave = false;
			if (!my_hitboxID.hasHitCrystal) ApplyStack();
		}
		else if (my_hitboxID.hbox_num == 2 && my_hitboxID.sprite_index == sprite_get("flash"))
		{
			var hbox = create_hitbox(AT_NSPECIAL, 4, my_hitboxID.x, my_hitboxID.y);
			hbox.spr_dir = my_hitboxID.spr_dir;
			hbox.player = my_hitboxID.player;
			hbox.was_parried = my_hitboxID.was_parried;
			hit_player_obj.should_make_shockwave = false;
			sound_play(sound_get("BigBoom"),0,-4,0.7);
			sound_play(sound_get("icebreak"));
		}
		else if (my_hitboxID.hbox_num == 4)
		{
			sound_play(asset_get("sfx_blow_heavy1"),0,-4,0.5);
		}
		if (my_hitboxID.hbox_num >= 3)
		{
			if (!my_hitboxID.hasHitCrystal) ApplyStack();
			switch (floor(my_hitboxID.hitbox_timer/6))
			{
				default: sound_play(sound_get("flakeIce"), 0, -4, 1, 1.3); break;
				case 2: sound_play(sound_get("flakeIce"), 0, -4, 1, 1.25); break;
				case 3: sound_play(sound_get("flakeIce")); break;
			}
		}
		break;

	case AT_DTILT:
		if (my_hitboxID.hbox_num == 2)
		{
			if (!my_hitboxID.hasHitCrystal) ApplyStack();
			var hbox = create_hitbox(AT_DTILT, 3, hit_player_obj.x, hit_player_obj.y-20);
			with(hbox) sound_play(asset_get("sfx_bird_sidespecial_start"));
			hbox.spr_dir = my_hitboxID.spr_dir;
			hbox.player = my_hitboxID.player;
			hbox.was_parried = my_hitboxID.was_parried;
			hbox.hasHitCrystal = my_hitboxID.hasHitCrystal;
			hit_player_obj.should_make_shockwave = false;
		}
		else if (my_hitboxID.hbox_num == 3 && !my_hitboxID.hasHitCrystal)
		{
			ApplyStack();
		}
		break;
		
	case AT_FSPECIAL:
	case AT_USPECIAL:
	case AT_NAIR:
		if (!my_hitboxID.hasHitCrystal) ApplyStack();
		break;

	case AT_FAIR:
		if (my_hitboxID.hbox_num == 1)
			sound_play(asset_get("sfx_blow_heavy1"));
		break;

	case AT_BAIR:
		if (my_hitboxID.hbox_num == 1)
			sound_play(asset_get("sfx_blow_medium1"));
		break;

	case AT_UAIR:
		if (my_hitboxID.hbox_num < 4)
		{
			old_vsp *= 0.9;
			hit_player_obj.should_make_shockwave = false;
			if (!my_hitboxID.hasHitCrystal) ApplyStack();
			hasHitUAir = true;
		}
		else if (my_hitboxID.hbox_num == 4 && !my_hitboxID.hasHitCrystal)
		{
			ApplyStack();
		}
		break;

	case AT_DAIR:
		if (my_hitboxID.hbox_num == 2)
		{
			old_vsp *= 0.8;
			hit_player_obj.should_make_shockwave = false;
		}
		break;

	case AT_FTILT:
		if (my_hitboxID.hbox_num == 2)
		{
			sound_play(asset_get("sfx_blow_heavy1"));
		}
		break;

	case AT_JAB:
		if (my_hitboxID.hbox_num == 1 && other.hit_player_obj != other && hit_player_obj.noelleFrostgrave > 0) hit_player_obj.noelleFrostgrave = 1;
		break;

	case AT_DSTRONG:
		sound_play(asset_get("sfx_blow_heavy1"), 0, -4, 2, 1);
		ApplyFrostGrave();
		ApplyStack();
		break;

	case AT_FSTRONG:
		if (my_hitboxID.hbox_num == 3)
		{
			sound_play(asset_get("sfx_blow_heavy2"), 0, -4, 2, 1);
			ApplyFrostGrave();
			ApplyStack();
		}
		break;

	case AT_USTRONG:
		if (my_hitboxID.hbox_num == 4)
		{
			sound_play(asset_get("sfx_ice_shatter_big"));
			sound_play(asset_get("sfx_blow_heavy2"));
			ApplyFrostGrave();
			ApplyStack();
		}
		else 
		{
			hit_player_obj.should_make_shockwave = false;
		}
		break;

	case AT_DSPECIAL:
		if (my_hitboxID.hbox_num == 1 && "crystalObj" in my_hitboxID)
		{
			var stacks = 0;
			with (my_hitboxID.crystalObj) if (player_id == other && state == 1) stacks += noelleFrostbite;
			repeat(stacks) ApplyStack();
			ApplyFrostGrave();
			with (my_hitboxID.crystalObj) if (player_id == other && state == 1)
			{
				newState = 2;
				if (other.hit_player_obj != other && other.hit_player_obj.noelleFrostgrave > 0)
				{
					breakForce = -1;
					x += round((other.hit_player_obj.x - x)/2);
					y += round((other.hit_player_obj.y - y)/2);
					other.hit_player_obj.x = x;
					other.hit_player_obj.y = y;
				}
				else
				{
					breakAngle = sign(other.hit_player_obj.old_hsp)==1?140:40;
					breakForce = 5;
				}
			}
		}
		break;

	case 49:
		repeat(frostbiteMax) ApplyStack();
		ApplyFrostGrave();
		break;
}

if (has_rune("H")) ApplyFrostGrave();

if (has_rune("O"))
{
	sound_stop(sound_get("vineboom"));
	sound_play(sound_get("vineboom"));
	spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, boomfx);
}

if (hit_player_obj != self && hit_player_obj.noelleFrostgrave > 0)
{
	hit_player_obj.should_make_shockwave = false;
	hit_player_obj.noelleFrostgraveSpeed = {hsp:hit_player_obj.old_hsp, vsp:hit_player_obj.old_vsp};
}

if (aura)
{
	hitstop = floor(hitstop/2);
	hitstop_full = hitstop;
}

#define ApplyStack()
{
	if (hit_player_obj != self && (hit_player_obj.noelleFrostgrave <= 0 || has_rune("C")))
	{
		hit_player_obj.noelleFrostbite = clamp(hit_player_obj.noelleFrostbite+1, 0, frostbiteMax);
		hit_player_obj.noelleFrostbiteID = self;
		my_hitboxID.hasHitCrystal = true;
	}
}

#define ApplyFrostGrave()
{
	if (hit_player_obj != self && hit_player_obj.noelleFrostbite >= frostbiteMax)
	{
		tutDone[0] = 1;
		hit_player_obj.noelleFrostbite = 0;
		hit_player_obj.noelleFrostgrave = frostgraveTime;
		hit_player_obj.noelleFrostgraveSpeed = {hsp:hit_player_obj.old_hsp, vsp:hit_player_obj.old_vsp};
		hit_player_obj.noelleFrostbiteID = self;
		hit_player_obj.orig_knock /= 1.2;
	}
}