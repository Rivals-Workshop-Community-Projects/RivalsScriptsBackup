set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sfx_lasso_heavy);

// active
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

// miss
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);

// miss pull
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 13);

// Grabbed Start
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 12);

// Grabbed Pull
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 13);

set_num_hitboxes(AT_FSTRONG, 4);

// grabber
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 154);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sfx_grab);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_FSTRONG, 1, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 160);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 56);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 16);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 56);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 16);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 135);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_may_whip1"));

set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 46);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 56);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 16);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 135);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_may_whip1"));