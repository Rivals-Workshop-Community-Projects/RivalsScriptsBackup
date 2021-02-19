set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 18);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_war_horn"));
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 2);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 137);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 137);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 85);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 85);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

