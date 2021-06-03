// if (captain_mode){
// 	// Fair: knee
// 	//edit: better way: make extra window for knee and skip the window during regular Fair
// 	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
	
// 	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, snd_Fstrong_hit);
// 	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 14);
// 	set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40);
// 	set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 9);
// 	set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 1.1);
// 	set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 20);
// 	set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .6);
// 	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 157);
// 	set_hitbox_value(AT_FAIR, 1, HG_EXTRA_CAMERA_SHAKE, 1);
	
// } else {
// 	// Fair
// 	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
	
// 	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, snd_Fair_hit);
// 	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
// 	set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
// 	set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
// 	set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .5);
// 	set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
// 	set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .25);
// 	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 0);
// 	set_hitbox_value(AT_FAIR, 1, HG_EXTRA_CAMERA_SHAKE, -1);
// }