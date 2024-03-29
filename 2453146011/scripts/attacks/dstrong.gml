set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

// Startup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

// Invis
set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_VSPEED, 0);

// Teleport up (stay)
set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, sound_get("monarch_twinkle"));


// Begin fall
set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_CUSTOM_GRAVITY, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, sound_get("monarch_woosh4"));

// Slice
set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_CUSTOM_GRAVITY, .5);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, .3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);

// Recover
set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, .3);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);

set_num_hitboxes(AT_DSTRONG,5);

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 110);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 285);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 9.5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, hitfx5);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -60);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("monarch_knifehit2"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -5);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 9.5);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, hitfx3);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("monarch_knifehit2"));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -20);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 9.5);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, hitfx3);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, sound_get("monarch_knifehit2"));
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -40);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 40);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 9.5);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, hitfx3);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, sound_get("monarch_knifehit2"));
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -10);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 9.5);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, hitfx3);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, sound_get("monarch_knifehit2"));
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 5, HG_HITSTUN_MULTIPLIER, 1.0);