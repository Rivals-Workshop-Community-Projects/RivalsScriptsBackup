set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_NSPECIAL_2, AG_MUNO_ATTACK_NAME, "NSpecial (Trumpet)");

//startup
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, jump_sound);

//active
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//endlag
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_NSPECIAL_2, 4);

for (var i = 0; i < 4; i++){
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_WINDOW, 2);
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_LIFETIME, 6);
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_HITBOX_X, 62);	// 72
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_HITBOX_Y, -24);	// -16
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_WIDTH, 176);  	// 156
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_HEIGHT, 156); 	// 128
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_SHAPE, 2);    	// 0
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_PRIORITY, 3);
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_DAMAGE, 3 + 3 * i);
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_ANGLE, 45);
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_BASE_KNOCKBACK, 7 + i * 0.5); // 8 + i * 0.5
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_KNOCKBACK_SCALING, 0.7 + 0.1 * i);
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_BASE_HITPAUSE, 10 + i * 3);
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_HITPAUSE_SCALING, 0.7 + 0.1 * i);
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_EXTRA_HITPAUSE, 0 + 10 * i);
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_HIT_LOCKOUT, 30);
	set_hitbox_value(AT_NSPECIAL_2, 1 + i, HG_MUNO_HITBOX_NAME, string(i) + "-Cloud");
}