set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 5);

//dragdown
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 85);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_DTILT, 1, HG_GROUNDEDNESS, 2);

//shockwave
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 85);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 130);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 15);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DTILT, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITSTUN_MULTIPLIER, 0.75);

//sweetspot
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 90);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DTILT, 3, HG_GROUNDEDNESS, 1);
//set_hitbox_value(AT_DTILT, 3, HG_HITSTUN_MULTIPLIER, 1);

//sweetspot (spike)
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, 80);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DTILT, 4, HG_WIDTH, 45);
set_hitbox_value(AT_DTILT, 4, HG_HEIGHT, 25);
set_hitbox_value(AT_DTILT, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 4, HG_PRIORITY, 7);
set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_DTILT, 4, HG_ANGLE, 260);
set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 4, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DTILT, 4, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DTILT, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DTILT, 4, HG_GROUNDEDNESS, 2);

//sick and based
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DTILT, 5, HG_WIDTH, 40);
set_hitbox_value(AT_DTILT, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_DTILT, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 5, HG_ANGLE, 270);
set_hitbox_value(AT_DTILT, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
//set_hitbox_value(AT_DTILT, 5, HG_GROUNDEDNESS, 2);