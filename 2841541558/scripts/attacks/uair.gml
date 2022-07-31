set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_leaves"));

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 13);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 4);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 120);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 96);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 10);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 120);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 106);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 10);

set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 120);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 106);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, -1);

