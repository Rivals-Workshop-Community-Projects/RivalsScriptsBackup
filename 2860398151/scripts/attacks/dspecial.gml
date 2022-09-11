set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));

//	Start-Up
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sfx_kodiak_dspec_start);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);

//	This is the PUNCH
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);

//	You Muppet
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 2);

//	There is no joke, die
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 30);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 38);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 42);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 48);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DSPECIAL, 11, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 54);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_HSPEED_TYPE, 2);

set_num_hitboxes(AT_DSPECIAL, 9);

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 14);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 27);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 85);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sfx_kodiak_dspec_hit);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 36);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 58);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 85);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.3);
set_hitbox_value(AT_DSPECIAL, 2, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 43);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -43);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 85);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 85);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 69);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1.3);
set_hitbox_value(AT_DSPECIAL, 3, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DSPECIAL, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 43);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -43);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_DSPECIAL, 5, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 43);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -43);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_DSPECIAL, 6, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 8);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, 43);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -43);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_DSPECIAL, 7, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 8);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, 43);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, -43);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_GROUP, 7);

set_hitbox_value(AT_DSPECIAL, 8, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW, 8);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSPECIAL, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_X, 46);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_Y, -43);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_GROUP, 8);

set_hitbox_value(AT_DSPECIAL, 9, HG_PARENT_HITBOX, 9);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW, 10);
set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 9, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_X, 38);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_Y, -53);
set_hitbox_value(AT_DSPECIAL, 9, HG_WIDTH, 104);
set_hitbox_value(AT_DSPECIAL, 9, HG_HEIGHT, 104);
set_hitbox_value(AT_DSPECIAL, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 9, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 9, HG_KNOCKBACK_SCALING, 0.90);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITPAUSE_SCALING, 0.90);
set_hitbox_value(AT_DSPECIAL, 9, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 9, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_GROUP, 9);