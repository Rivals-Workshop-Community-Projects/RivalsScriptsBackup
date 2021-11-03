set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .7);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK, 2);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 78);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DATTACK, 1, HG_EXTRA_CAMERA_SHAKE, 2);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 55);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DATTACK, 2, HG_EXTRA_CAMERA_SHAKE, 2);


//unused
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 45);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 78);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DATTACK, 3, HG_EXTRA_CAMERA_SHAKE, 2);

//unused
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 75);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DATTACK, 4, HG_EXTRA_CAMERA_SHAKE, 2);
