set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("nthrow"));
set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("nthrow_hurt"));
set_attack_value(AT_NTHROW, AG_OFF_LEDGE, 1);

set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 22);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HSPEED, RibbonHSP);
set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED, RibbonVSP);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 9);
//set_window_value(AT_NTHROW, 3, AG_WINDOW_HSPEED, -5);
set_window_value(AT_NTHROW, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_NTHROW, 3, AG_WINDOW_VSPEED, -);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_SFX, sound_get("fspecialmove"));
set_window_value(AT_NTHROW, 3, AG_WINDOW_SFX_FRAME, 3);

set_num_hitboxes(AT_NTHROW, 1);

set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 64);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NTHROW, 1, HG_SHAPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 135);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, RibbonKB);
//set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NTHROW, 1, HG_EXTRA_HITPAUSE, 40);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, hit_nthrow);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 4);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, sound_get("fthrowsfx"));
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NTHROW, 1, HG_HITSTUN_MULTIPLIER, .7);

set_hitbox_value(AT_NTHROW, 1, HG_HIT_PARTICLE_NUM, 2);
