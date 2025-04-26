set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);



set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_bird_upspecial"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 1);


set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DSTRONG,6);

// strong right
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW,3 )
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME,3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 31);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1.1);
//set_hitbox_value(AT_DSTRONG, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


// strong left
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW,3 )
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME,3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -35);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1.1);
//set_hitbox_value(AT_DSTRONG, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//weak right
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW,3 )
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME,3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 54);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DSTRONG, 3, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

// weak left
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW,3 )
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME,3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -39);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 54);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DSTRONG, 4, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));



//top right
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW,3 )
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME,3);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 20);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -100);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 30);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, 5, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//top left
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW,3 )
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME,3);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, -25);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -100);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 30);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, 6, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));