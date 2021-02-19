set_attack_value(AT_DTHROW, AG_SPRITE, spr_nspecial_item_boots);
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_DTHROW, AG_MUNO_ATTACK_NAME, "NSpecial: Frost Walker");



set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));
// set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);



set_num_hitboxes(AT_DTHROW, 1);

set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 70);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, 25);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 180);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_DTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 100);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_DTHROW, 1, HG_EFFECT, 5);
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT, 199);