set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//startup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
//charge
set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//active
set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 60);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);
//set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_spin"));


//recovery
set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//hitboxes
set_num_hitboxes(AT_DSTRONG, 3);

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 65);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 120);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_metal_hit_weak"));

set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -65);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_metal_hit_weak"));

set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 56);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 200);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSTRONG, 3, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_metal_hit_weak"));