set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("stinger"));
set_attack_value(AT_DATTACK, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DATTACK, AG_LANDING_LAG, 8);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("stinger_hurt"));

set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 14);

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 5)
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 6)
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//CRAZY COMBO
set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_DATTACK, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, .04);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_DATTACK, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_DATTACK, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_CANCEL_FRAME, 1);

set_window_value(AT_DATTACK, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 8, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_DATTACK, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, .04);
set_window_value(AT_DATTACK, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_DATTACK, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 9, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_DATTACK, 9, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_DATTACK, 9, AG_WINDOW_CANCEL_FRAME, 1);
set_window_value(AT_DATTACK, 9, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 10, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 10, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_DATTACK, 10, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 10, AG_WINDOW_CUSTOM_GROUND_FRICTION, .04);
set_window_value(AT_DATTACK, 10, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 10, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DATTACK, 10, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DATTACK, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 11, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 11, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_DATTACK, 11, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_DATTACK, 11, AG_WINDOW_CANCEL_FRAME, 1);
set_window_value(AT_DATTACK, 11, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 12, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DATTACK, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 12, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DATTACK, 12, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 13, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 13, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 13, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_DATTACK, 13, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DATTACK, 13, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 13, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 13, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_DATTACK, 13, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 13, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DATTACK, 13, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DATTACK, 14, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 14, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DATTACK, 14, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 14, AG_WINDOW_ANIM_FRAME_START, 30);
set_window_value(AT_DATTACK, 14, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK, 6);

set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DATTACK, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 98);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DATTACK, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);

//CRAZY COMBO
set_hitbox_value(AT_DATTACK, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 6);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 90);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 75);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_Y_OFFSET, 40);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_DATTACK, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITSTUN_MULTIPLIER, 2);

set_hitbox_value(AT_DATTACK, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 8);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 35);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 86);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 75);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_DATTACK, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_HITSTUN_MULTIPLIER, 2);

set_hitbox_value(AT_DATTACK, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 10);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 5, HG_WIDTH, 90);
set_hitbox_value(AT_DATTACK, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_DATTACK, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_DATTACK, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 5, HG_HITSTUN_MULTIPLIER, 2);

set_hitbox_value(AT_DATTACK, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW, 13);
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DATTACK, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_X, 40);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DATTACK, 6, HG_WIDTH, 90);
set_hitbox_value(AT_DATTACK, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 6, HG_PRIORITY, 10);
set_hitbox_value(AT_DATTACK, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 6, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 6, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_HITPAUSE, 25);
set_hitbox_value(AT_DATTACK, 6, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DATTACK, 6, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 6, HG_SHAPE, 2);