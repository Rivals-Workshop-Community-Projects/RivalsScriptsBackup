set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_ori_uptilt_single"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1)
set_window_value(AT_FTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .6);
set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED, 2);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1)
set_window_value(AT_FTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .55);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1)
set_window_value(AT_FTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .8);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT,4);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 76);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, hit_sprites[3]);
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_CAMERA_SHAKE, 2);
//set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 44);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 76);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 4);
//set_hitbox_value(AT_FTILT, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, hit_sprites[3]);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 44);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 76);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 50);
//set_hitbox_value(AT_FTILT, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
//set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, hit_sprites[3]);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FTILT, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 44);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 76);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 58);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
//set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, hit_sprites[3]);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, -1);