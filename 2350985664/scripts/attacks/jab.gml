set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);

//jab 1 startup
set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2);


// jab1
set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// jab1 endlag, cancelable into jab2 or tilts
set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 0);


// jab2 startup
set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, 3);



//jab2
set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 8);


// jab2 endlag, cancelable into jab3 or tilts
set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 17);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 0);


// jab3 startup
set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_bite"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 6);

//jab3
set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 5);

// jab3 endlag
set_window_value(AT_JAB, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 17);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_JAB, 3);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 45);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 301 );
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);


set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 80);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 301 );
set_hitbox_value(AT_JAB, 2, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_JAB, 3, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_crunch"));
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, grab_fx);// 302
set_hitbox_value(AT_JAB, 3, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 2);