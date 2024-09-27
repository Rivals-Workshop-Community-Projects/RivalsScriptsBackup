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