set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, has_rune("E") ? 10 : 25);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_charge_blade_ready"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 28);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_hammerswing_l"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, sound_get("sfx_hammerhit_ground"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FSTRONG, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_MUNO_HITBOX_NAME, "Early");
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -128);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 108);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("sfx_hammerhit_m"));
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 5);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_MUNO_HITBOX_NAME, "Linker 1");
set_hitbox_value(AT_FSTRONG, 2, HG_MUNO_HITBOX_MISC_ADD, "Links into Sourspot");
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -99);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 44);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 270);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_TECHABLE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_MUNO_HITBOX_NAME, "Sweetspot");
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 88);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 52);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 84);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 16);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 9.5);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1.25);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("sfx_hammerhit_l"));
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_LOCKOUT, 5);

set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_MUNO_HITBOX_NAME, "Sourspot");
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 46);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 44);
set_hitbox_value(AT_FSTRONG, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, sound_get("sfx_hammerhit_m"));
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_LOCKOUT, 5);

