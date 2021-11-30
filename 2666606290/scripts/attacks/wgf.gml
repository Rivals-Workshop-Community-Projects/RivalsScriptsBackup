set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("EWGF"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG_2, 3, AG_MUNO_WINDOW_INVUL, -1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX, sound_get("ewgf"));
set_window_value(AT_FSTRONG_2, 3, AG_MUNO_WINDOW_EXCLUDE, 1);

set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 5, AG_MUNO_WINDOW_EXCLUDE, 1);


set_num_hitboxes(AT_FSTRONG_2, 2);

set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 84);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 10); // 10
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 80);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITSTUN_MULTIPLIER, 0.8)
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


set_hitbox_value(AT_FSTRONG_2, 2, HG_MUNO_HITBOX_NAME, "Electric");
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WIDTH, 84);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 14); // 10
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE, 85);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITSTUN_MULTIPLIER, 1)
set_hitbox_value(AT_FSTRONG_2, 2, HG_DRIFT_MULTIPLIER, 0.25)
set_hitbox_value(AT_FSTRONG_2, 2, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_FSTRONG_2, 2, HG_EFFECT, 11);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT, 125);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));

//MUNOSTUFF
set_attack_value(AT_FSTRONG_2, AG_MUNO_ATTACK_NAME, "C.Dash, Attack");
set_attack_value(AT_FSTRONG_2, AG_MUNO_ATTACK_MISC, "Wind God Fist
press [df + A] at the exact same time for Electric Wind God Fist (EWGF)
EWGF invincible f6-8
");
set_attack_value(AT_FSTRONG_2, AG_MUNO_ATTACK_ENDLAG, string(get_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH)) + "(EWGF:" +  string(get_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH)) + ")");







