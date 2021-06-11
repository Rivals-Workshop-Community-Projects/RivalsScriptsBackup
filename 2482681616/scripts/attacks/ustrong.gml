set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ori_sein_fstrong"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USTRONG, 5);

//Initial Hit
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 176);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 76);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 85);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 16);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX,  asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, 0.3);
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 2);

//Initial Hit Edge
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -80);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -56);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 64);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 76);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 60);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX,  asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_USTRONG, 2, HG_HITSTUN_MULTIPLIER, 0.3);
set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 80);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 64);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 76);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 4);

//Sweetspot
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -173);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 86);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 2.5);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 155);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_kragg_rock_pillar"));
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 1);

//Sourspot
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -148);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 168);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 76);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 1);

