set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
//set_attack_value(AT_USTRONG, AG_OFF_LEDGE, 1);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1); //Start up
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
//set_window_value(AT_USTRONG, 1, AG_WINDOW_INVINCIBILITY, 2);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1); //Fist going out
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("Ustrong_attack"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_INVINCIBILITY, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1); //Holding the hand out, missing
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG, 3, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);

set_num_hitboxes(AT_USTRONG, 1);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1); //The start hitbox that pushes them
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("Ustrong_hit"));
set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1); //The start hitbox that pushes them
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 10);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 35);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);
/*
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1); //The start hitbox that pushes them
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 120);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -110);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 3, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 29);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 29);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USTRONG, 3, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1); //The start hitbox that pushes them
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 150);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -140);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 4, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_USTRONG, 4, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT_X_OFFSET, 29);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, 29);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USTRONG, 4, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1); //Rapid gun hitbox
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 10);
//set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 160);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -140);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 65);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 65);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 250);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 5, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USTRONG, 5, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_USTRONG, 5, HG_TECHABLE, 2);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, sound_get("Gun"));
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1); //Charged blast
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 99);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 140);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 140);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 15);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, .1);
//set_hitbox_value(AT_USTRONG, 6, HG_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 6, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 6, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_USTRONG, 6, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT, Explosive);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT_Y_OFFSET, -40);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, -1);