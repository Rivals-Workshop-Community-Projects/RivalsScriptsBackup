set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 2);

set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 7);

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 4, AG_WINDOW_GOTO, 7);

//hit
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX, sound_get("ScraBuild_Cancel_00"));
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_GOTO, 8);

//whiff
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_USTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 1);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -120);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 65);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, -90);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 40);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("magnesis_shoot"));
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, vfx_energy);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);