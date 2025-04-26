set_attack_value(AT_FSTRONG_2, AG_CATEGORY, 1);
set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fair_fire"));
set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSTRONG_2, AG_LANDING_LAG, 5);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fair_fire_hurt"));
set_attack_value(AT_FSTRONG_2, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 3);

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.8);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HSPEED, -2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_VSPEED, -2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.3);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);

set_num_hitboxes(AT_FSTRONG_2, 8);

set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 75);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, 30);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, HFX_ZET_FIRE_DIR);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_flareo_rod"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSTRONG_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, 10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSTRONG_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG_2, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITBOX_X, 90);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITBOX_Y, 45);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG_2, 3, HG_PRIORITY, 4);

set_hitbox_value(AT_FSTRONG_2, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG_2, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG_2, 4, HG_HITBOX_X, 65);
set_hitbox_value(AT_FSTRONG_2, 4, HG_HITBOX_Y, 25);
set_hitbox_value(AT_FSTRONG_2, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG_2, 4, HG_PRIORITY, 2);

set_hitbox_value(AT_FSTRONG_2, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG_2, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG_2, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG_2, 5, HG_HITBOX_X, 95);
set_hitbox_value(AT_FSTRONG_2, 5, HG_HITBOX_Y, 50);
set_hitbox_value(AT_FSTRONG_2, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSTRONG_2, 5, HG_PRIORITY, 4);

set_hitbox_value(AT_FSTRONG_2, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG_2, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG_2, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG_2, 6, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSTRONG_2, 6, HG_HITBOX_Y, 30);
set_hitbox_value(AT_FSTRONG_2, 6, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSTRONG_2, 6, HG_PRIORITY, 2);

set_hitbox_value(AT_FSTRONG_2, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 7, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG_2, 7, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FSTRONG_2, 7, HG_HITBOX_X, 95);
set_hitbox_value(AT_FSTRONG_2, 7, HG_HITBOX_Y, 50);
set_hitbox_value(AT_FSTRONG_2, 7, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG_2, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG_2, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG_2, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG_2, 7, HG_ANGLE, 80);
set_hitbox_value(AT_FSTRONG_2, 7, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG_2, 7, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG_2, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG_2, 7, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSTRONG_2, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG_2, 7, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSTRONG_2, 7, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_FSTRONG_2, 7, HG_VISUAL_EFFECT, HFX_ZET_FIRE);
set_hitbox_value(AT_FSTRONG_2, 7, HG_HIT_SFX, asset_get("sfx_flareo_rod"));
set_hitbox_value(AT_FSTRONG_2, 7, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_FSTRONG_2, 8, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_FSTRONG_2, 8, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG_2, 8, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FSTRONG_2, 8, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSTRONG_2, 8, HG_HITBOX_Y, 30);
set_hitbox_value(AT_FSTRONG_2, 8, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_FSTRONG_2, 8, HG_PRIORITY, 2);