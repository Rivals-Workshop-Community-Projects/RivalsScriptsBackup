set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("rfstrong"));
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("rfstrong_hurt"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);

//Startup 1
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX, sound_get("RFStrong4"));

//Startup 2
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX, sound_get("rswish_med1"));

//Active 1
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);

//Missed
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG_2, 1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 18*2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -15*2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 22*2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 17*2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, fx_rhit);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, sound_get("claw"));