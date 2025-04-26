set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong_stop"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG_2, AG_MUNO_ATTACK_NAME, "UStrong (Stop Sign)");

//startup 1
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

//startup 2
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//release
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USTRONG_2, 3, AG_WINDOW_SFX_FRAME, 5);
//set_window_value(AT_USTRONG_2, 3, AG_WINDOW_SFX, asset_get("sfx_tow_anchor_land"));

//active
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//endlag
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_LENGTH, 22);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG_2,5);

//early hit
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 76);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_USTRONG_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, sound_get("shovel_hit"));
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_X, 56);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y, -44);
set_hitbox_value(AT_USTRONG_2, 2, HG_WIDTH, 52);
set_hitbox_value(AT_USTRONG_2, 2, HG_HEIGHT, 54);
set_hitbox_value(AT_USTRONG_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG_2, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, sound_get("shovel_hit"));
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_LOCKOUT, 10);

//late hit front
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_Y, -70);
set_hitbox_value(AT_USTRONG_2, 3, HG_WIDTH, 98);
set_hitbox_value(AT_USTRONG_2, 3, HG_HEIGHT, 66);
set_hitbox_value(AT_USTRONG_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG_2, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG_2, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG_2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG_2, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USTRONG_2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USTRONG_2, 3, HG_HIT_SFX, sound_get("shovel_hit"));
set_hitbox_value(AT_USTRONG_2, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG_2, 3, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_USTRONG_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG_2, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_USTRONG_2, 4, HG_HITBOX_Y, -98);
set_hitbox_value(AT_USTRONG_2, 4, HG_WIDTH, 98);
set_hitbox_value(AT_USTRONG_2, 4, HG_HEIGHT, 46);
set_hitbox_value(AT_USTRONG_2, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG_2, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG_2, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG_2, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG_2, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USTRONG_2, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG_2, 4, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USTRONG_2, 4, HG_HIT_SFX, sound_get("shovel_hit"));
set_hitbox_value(AT_USTRONG_2, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG_2, 4, HG_HIT_LOCKOUT, 10);

//late hit back
set_hitbox_value(AT_USTRONG_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG_2, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG_2, 5, HG_HITBOX_X, -40);
set_hitbox_value(AT_USTRONG_2, 5, HG_HITBOX_Y, -72);
set_hitbox_value(AT_USTRONG_2, 5, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG_2, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG_2, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG_2, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG_2, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG_2, 5, HG_ANGLE, 110);
set_hitbox_value(AT_USTRONG_2, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG_2, 5, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USTRONG_2, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG_2, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USTRONG_2, 5, HG_HIT_SFX, sound_get("shovel_hit"));
set_hitbox_value(AT_USTRONG_2, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG_2, 5, HG_HIT_LOCKOUT, 10);
