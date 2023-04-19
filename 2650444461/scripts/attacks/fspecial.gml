set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL, 8);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
//set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 2);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 150);
set_hitbox_value(AT_FSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_SDI_MULTIPLIER, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSPECIAL, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 8, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 8, HG_HEIGHT, 65);
set_hitbox_value(AT_FSPECIAL, 8, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 8, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL, 8, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 8, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 8, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 8, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_FSPECIAL, 8, HG_VISUAL_EFFECT, 195);
set_hitbox_value(AT_FSPECIAL, 8, HG_SDI_MULTIPLIER, -1);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_GROUP, -1);