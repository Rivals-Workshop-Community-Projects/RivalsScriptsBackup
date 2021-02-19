set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair2"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("stand_box"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR,5);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 110);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 110);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 305);

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 0)
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 120);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 120);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 0)
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 190);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 190);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW_CREATION_FRAME, 5)
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, -30);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NAIR, 7, HG_WIDTH, 190);
set_hitbox_value(AT_NAIR, 7, HG_HEIGHT, 190);
set_hitbox_value(AT_NAIR, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 7, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 7, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 7, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 7, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 7, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NAIR, 7, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW_CREATION_FRAME, 9)
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, -30);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -70);
set_hitbox_value(AT_NAIR, 8, HG_WIDTH, 190);
set_hitbox_value(AT_NAIR, 8, HG_HEIGHT, 190);
set_hitbox_value(AT_NAIR, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 8, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, 8, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 8, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 8, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 8, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NAIR, 8, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW_CREATION_FRAME, 4)
set_hitbox_value(AT_NAIR, 9, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_Y, -70);
set_hitbox_value(AT_NAIR, 9, HG_WIDTH, 190);
set_hitbox_value(AT_NAIR, 9, HG_HEIGHT, 190);
set_hitbox_value(AT_NAIR, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 9, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 9, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, 9, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 9, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 9, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 9, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NAIR, 9, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_GROUP, -1);