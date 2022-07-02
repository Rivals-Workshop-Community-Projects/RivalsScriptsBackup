set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));

set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0);
set_attack_value(AT_DATTACK, AG_CATEGORY, 2);

set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 2);

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_land_heavy"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 15);


set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 0);


set_num_hitboxes(AT_DATTACK, 4);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 203);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -52);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 99);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 102);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 20);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("cbar_hitbod1"));

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 203);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -52);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 99);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 102);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 20);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get("cbar_hitbod1"));

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 203);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -52);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 99);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 102);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 20);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, sound_get("cbar_hitbod1"));

set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 1);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 10);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 80);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -52);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 125);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 102);
set_hitbox_value(AT_DATTACK, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 20);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_swipe_medium2"));