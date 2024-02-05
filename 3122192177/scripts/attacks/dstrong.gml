set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//startup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

//attack
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

//endlag
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 4);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 98);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 98);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 52);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 120);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -15);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 108);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 52);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_TECHABLE, 1);

set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 110);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 3);
//set_hitbox_value(AT_DSTRONG, 4, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -110);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 30);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 5, HG_TECHABLE, 1);

set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 5);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -120);
set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 50);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 110);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, 3);
//set_hitbox_value(AT_DSTRONG, 6, HG_HIT_LOCKOUT, 10);