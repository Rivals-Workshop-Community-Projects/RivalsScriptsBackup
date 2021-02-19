set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("swing_fstrong"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 12);//24
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 5);

//main big hit
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 86);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 73);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);//8
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.85);//0.8
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("hit_strong_1"));

//middle trail
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 21);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -82);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 94);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 51);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7);//6
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("hit_strong_1"));

/*
//late trail
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, -37);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -97);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 55);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 22);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 60);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0.35);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("hit_med_5"));
*/

//shockwave
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 102);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 40);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 52);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 65);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, sound_get("hit_med_5"));

//spike
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 81);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 31);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 21);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, -90);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, sound_get("hit_strong_2"));








