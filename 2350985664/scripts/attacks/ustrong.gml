set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 7);

// startup charge
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

// startup aftercharge
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("gnap"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 3);

// gnap 1
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, sound_get("gnap"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 4);

// gnap 2
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, sound_get("gnap"));
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, 4);

// gnap 3
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 5);

// endlag 1
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

// endlag 2
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG,4);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -110);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 22);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 303 );
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_crunch"));
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -108);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 52);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 22);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 303 );
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_crunch"));
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -106);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 58);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 303 );
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_crunch"));
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_LOCKOUT, 3);

// scooping
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 52);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 303 );
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 0);







