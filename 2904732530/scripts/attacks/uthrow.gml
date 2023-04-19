//NAIR 3

set_attack_value(AT_UTHROW, AG_CATEGORY, 1);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("nair3"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UTHROW, AG_LANDING_LAG, 5);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("nair3_hurt"));

set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_UTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTHROW,4);

set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, -50);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 95);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 142);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTHROW, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTHROW, 2, HG_WIDTH, 95);
set_hitbox_value(AT_UTHROW, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_UTHROW, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_UTHROW, 2, HG_ANGLE, 45);
set_hitbox_value(AT_UTHROW, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTHROW, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTHROW, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTHROW, 2, HG_VISUAL_EFFECT, 142);
set_hitbox_value(AT_UTHROW, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTHROW, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UTHROW, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_X, 50);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTHROW, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTHROW, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_UTHROW, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTHROW, 4, HG_HITBOX_Y, 10);
set_hitbox_value(AT_UTHROW, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTHROW, 4, HG_HITBOX_GROUP, 1);


