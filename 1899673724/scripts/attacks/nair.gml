set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_MUNO_ATTACK_NAME, "NAir: Insta-Shield");

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("insta_shield"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR,2);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_MUNO_HITBOX_NAME, "Clean Hitbox");
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 75);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -8);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_MUNO_HITBOX_NAME, "Late Hitbox");
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 80);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 0);