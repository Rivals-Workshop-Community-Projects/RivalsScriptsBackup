set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_MUNO_ATTACK_USES_ROLES, 1);

set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 6);
set_window_value(AT_DSTRONG, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DSTRONG, 2, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_anthem_swipe1"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 7);

//Hit (AIR)
set_window_value(AT_DSTRONG, 3, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

//End
set_window_value(AT_DSTRONG, 4, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_GOTO, 8);

//Hit (GROUND)
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 13);

//End
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DSTRONG, 6);

set_hitbox_value(AT_DSTRONG, 1, HG_MUNO_HITBOX_NAME, "Air Sourspot");
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 54);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 96);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, hfx_large_down);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("sfx_sword_blow_heavy1"));

set_hitbox_value(AT_DSTRONG, 2, HG_MUNO_HITBOX_NAME, "Air Tipper");
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 96);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 34);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, hfx_sweetspot);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("sfx_anthem_sweetspot"));
set_hitbox_value(AT_DSTRONG, 2, HG_EFFECT, 30);

set_hitbox_value(AT_DSTRONG, 3, HG_MUNO_HITBOX_NAME, "Ground Hit Sourspot");
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 54);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 96);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, hfx_large_down);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, sound_get("sfx_sword_blow_heavy1"));

set_hitbox_value(AT_DSTRONG, 4, HG_MUNO_HITBOX_NAME, "Ground Hit Tipper");
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 96);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 24);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, hfx_sweetspot);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, sound_get("sfx_anthem_sweetspot"));
set_hitbox_value(AT_DSTRONG, 4, HG_EFFECT, 30);

set_hitbox_value(AT_DSTRONG, 5, HG_MUNO_HITBOX_NAME, "Ground Hit Debris (Nobody Hit)");
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 140);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 44);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 36);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 55);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_DSTRONG, 6, HG_MUNO_HITBOX_NAME, "Ground Hit Debris (Somebody Hit With Tipper)");
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 140);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 96);
set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 13);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 55);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));