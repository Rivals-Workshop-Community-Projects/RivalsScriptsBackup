//set_attack
special_cancel = DIR_NONE;
if prev_state == PS_IDLE && state == PS_ATTACK_GROUND && attack == AT_TAUNT && position_meeting(x+40*spr_dir,y-5,asset_get("pet_obj")) {
//sound_play(asset_get("mfx_player_ready"));
	attack = AT_EXTRA_1
	with (asset_get("pet_obj")) {
		if owner == other.id {
			state = "idle";
			should_taunt = 0;
		}
	}
}