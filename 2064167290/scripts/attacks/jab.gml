set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_attack_value(AT_JAB, AG_NUM_WINDOWS, 8);


// jab 1 startup
set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 1);

// jab 1
set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);


// jab 1 end and waiting for jab 2
set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);

// jab 2 startup
set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 2);




// jab 2
set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 5);


// jab 2 end and waiting for jab 3
set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 7);

// jab 3 startup
set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 1);

// jab 3 + end
set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 28);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 7);


set_num_hitboxes(AT_JAB, 3);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW,2 )
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME,6);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 30);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 80);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_JAB, 1, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_JAB, 1, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 301);
//set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW,5 )
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME,6);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 35);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 80);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_JAB, 2, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_JAB, 2, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW,8 )
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME,8);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_JAB, 3, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_JAB, 3, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));






