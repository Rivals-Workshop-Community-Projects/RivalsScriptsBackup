set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial_jump"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_jump_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_MUNO_ATTACK_NAME, "Fspecial Jump");

//Startup
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED, -12);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_hod_dstrong"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 11);

//Down Loop
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED, 12);

//Slam
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 2);

//Jump Up
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_VSPEED, -7);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TENSION_WHIFF_PENALTY, 8);

set_num_hitboxes(AT_FSPECIAL_2, 3);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_MUNO_HITBOX_NAME, "Rising");
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 72);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_MUNO_HITBOX_NAME, "Falling");
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 64);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 76);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 270);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL_2, 3, HG_MUNO_HITBOX_NAME, "Landing");
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 88);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 24);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, 2);