set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 7);

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED, -5);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);

//dive
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 14);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

//swimming
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_VSPEED, -0.5);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_VSPEED, -0.5);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_VSPEED_TYPE, 1);


set_window_value(AT_DSPECIAL_AIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 8, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_AIR, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_AIR, 8, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_DSPECIAL_AIR, 3);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 195);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 95);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 140);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 150);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 95);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 95);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 161);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_GROUP, -1);