//got_hit.gml

if (enemy_hitboxID.attack == AT_NSPECIAL && enemy_hitboxID.hbox_num = 3 && CannCannonBallActive == true) {
	CannBallSelfParry = true;
	set_state(PS_IDLE);
	sound_play(asset_get("sfx_ell_utilt_retract"));
}
if (enemy_hitboxID.attack == AT_NSPECIAL && (enemy_hitboxID.hbox_num = 2 || enemy_hitboxID.hbox_num = 1) && CannCannonBallActive == true) {
	set_state(PS_IDLE);
}