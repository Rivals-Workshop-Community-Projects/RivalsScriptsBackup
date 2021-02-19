set_attack_value(AT_FTHROW, AG_SPRITE, spr_nspecial_item_trident);
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_FTHROW, AG_MUNO_ATTACK_NAME, "NSpecial: Riptide");

if has_rune("M") || has_rune("N"){
	set_attack_value(AT_FTHROW, AG_MUNO_ATTACK_COOLDOWN, -9999);
}



set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));

set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 7);



set_num_hitboxes(AT_FTHROW, 1);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -64);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 64);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 128);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 304);

if has_rune("O"){
	set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 16);
	set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 11);
	set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 16);
	set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.6);
}