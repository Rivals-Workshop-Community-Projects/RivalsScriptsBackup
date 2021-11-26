set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("ftilt_boneless"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("ftilt_boneless_hurt"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTHROW, 2);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, aurabig_effect);

set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_X, 98);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FTHROW, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FTHROW, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_FTHROW, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTHROW, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTHROW, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTHROW, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FTHROW, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT, aura_effect);