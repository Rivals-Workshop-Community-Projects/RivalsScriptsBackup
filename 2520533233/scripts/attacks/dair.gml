set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);

// startup
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, .8);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("drill_long"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 12);

// spike
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, .4);

// drill
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 10);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, .8);

//landing
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, sound_get("dairland"));



//endlag
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 6);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, -90);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.93);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 193 );
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, -90);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.18);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 193 );
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 5);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 5);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, 3);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DAIR, 6, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 82);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT, 193 );
set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));