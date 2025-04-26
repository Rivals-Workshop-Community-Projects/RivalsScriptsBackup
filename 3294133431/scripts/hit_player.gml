//

if(attack == AT_FTILT)
{
	if(backstabSuccess == noone)
	{
		with(oPlayer)
			if(player == other.hit_player)
				other.backstabSuccess = spr_dir_last_bs == other.spr_dir;
	}
    
    if(backstabSuccess)
    {
        take_damage(hit_player_obj.player, player, backstabDamage-get_hitbox_value(AT_FTILT, 1, HG_DAMAGE));
        
        var originalDamage = get_player_damage( hit_player_obj.player ) - backstabDamage;
        hit_player_obj.orig_knock = get_kb_formula(originalDamage, hit_player_obj.knockback_adj, 1, backstabDamage, backstabKnockback, backstabKnockbackScale);
        hit_player_obj.hitstun = get_hitstun_formula(originalDamage, hit_player_obj.knockback_adj, 1, backstabDamage, backstabKnockback, backstabKnockbackScale);
        hit_player_obj.hitstop  = get_hitstop_formula(originalDamage, backstabDamage, backstabHitPause, backstabHitPauseScale, backstabHitPauseExtra);
        hit_player_obj.hitstop_full = hit_player_obj.hitstop;
		hit_player_obj.spr_dir = spr_dir;
		GainCrit();

		var playerHp = get_player_damage(hit_player_obj.player);
		if(playerHp > 60)
			hit_player_obj.should_make_shockwave = true;//TODO: doesnt work to show purple kill effect, but shows some other one

		shake_camera(8, min(30, floor(playerHp*0.25)));
		spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 304);
    }
}

if(attack == AT_FTILT && backstabSuccess)
	invisTimer += (backstabDamage-get_hitbox_value(AT_FTILT, 1, HG_DAMAGE)) * invisTimerGainOnHit;
else
	invisTimer += my_hitboxID.damage * invisTimerGainOnHit;


if(attack == AT_FSPECIAL)
{
	if(my_hitboxID.sprite_index == sprite_get("bulletProjectileCrit"))
		has_hit_player_fspecial_crit = true;
	else
		has_hit_player_fspecial = true;
}

if(attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1)
{
	var wasAlreadySapped = false;
	for(var i = 0; i < ds_list_size(sappers); i++)
		if(sappers[|i].targetPlayer == hit_player_obj)
			wasAlreadySapped = true;
			
	if(!wasAlreadySapped)//TODO: delay until next window or not in dspecial anymore
	{
        sapper = instance_create(x + spr_dir * 20, y - 42, "obj_article1");
		sapper.targetPlayer = hit_player_obj;
		sapper.targetPlayerId = id.hit_player;
		sapper.can_be_hit[player] = 30;
		ds_list_add(sappers, sapper);
		GainCrit();
		attachedSapper = true;
	}
}


//-------------------- voice lines --------------------


if(doVoiceLines)
{
	if(attack == AT_DAIR)
	{
		if(my_hitboxID.hbox_num == 1)
			PlayRandomVoiceLine("staydown", "hell", "spy_taunt_rps_lose_05", "assasinate1");//assasinate assasinate1 assasinate2 Spy_specialcompleted12 Spy_taunts06
	}
	if(attack == AT_UAIR)
	{
		if(my_hitboxID.hbox_num == 1)
			PlayRandomVoiceLine("Spy_highfive09", "Spy_taunt_flip_exert_08", "Spy_rpscountgo01");
		if(my_hitboxID.hbox_num == 2)
			PlayRandomVoiceLine("seeyou", "Spy_taunt_flip_fun_01");
	}

	if(attack == AT_NAIR)
	{
		if(!has_hit_player_last)
			PlayRandomVoiceLine("Spy_taunt_flip_int_01", "Spy_taunt_flip_int_02", "Spy_taunt_flip_end_16", "concussion", "tres_bon");//spinning
	}

	if(attack == AT_BAIR)
	{
		if(my_hitboxID.hbox_num == 1)
			PlayRandomVoiceLine("Spy_specialcompleted12", "Spy_taunts06", "Spy_taunt_flip_fun_01", "Spy_taunt_head_int_21");
			
		if(my_hitboxID.hbox_num == 2)
			PlayRandomVoiceLine("Spy_taunt_flip_fun_02", "Spy_taunt_head_int_21");
	}

	if(attack == AT_DTILT)
	{
		if(my_hitboxID.hbox_num == 1)
			PlayRandomVoiceLine("pardon", "dance01", "dance02");
		if(my_hitboxID.hbox_num == 2)
			PlayRandomVoiceLine("dance3", "woho");//magnifique
	}

	if(attack == AT_DATTACK)
	{
		if(my_hitboxID.hbox_num == 3)
			PlayRandomVoiceLine("back", "hello", "Spy_mvm_resurrect05");
	}

	if(attack == AT_JAB)
	{
		if(my_hitboxID.hbox_num == 3)
			PlayRandomVoiceLine("Spy_taunt_flip_end_12", "Spy_taunt_flip_fun_02", "tres_bon");
	}
}


//-------------------- custom SFX --------------------
if(attack == AT_FTILT)
{
	if(backstabSuccess)
	{
		sound_play(sound_get("spy_assassin_knife_bckstb"));
		sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.75);
	}
	else
	{
		sound_play(sound_get("spy_assassin_knife_impact_01"));
		sound_play(asset_get("sfx_blow_weak1"), false, noone, 0.75);
	}
}

if(attack == AT_DAIR)
{
	if(my_hitboxID.hbox_num == 1)
	{
		sound_play(sound_get("fist_hit_world1"), false, noone, 1);
		sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.75);
	}
	if(my_hitboxID.hbox_num == 2)
	{
		sound_play(sound_get("fist_hit_world1"), false, noone, 1);
		sound_play(asset_get("sfx_blow_medium1"), false, noone, 0.75);
	}
}

if(attack == AT_BAIR)
{
	if(my_hitboxID.hbox_num == 1)
	{
		sound_play(sound_get("fist_hit_world2"), false, noone, 1);
		sound_play(asset_get("sfx_blow_medium1"), false, noone, 0.75);
	}
	if(my_hitboxID.hbox_num == 2)
	{
		sound_play(sound_get("fist_hit_world2"), false, noone, 1);
		sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.75);
	}
}

if(attack == AT_UAIR)
{
	if(my_hitboxID.hbox_num == 1)
	{
		sound_play(sound_get("fist_hit_world2"), false, noone, 1);
		sound_play(asset_get("sfx_blow_weak1"), false, noone, 0.75);
	}
	if(my_hitboxID.hbox_num == 2)
	{
		sound_play(sound_get("fist_hit_world2"), false, noone, 1);
		sound_play(asset_get("sfx_blow_medium2"), false, noone, 0.75);
	}
}

if(attack == AT_FSTRONG)
{
	if(my_hitboxID.hbox_num == 1)
	{
		sound_play(sound_get("fist_hit_world2"), false, noone, 1);
		sound_play(asset_get("sfx_blow_weak2"), false, noone, 0.75);
	}
	if(my_hitboxID.hbox_num == 2)
	{
		sound_play(sound_get("fist_hit_world1"), false, noone, 1);
		sound_play(asset_get("sfx_blow_medium1"), false, noone, 0.75);
	}
	if(my_hitboxID.hbox_num == 3)
	{
		sound_play(sound_get("spy_assassin_knife_bckstb"), false, noone, 1);
		sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.75);
	}
}

if(attack == AT_JAB)
{
	if(my_hitboxID.hbox_num == 1)
	{
		sound_play(sound_get("fist_hit_world2"), false, noone, 1);
		sound_play(asset_get("sfx_blow_weak2"), false, noone, 0.75);
	}
	if(my_hitboxID.hbox_num == 2)
	{
		sound_play(sound_get("fist_hit_world1"), false, noone, 1);
		sound_play(asset_get("sfx_blow_weak1"), false, noone, 0.75);
	}
	if(my_hitboxID.hbox_num == 3)
	{
		sound_play(sound_get("spy_assassin_knife_bckstb"), false, noone, 1);
		sound_play(asset_get("sfx_blow_medium1"), false, noone, 0.75);
	}
}

if(attack == AT_DTILT)
{
	if(my_hitboxID.hbox_num == 1)
	{
		sound_play(sound_get("fist_hit_world1"), false, noone, 1);
		sound_play(asset_get("sfx_blow_weak2"), false, noone, 0.75);
	}
	if(my_hitboxID.hbox_num == 2)
	{
		sound_play(sound_get("fist_hit_world1"), false, noone, 1);
		sound_play(asset_get("sfx_blow_medium2"), false, noone, 0.75);
	}
}

#define GainCrit()
crits++;
if(crits > 9)
	crits = 9;

//copied to other files
#define PlayRandomVoiceLine()
{
    var randSound = random_func(0, argument_count, true);
    PlayVoiceLine(argument[randSound]);
}
#define PlayVoiceLine()
{
	var clipName = argument[0];
	var volume = argument_count > 1 ? argument[1] : 1;
    sound_stop(lastVoiceLine);
    lastVoiceLine = sound_play(sound_get(clipName), false, noone, volume);
}
#define PlayRandomVoiceLineFromOpponent()
{
    var randSound = random_func(0, ds_list_size(opponentLines), true);
    PlayVoiceLine(opponentLines[|randSound]);
}