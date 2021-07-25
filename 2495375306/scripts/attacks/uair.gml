set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 2);

set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -2);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UAIR, 5);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 62);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 102);
set_hitbox_value(AT_UAIR, 1, HG_TECHABLE, 2);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_UAIR, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 62);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 102);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 62);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 102);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, -1);


set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, -26);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -56);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 48);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 72);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 4, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_UAIR, 4, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, -6);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -86);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 5, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_UAIR, 5, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_UAIR, 5, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_UAIR, 5, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_UAIR, 5, HG_PROJECTILE_UNBASHABLE, 1);

