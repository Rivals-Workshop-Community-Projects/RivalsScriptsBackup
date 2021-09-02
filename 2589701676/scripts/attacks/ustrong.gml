set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
//set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

//startup
set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

//charge
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//active
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HITPAUSE_FRAME, 4);//ADD BACK IN------
//set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_absa_new_whip1"));

//ADD: strong charge sound; damage multiplier per charge

//recovery
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//hitboxes
set_num_hitboxes(AT_USTRONG, 3);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -115);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 5);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 220);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_may_whip2"));

set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -230);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 35);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_CAMERA_SHAKE, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_may_whip1"));


set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USTRONG, 3, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_may_whip2"));