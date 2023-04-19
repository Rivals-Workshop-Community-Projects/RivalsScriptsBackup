var atk = AT_TAUNT;// !
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_hidden_power"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_hidden_power_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 16);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, sound_get("gsc_unown"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(atk, 0);

//range
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 8);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -unown_eye_center_offset);
set_hitbox_value(atk, 1, HG_WIDTH, 64); //dynamic
set_hitbox_value(atk, 1, HG_HEIGHT, 64); //dynamic
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 4); //dynamic
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 10); //dynamic
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .25); //dynamic
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 6); //dynamic
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));

//sweetspot
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 8);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -unown_eye_center_offset);
set_hitbox_value(atk, 2, HG_WIDTH, 64); //dynamic
set_hitbox_value(atk, 2, HG_HEIGHT, 64); //dynamic
set_hitbox_value(atk, 2, HG_PRIORITY, 3);
set_hitbox_value(atk, 2, HG_DAMAGE, 4); //dynamic
set_hitbox_value(atk, 2, HG_ANGLE, 90);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 10); //dynamic
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .25); //dynamic
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 6);  //dynamic
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_abyss_hex_hit"));

//================================================================
//WORD DATA
set_window_value(AT_TAUNT, 2, AG_UNOWN_WINDOW_ACTIVE, true);
//no words to fill in

//==============================================================
//hiding PHONE frame data here to have exactly 28 attack files
/*
set_attack_value(AT_PHONE, AG_SPRITE, sprite_get("phone_open_2"));
set_attack_value(AT_PHONE, AG_NUM_WINDOWS, 3);
set_attack_value(AT_PHONE, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_PHONE, AG_CATEGORY, 2);
set_attack_value(AT_PHONE, AG_OFF_LEDGE, 1);
set_attack_value(AT_PHONE, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_PHONE, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_PHONE, AG_MUNO_ATTACK_EXCLUDE, 1);

// NOTE: It is not recommended to change the values for anything except for
// AG_WINDOW_ANIM_FRAMES and AG_WINDOW_ANIM_FRAME_START.

//Opening window
set_window_value(AT_PHONE, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_PHONE, 1, AG_WINDOW_ANIM_FRAMES, 3);

//Looping window
set_window_value(AT_PHONE, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_PHONE, 2, AG_WINDOW_LENGTH, 100);
set_window_value(AT_PHONE, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_PHONE, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//Closing window
set_window_value(AT_PHONE, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_PHONE, 3, AG_WINDOW_ANIM_FRAMES, -3);
set_window_value(AT_PHONE, 3, AG_WINDOW_ANIM_FRAME_START, 3);


set_attack_value(UNOWN_ATK.A, AG_MUNO_ATTACK_NAME, "A");
set_attack_value(UNOWN_ATK.B, AG_MUNO_ATTACK_NAME, "B");
set_attack_value(UNOWN_ATK.C, AG_MUNO_ATTACK_NAME, "C");
set_attack_value(UNOWN_ATK.D, AG_MUNO_ATTACK_NAME, "D");
set_attack_value(UNOWN_ATK.E, AG_MUNO_ATTACK_NAME, "E");
set_attack_value(UNOWN_ATK.F, AG_MUNO_ATTACK_NAME, "F");
set_attack_value(UNOWN_ATK.G, AG_MUNO_ATTACK_NAME, "G");
set_attack_value(UNOWN_ATK.H, AG_MUNO_ATTACK_NAME, "H");
set_attack_value(UNOWN_ATK.I, AG_MUNO_ATTACK_NAME, "I");
set_attack_value(AT_DSPECIAL_2, AG_MUNO_ATTACK_NAME, "J");
set_attack_value(UNOWN_ATK.K, AG_MUNO_ATTACK_NAME, "K");
set_attack_value(UNOWN_ATK.L, AG_MUNO_ATTACK_NAME, "L");
set_attack_value(UNOWN_ATK.M, AG_MUNO_ATTACK_NAME, "M");
set_attack_value(UNOWN_ATK.N, AG_MUNO_ATTACK_NAME, "N");
set_attack_value(UNOWN_ATK.O, AG_MUNO_ATTACK_NAME, "O");
set_attack_value(UNOWN_ATK.P, AG_MUNO_ATTACK_NAME, "P");
set_attack_value(UNOWN_ATK.Q, AG_MUNO_ATTACK_NAME, "Q");
set_attack_value(UNOWN_ATK.R, AG_MUNO_ATTACK_NAME, "R");
set_attack_value(UNOWN_ATK.S, AG_MUNO_ATTACK_NAME, "S");
set_attack_value(UNOWN_ATK.T, AG_MUNO_ATTACK_NAME, "T");
set_attack_value(UNOWN_ATK.U, AG_MUNO_ATTACK_NAME, "U");
set_attack_value(UNOWN_ATK.V, AG_MUNO_ATTACK_NAME, "V");
set_attack_value(UNOWN_ATK.W, AG_MUNO_ATTACK_NAME, "W");
set_attack_value(UNOWN_ATK.X, AG_MUNO_ATTACK_NAME, "X");
set_attack_value(UNOWN_ATK.Y, AG_MUNO_ATTACK_NAME, "Y");
set_attack_value(UNOWN_ATK.Z, AG_MUNO_ATTACK_NAME, "Z");
set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_NAME, "!");
set_attack_value(UNOWN_ATK.QM, AG_MUNO_ATTACK_EXCLUDE, 1);
set_attack_value(AT_EXTRA_1, AG_MUNO_ATTACK_EXCLUDE, 1);
*/
