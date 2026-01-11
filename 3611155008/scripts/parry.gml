if state == PS_PARRY || (state == PS_ATTACK_AIR && attack == AT_EXTRA_2){
	sound_parry();
	if window_timer < 4 && (state != PS_ATTACK_AIR) sound_critparry();
	else with hit_player_obj if !get_attack_value(other.enemy_hitboxID.attack, AG_NO_PARRY_STUN) yi_parry_extra_hitpause = 1;
	hit_player_obj.yi_parry_undo = /*window_timer >= 4 || */state == PS_ATTACK_AIR;
	if state != PS_PARRY parryboost = 1;
	djumps = 0;
	nymphbounce = 3;
	nymphgrab = 1;
	taichi_cooldown = 0;
}
if state == PS_ATTACK_GROUND && attack == AT_EXTRA_1{
	sound_unbound()
	qi_stack = min(qi_stack+1, 5);
	window_timer = 0;
	hit_player_obj.yi_parry_undo = enemy_hitboxID.type+1;
}
parry_hit = 1;
qi_stack = min(qi_stack+1, 5);
var g = spawn_hit_fx(floor(lerp(x, enemy_hitboxID.x, .5)), floor(lerp(y - char_height/2, enemy_hitboxID.y, .5)), parry_fx);
g.depth = depth-4;


#define sound_parry()
sound_play(sound_get("SFX_G_Yi_PerfectReflect_PartA_v" + string(random_func(1, 3, 1) + 1)));
sound_play(sound_get("SFX_G_Yi_PerfectReflect_PartB_v" + string(random_func(2, 9, 1) + 1)));
sound_play(sound_get("SFX_G_Yi_PerfectReflect_PartC_v" + string(random_func(3, 3, 1) + 1)));
sound_play(sound_get("SFX_G_Yi_PerfectReflect_PartD_v" + string(random_func(4, 6, 1) + 1)));
sound_play(sound_get("SFX_G_Yi_PerfectReflect_PartE"));
sound_play(sound_get("SFX_G_Yi_PerfectReflect_PartF"));

if enemy_hitboxID.type == 2 sound_play(sound_get("CharSFX_Deflect_DramaticLayer_v" + string(random_func(6, 4, 1) + 1)));

#define sound_unbound()
sound_play(sound_get("CharSFX_ChargeParry_Success_Blast_v" + string(random_func(1, 4, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Success_Blast_Wet_v" + string(random_func(2, 4, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Success_Gong_v" + string(random_func(3, 4, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Success_Impact_v" + string(random_func(4, 2, 1) + 1)));
sound_play(sound_get("CharSFX_ChargeParry_Success_Metal_v" + string(random_func(5, 4, 1) + 1)));

if enemy_hitboxID.type == 2 sound_play(sound_get("CharSFX_Deflect_DramaticLayer_v" + string(random_func(6, 4, 1) + 1)));

#define sound_critparry()
sound_play(sound_get("CharSFX_CriticalHit_BassEffect_v" + string(random_func(2, 5, 1) + 1)));
sound_play(sound_get("CharSFX_CriticalHit_Whoosh"));
sound_play(sound_get("CharSFX_CriticalHit_Bell"));
sound_play(sound_get("CharSFX_CriticalHit_Cymbal"));
sound_play(sound_get("CharSFX_CriticalHit_Daiko"));
sound_play(sound_get("CharSFX_CriticalHit_Gong"));