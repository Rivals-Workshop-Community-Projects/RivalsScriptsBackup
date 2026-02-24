set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);

set_num_hitboxes(AT_DAIR, 3);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 70);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 3.4);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 18);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 20);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 15);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 6.4);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, HFX_GEN_SWEET);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);