set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 6);

// startup + charge at the end

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);

// startup 2
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 11);

// 2 frames used to move a bit, without sliding
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 40); // 30


// hit
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED, 0);

// staying head down 
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);

// standing up
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FSTRONG, 3);

// sweetspot
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW,3 )
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME,4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 55);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 1, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));



//mid
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW,3 )
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME,4);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 15);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 52);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 2, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));


// top
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW,3 )
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME,4);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, -18);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -69);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 73);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 24);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 60);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 3, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));