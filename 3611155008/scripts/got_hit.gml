if (state == PS_PARRY || (state == PS_ATTACK_AIR && attack == AT_EXTRA_2)) && super_armor{
	can_be_hit[hit_player + 10*(hit_player_obj.custom_clone || hit_player_obj.clone)] = max(40, can_be_hit[hit_player + 10*hit_player_obj.custom_clone]);
	parry_hit = 1;
	with hit_player_obj if !get_attack_value(other.enemy_hitboxID.attack, AG_NO_PARRY_STUN) yi_parry_extra_hitpause = 1;
	qi_stack = min(qi_stack+1, 5);
	djumps = 0;
	sound_parry();
	if state != PS_PARRY{
		vsp = -9;
		old_vsp = -9;
	}
	nymphbounce = 3;
	nymphgrab = 1;
	taichi_cooldown = 0;
	parry_cooldown = 0;
}

if prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR{
	if attack == AT_FSPECIAL && (fspec_charge || draw_fx) qi_stack -= (fspec_charge? floor(fspec_charge/fspec_single_charge): 1);
	if attack == AT_NSPECIAL && (window == 4 || (window == 5 && window_timer < 8)) qi_stack -= 2;
}

instance_destroy(dash_vfx);


#define sound_parry()
sound_play(sound_get("SFX_G_Yi_PerfectReflect_PartC_v" + string(random_func(3, 3, 1) + 1)));
sound_play(sound_get("SFX_G_Yi_PerfectReflect_PartD_v" + string(random_func(4, 6, 1) + 1)));
sound_play(sound_get("SFX_G_Yi_PerfectReflect_PartE"));
sound_play(sound_get("SFX_G_Yi_PerfectReflect_PartF"));

#define parrysound_stop()
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Cloth_v1"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Cloth_v2"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Cloth_v3"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Fire_v1"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Fire_v2"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Fire_v3"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Fire_v4"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Light_v1"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Light_v2"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Light_v3"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Terminal_v1"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Terminal_v2"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Terminal_v3"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Terminal_v4"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Terminal_v5"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Terminal_v6"));
sound_stop(sound_get("CharSFX_ChargeParry_Charge_Whoosh_v1"));

sound_stop(sound_get("CharSFX_ChargeParry_Hint_Charge_v1"));
sound_stop(sound_get("CharSFX_ChargeParry_Hint_Charge_v2"));
sound_stop(sound_get("CharSFX_ChargeParry_Hint_SciFi_v1"));
sound_stop(sound_get("CharSFX_ChargeParry_Hint_SciFi_v2"));
sound_stop(sound_get("CharSFX_ChargeParry_Hint_Whoosh_v6"));
sound_stop(sound_get("CharSFX_ChargeParry_Hint_MagicEffect"));