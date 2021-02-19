//Souped up DTilt
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 6);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, asset_get("sfx_absa_kickhit"));

set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_EXTRA_3, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA_3,1);

set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 56);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 70);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_EXTRA_3, 1, HG_EXTRA_HITPAUSE, 40);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, .85);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, -5);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, 13);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_ori_sein_fstrong_hit"));
set_hitbox_value(AT_EXTRA_3, 1, HG_EXTRA_CAMERA_SHAKE, 1);