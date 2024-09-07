set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

// Charge
set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("soap_tail_whoosh_sml"));

// Startup
set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3); 
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("soap_tail_whoosh_med"));

// Hit1
set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 0);

// Middle endlag
set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX, sound_get("soap_tail_whoosh_lrg"));

// Swipe 2
set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED_TYPE, 2);

// Endlag
set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_FSTRONG, 3);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 52+20);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 30);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BUBBLE_KNOCKBACK, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_BUBBLE_ANGLE, 0)
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, medium_hit1);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("soap_tail_hit_med_alt"));
set_hitbox_value(AT_FSTRONG, 1, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 44+51);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 51);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 160);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_BUBBLE_KNOCKBACK, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_BUBBLE_ANGLE, 0)
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, medium_hit1);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("soap_tail_hit_med_alt"));
set_hitbox_value(AT_FSTRONG, 2, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 42);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 145);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 3, HG_BUBBLE_KNOCKBACK, 30);
set_hitbox_value(AT_FSTRONG, 3, HG_BUBBLE_ANGLE, 5)
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, big_hit);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 40);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("soap_tail_hit_lrg_alt"));
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, -1);