//basic 1-hit aerial attack, based on darmanna's nair

set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 2);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("pistol_clipin"));

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 2);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 53);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 1, HG_EXTRA_CAMERA_SHAKE, 0);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -37);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 119);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 41);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_metal_hit_strong"));
set_hitbox_value(AT_NAIR, 2, HG_EXTRA_CAMERA_SHAKE, 0);