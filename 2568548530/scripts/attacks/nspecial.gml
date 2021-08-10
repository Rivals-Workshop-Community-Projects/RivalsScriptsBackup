set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));


//set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 30);//15);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_NSPECIAL, 1, AG_USES_CUSTOM_GRAVITY , 1.0);
//set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("nspecialStart"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 5);//5);//15);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_ell_dspecial_explosion_1"));//sfx_swipe_heavy2"));
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 7);//pratfall

set_num_hitboxes(AT_NSPECIAL, 3);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 128);//96);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 128);//96);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 64);//96);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 64);//96);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 32);//96);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 32);//96);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 11);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 20);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));