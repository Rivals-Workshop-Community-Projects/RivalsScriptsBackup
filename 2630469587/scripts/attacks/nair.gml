set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_AIR_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 9);

set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_NAIR, 5);
set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 120);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 2, HG_HITSTUN_MULTIPLIER, 1.6);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_NAIR, 3, HG_HITSTUN_MULTIPLIER, 1.6);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));

set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 5);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -33);
set_hitbox_value(AT_NAIR, 4, HG_HITSTUN_MULTIPLIER, 1.6);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));

set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 5);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -33);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 130);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 130);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));


