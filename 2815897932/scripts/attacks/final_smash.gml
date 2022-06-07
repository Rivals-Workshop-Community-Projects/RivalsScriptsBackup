set_attack_value(49, AG_CATEGORY, 0);
set_attack_value(49, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(49, AG_NUM_WINDOWS, 4);
set_attack_value(49, AG_HAS_LANDING_LAG, 0);
set_attack_value(49, AG_LANDING_LAG, 0);
set_attack_value(49, AG_OFF_LEDGE, 0);
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(49, 1, AG_WINDOW_LENGTH, 24);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(49, 1, AG_WINDOW_HSPEED, 0);
set_window_value(49, 1, AG_WINDOW_VSPEED, 0);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("bell_uncut"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(49, 1, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(49, 2, AG_WINDOW_LENGTH, 8);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(49, 2, AG_WINDOW_VSPEED, 0);
set_window_value(49, 2, AG_WINDOW_HSPEED, 17);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(49, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 2, AG_WINDOW_SFX, asset_get("sfx_charge_blade_swing"));
set_window_value(49, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(49, 2, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(49, 3, AG_WINDOW_LENGTH, 10);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(49, 3, AG_WINDOW_VSPEED, 0);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 4, AG_WINDOW_LENGTH, 18);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(49, 4, AG_WINDOW_HSPEED, 0);
set_window_value(49, 4, AG_WINDOW_VSPEED, 0);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_VSPEED_TYPE, 1);

//startup
set_window_value(49, 5, AG_WINDOW_LENGTH, 10);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 5, AG_WINDOW_SFX_FRAME, 4);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 9);


//active
set_window_value(49, 6, AG_WINDOW_LENGTH, 23);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 23);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(49, 6, AG_WINDOW_INVINCIBILITY, 1);

//recovery
set_window_value(49, 7, AG_WINDOW_LENGTH, 34);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAMES, 17);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAME_START, 37);
set_window_value(49, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(49, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 7, AG_WINDOW_SFX, asset_get("sfx_ori_dtilt_perform"));
set_window_value(49, 7, AG_WINDOW_SFX_FRAME, 1);
set_window_value(49, 7, AG_WINDOW_INVINCIBILITY, 1);


set_num_hitboxes(49, 25);

set_hitbox_value(49, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 6);
set_hitbox_value(49, 1, HG_HITBOX_X, 0);
set_hitbox_value(49, 1, HG_HITBOX_Y, -32);
set_hitbox_value(49, 1, HG_WIDTH, 64);
set_hitbox_value(49, 1, HG_HEIGHT, 64);
set_hitbox_value(49, 1, HG_SHAPE, 2);
set_hitbox_value(49, 1, HG_PRIORITY, 10);
set_hitbox_value(49, 1, HG_DAMAGE, 1);
set_hitbox_value(49, 1, HG_ANGLE, 90);
set_hitbox_value(49, 1, HG_TECHABLE, 3);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 12.5);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(49, 1, HG_EXTRA_HITPAUSE, 60);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

var temp_num = 3
//hitboxes
set_hitbox_value(49, 2, HG_WINDOW, 6);
set_hitbox_value(49, 2, HG_LIFETIME, 1);
set_hitbox_value(49, 2, HG_HITBOX_X, 30);
set_hitbox_value(49, 2, HG_HITBOX_Y, -30);
set_hitbox_value(49, 2, HG_PRIORITY, 2);
set_hitbox_value(49, 2, HG_WIDTH, 100);
set_hitbox_value(49, 2, HG_HEIGHT, 100);
set_hitbox_value(49, 2, HG_DAMAGE, 1);
set_hitbox_value(49, 2, HG_ANGLE, 90);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, .1);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(49, 2, HG_EXTRA_HITPAUSE, 120);
set_hitbox_value(49, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);


temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);


temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);


temp_num += 1

set_hitbox_value(49, temp_num, HG_WINDOW, 6);
set_hitbox_value(49, temp_num, HG_LIFETIME, 1);
set_hitbox_value(49, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, temp_num, HG_WINDOW_CREATION_FRAME, temp_num-1);
set_hitbox_value(49, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(49, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(49, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, temp_num, HG_PRIORITY, 3);

set_hitbox_value(49, 25, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 25, HG_WINDOW, 7);
set_hitbox_value(49, 25, HG_WINDOW_CREATION_FRAME, 26);
set_hitbox_value(49, 25, HG_LIFETIME, 8);
set_hitbox_value(49, 25, HG_HITBOX_X, 20);
set_hitbox_value(49, 25, HG_HITBOX_Y, -50);
set_hitbox_value(49, 25, HG_WIDTH, 128);
set_hitbox_value(49, 25, HG_HEIGHT, 128);
set_hitbox_value(49, 25, HG_SHAPE, 1);
set_hitbox_value(49, 25, HG_PRIORITY, 10);
set_hitbox_value(49, 25, HG_DAMAGE, 3);
set_hitbox_value(49, 25, HG_ANGLE, 90);
set_hitbox_value(49, 25, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 25, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(49, 25, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(49, 25, HG_BASE_HITPAUSE, 24);
set_hitbox_value(49, 25, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(49, 25, HG_VISUAL_EFFECT, 304);
set_hitbox_value(49, 25, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(49, 25, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(49, 25, HG_HIT_SFX, sound_get("fs_hit"));
set_hitbox_value(49, 25, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(49, 25, HG_HITBOX_GROUP, -1);