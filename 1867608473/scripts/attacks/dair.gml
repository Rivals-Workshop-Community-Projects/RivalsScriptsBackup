set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR,4);

for (var z = 1; z <= 4; z++) {
    set_hitbox_value(AT_DAIR, z, HG_VISUAL_EFFECT, 302);
}

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 47);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 77);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_CAMERA_SHAKE, -1);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 47);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 77);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_DAIR, 2, HG_EXTRA_CAMERA_SHAKE, -1);

set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 47);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 77);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DAIR, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_DAIR, 3, HG_EXTRA_CAMERA_SHAKE, -1);

set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 7);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, -3);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 47);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 77);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 4, HG_TECHABLE, 0);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, .67);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 4);