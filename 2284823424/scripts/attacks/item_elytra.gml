set_attack_value(AT_UTHROW, AG_SPRITE, spr_nspecial_item_elytra);
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_UTHROW, AG_MUNO_ATTACK_NAME, "NSpecial: Elytra");

if has_rune("M") || has_rune("N"){
	set_attack_value(AT_UTHROW, AG_MUNO_ATTACK_COOLDOWN, -9999);
}



set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));
// set_window_value(AT_UTHROW, 2, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);



set_num_hitboxes(AT_UTHROW, 1);

set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 72);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 50);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));