set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UAIR, 3, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UAIR, 5, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_UAIR, 5, AG_WINDOW_VSPEED, -4);
set_window_value(AT_UAIR, 5, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_UAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR,4);

set_hitbox_value(AT_UAIR, 1, HG_MUNO_HITBOX_NAME, "Multihit 1");
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -115);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_UAIR, 2, HG_MUNO_HITBOX_NAME, "Multihit 2");
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -115);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_UAIR, 3, HG_MUNO_HITBOX_NAME, "Multihit 3");
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -115);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_UAIR, 4, HG_MUNO_HITBOX_NAME, "Launcher");
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -140);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 75);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 100);
set_hitbox_value(AT_UAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 4, HG_ANGLE_FLIPPER, 4);