atk = AT_NAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("nair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 5);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("swing1"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 7);

window_num ++; //attack 1
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num ++; //inbetween
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("swing2"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 3);

window_num ++; //attack 2
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //Part 1A
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 33);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -31);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 92);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 42);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("newsfx_slash_small"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);

hitbox_num = 2; //Part 1B
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 26);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -46);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 103);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 37);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER,  .8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("newsfx_slash_small"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);

hitbox_num = 3; //Part 2B
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -34);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 141);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 60);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_medium);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("newsfx_slash_med"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 2);


set_num_hitboxes(atk, 4);