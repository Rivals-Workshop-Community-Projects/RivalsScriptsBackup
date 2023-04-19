set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_1"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_1_hurt"));
set_attack_value(AT_FSTRONG, AG_MUNO_ATTACK_REFRESH, 1);
set_attack_value(AT_FSTRONG, AG_MUNO_ATTACK_USES_ROLES, 1);
set_attack_value(AT_FSTRONG, AG_MUNO_ATTACK_MISC, "Sorry nothing. Check the files if you want frame data.");

set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 13);

//Sword
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_sword_swing_heavy1"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 26);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_GOTO, 24);

//Axe
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy1"));
set_window_value(AT_FSTRONG, 6, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_window_value(AT_FSTRONG, 7, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 23);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_GOTO, 24);

//Staff
set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSTRONG, 10, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy1"));
set_window_value(AT_FSTRONG, 10, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FSTRONG, 11, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSTRONG, 12, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSTRONG, 13, AG_WINDOW_LENGTH, 22);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_GOTO, 24);

set_num_hitboxes(AT_FSTRONG, 7);

//Sword
set_hitbox_value(AT_FSTRONG, 1, HG_MUNO_HITBOX_NAME, "Sweetspot");
set_hitbox_value(AT_FSTRONG, 1, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 76);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("sfx_sword_blow_heavy1"));

set_hitbox_value(AT_FSTRONG, 2, HG_MUNO_HITBOX_NAME, "Sourspot");
set_hitbox_value(AT_FSTRONG, 2, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 32);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("sfx_sword_blow_medium1"));

//Axe
set_hitbox_value(AT_FSTRONG, 3, HG_MUNO_HITBOX_NAME, "Clean");
set_hitbox_value(AT_FSTRONG, 3, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 52);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 86);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("sfx_sword_blow_heavy1"));

set_hitbox_value(AT_FSTRONG, 4, HG_MUNO_HITBOX_NAME, "Late");
set_hitbox_value(AT_FSTRONG, 4, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 7);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 54);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 108);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 64);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 0.95);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, sound_get("sfx_sword_blow_medium1"));

//Staff
set_hitbox_value(AT_FSTRONG, 5, HG_MUNO_HITBOX_NAME, "Hit 1");
set_hitbox_value(AT_FSTRONG, 5, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 11);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 48);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 48);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 48);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 10);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FSTRONG, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, 109 );
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));

set_hitbox_value(AT_FSTRONG, 6, HG_MUNO_HITBOX_NAME, "Hit 2");
set_hitbox_value(AT_FSTRONG, 6, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 12);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, 64);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSTRONG, 6, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG, 6, HG_HEIGHT, 56);
set_hitbox_value(AT_FSTRONG, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_ANGLE, 10);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FSTRONG, 6, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT, 109 );
set_hitbox_value(AT_FSTRONG, 6, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSTRONG, 7, HG_MUNO_HITBOX_NAME, "Hit 3");
set_hitbox_value(AT_FSTRONG, 7, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 7, HG_WINDOW, 12);
set_hitbox_value(AT_FSTRONG, 7, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSTRONG, 7, HG_WIDTH, 128);
set_hitbox_value(AT_FSTRONG, 7, HG_HEIGHT, 64);
set_hitbox_value(AT_FSTRONG, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 7, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 7, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 7, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_FSTRONG, 7, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 7, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 7, HG_HIT_SFX, sound_get("sfx_rpg_damage2"));
set_hitbox_value(AT_FSTRONG, 7, HG_VISUAL_EFFECT, 110 );
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_GROUP, 2);