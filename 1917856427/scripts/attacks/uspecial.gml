set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH,12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_superjump_sein"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_ell_fist_fire"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 21);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -5);

set_num_hitboxes(AT_USPECIAL, 8);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -63);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -84);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_DRIFT_MULTIPLIER, 0.8);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, -15);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, -5);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, -5);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, -5);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 7, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, -5);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 7);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, -5);
set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH, 65);
set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 76);
set_hitbox_value(AT_USPECIAL, 8, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 8, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE_FLIPPER, 5);



