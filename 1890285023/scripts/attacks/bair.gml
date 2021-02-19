set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_BAIR, 4);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -44);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -8);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -44);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -8);

set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -44);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -8);

set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -44);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -8);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 70);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_BAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 120);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));