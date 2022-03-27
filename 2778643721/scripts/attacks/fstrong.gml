set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 33);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 11);
//set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 18);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("sfx_usword_charge"));

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_usword_swing"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 7);
//early


set_hitbox_value(AT_FSTRONG, 1, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_FSTRONG, 2, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_FSTRONG, 3, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_FSTRONG, 4, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_FSTRONG, 5, HG_HITSTUN_MULTIPLIER, .5);
//set_hitbox_value(AT_FSTRONG, 6, HG_HITSTUN_MULTIPLIER, .5);
//sourspot
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, -16);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -176);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 196);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("sfx_hit_sharp"));
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTENDED_PARRY_STUN, 1);

//sweetspot
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 46);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -146);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 110);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 65);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("sfx_hit_sharp"));
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTENDED_PARRY_STUN, 1);

//mid

//smear1
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 104);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 104);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8.2);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("sfx_hit_sharp"));
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_EXTENDED_PARRY_STUN, 1);

//smear2
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 142);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 30);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 8.2);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, sound_get("sfx_hit_sharp"));
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 4, HG_EXTENDED_PARRY_STUN, 1);

//sword
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 104);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 110);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 8.2);
set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, sound_get("sfx_hit_sharp"));
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 5, HG_EXTENDED_PARRY_STUN, 1);

//late

//sword
/*set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, 114);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, 18);
set_hitbox_value(AT_FSTRONG, 6, HG_WIDTH, 110);
set_hitbox_value(AT_FSTRONG, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 6, HG_ANGLE, 100);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 6, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSTRONG, 6, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 6, HG_HIT_SFX, sound_get("sfx_hit_sharp"));
set_hitbox_value(AT_FSTRONG, 6, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 6, HG_EXTENDED_PARRY_STUN, 1);