set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 12);


set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 106);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, blob_smull);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 10);


set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 2);


set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 3);


set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 4);


set_hitbox_value(AT_UAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 3);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 5);


set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, 1);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 106);
set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 45);
set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, blob_med);
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, 6);
//set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 10);


set_hitbox_value(AT_UAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_X, 1);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UAIR, 7, HG_WIDTH, 57);
set_hitbox_value(AT_UAIR, 7, HG_HEIGHT, 98);
set_hitbox_value(AT_UAIR, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 7, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 7, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 7, HG_VISUAL_EFFECT, blob_smull);
set_hitbox_value(AT_UAIR, 7, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 7, HG_ANGLE_FLIPPER, 10);


set_hitbox_value(AT_UAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 8, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_X, 1);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UAIR, 8, HG_WIDTH, 57);
set_hitbox_value(AT_UAIR, 8, HG_HEIGHT, 98);
set_hitbox_value(AT_UAIR, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 8, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 8, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 8, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 8, HG_VISUAL_EFFECT, blob_smull);
set_hitbox_value(AT_UAIR, 8, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 8, HG_ANGLE_FLIPPER, 10);


set_hitbox_value(AT_UAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 9, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 9, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_X, 1);
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UAIR, 9, HG_WIDTH, 57);
set_hitbox_value(AT_UAIR, 9, HG_HEIGHT, 98);
set_hitbox_value(AT_UAIR, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 9, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 9, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 9, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 9, HG_VISUAL_EFFECT, blob_smull);
set_hitbox_value(AT_UAIR, 9, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 9, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UAIR, 9, HG_ANGLE_FLIPPER, 10);


set_hitbox_value(AT_UAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 10, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 10, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 10, HG_HITBOX_X, 1);
set_hitbox_value(AT_UAIR, 10, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UAIR, 10, HG_WIDTH, 57);
set_hitbox_value(AT_UAIR, 10, HG_HEIGHT, 98);
set_hitbox_value(AT_UAIR, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 10, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 10, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 10, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 10, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 10, HG_VISUAL_EFFECT, blob_smull);
set_hitbox_value(AT_UAIR, 10, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 10, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 10, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_UAIR, 10, HG_ANGLE_FLIPPER, 10);


set_hitbox_value(AT_UAIR, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 11, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 11, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UAIR, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 11, HG_HITBOX_X, 1);
set_hitbox_value(AT_UAIR, 11, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UAIR, 11, HG_WIDTH, 57);
set_hitbox_value(AT_UAIR, 11, HG_HEIGHT, 98);
set_hitbox_value(AT_UAIR, 11, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 11, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 11, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 11, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 11, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 11, HG_VISUAL_EFFECT, blob_smull);
set_hitbox_value(AT_UAIR, 11, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 11, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 11, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_UAIR, 11, HG_ANGLE_FLIPPER, 10);


set_hitbox_value(AT_UAIR, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 12, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 12, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_UAIR, 12, HG_HITBOX_X, 1);
set_hitbox_value(AT_UAIR, 12, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UAIR, 12, HG_WIDTH, 57);
set_hitbox_value(AT_UAIR, 12, HG_HEIGHT, 98);
set_hitbox_value(AT_UAIR, 12, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 12, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 12, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 12, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 12, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 12, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 12, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 12, HG_VISUAL_EFFECT, blob_med);
set_hitbox_value(AT_UAIR, 12, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 12, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 12, HG_HITBOX_GROUP, 6);