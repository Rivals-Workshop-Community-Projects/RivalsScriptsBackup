set_attack_value(AT_FAIR_3, AG_CATEGORY, 1);
set_attack_value(AT_FAIR_3, AG_SPRITE, sprite_get("fair_shovel"));
set_attack_value(AT_FAIR_3, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR_3, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR_3, AG_LANDING_LAG, 7);
set_attack_value(AT_FAIR_3, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR_3, AG_MUNO_ATTACK_NAME, "FAir (Shovel)");

//startup
set_window_value(AT_FAIR_3, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR_3, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR_3, 1, AG_WINDOW_SFX, sound_get("shovel_swing"));
set_window_value(AT_FAIR_3, 1, AG_WINDOW_SFX_FRAME, 9);

//active
set_window_value(AT_FAIR_3, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR_3, 2, AG_WINDOW_ANIM_FRAMES, 2);

//endlag
set_window_value(AT_FAIR_3, 3, AG_WINDOW_LENGTH, 17);
set_window_value(AT_FAIR_3, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FAIR_3, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FAIR_3, 3, AG_WINDOW_ANIM_FRAMES, 5);

set_num_hitboxes(AT_FAIR_3,3);

//swing early
set_hitbox_value(AT_FAIR_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR_3, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR_3, 1, HG_HITBOX_X, 87);
set_hitbox_value(AT_FAIR_3, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FAIR_3, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR_3, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR_3, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR_3, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR_3, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR_3, 1, HG_ANGLE, 361);
//set_hitbox_value(AT_FAIR_3, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR_3, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR_3, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FAIR_3, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR_3, 1, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_FAIR_3, 1, HG_HIT_SFX, sound_get("shovel_hit"));
set_hitbox_value(AT_FAIR_3, 1, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_FAIR_3, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR_3, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR_3, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR_3, 2, HG_HITBOX_X, 56);
set_hitbox_value(AT_FAIR_3, 2, HG_HITBOX_Y, -39);
set_hitbox_value(AT_FAIR_3, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR_3, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR_3, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR_3, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR_3, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR_3, 2, HG_ANGLE, 361);
//set_hitbox_value(AT_FAIR_3, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR_3, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR_3, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FAIR_3, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR_3, 2, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_FAIR_3, 2, HG_HIT_SFX, sound_get("shovel_hit"));
set_hitbox_value(AT_FAIR_3, 2, HG_VISUAL_EFFECT, 304);

//swing late
set_hitbox_value(AT_FAIR_3, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR_3, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR_3, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FAIR_3, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR_3, 3, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR_3, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FAIR_3, 3, HG_WIDTH, 116);
set_hitbox_value(AT_FAIR_3, 3, HG_HEIGHT, 38);
set_hitbox_value(AT_FAIR_3, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR_3, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR_3, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR_3, 3, HG_ANGLE, 361);
//set_hitbox_value(AT_FAIR_3, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR_3, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR_3, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FAIR_3, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR_3, 3, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_FAIR_3, 3, HG_HIT_SFX, sound_get("shovel_hit"));
set_hitbox_value(AT_FAIR_3, 3, HG_VISUAL_EFFECT, 304);