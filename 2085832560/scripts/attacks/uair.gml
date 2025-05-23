set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_VSPEED, -5);
set_window_value(AT_UAIR, 3, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 4);
set_window_value(AT_UAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 7*5);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_UAIR, 5, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_num_hitboxes(AT_UAIR,3);

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 99);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X,  8);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 35);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 95);
set_hitbox_value(AT_UAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UAIR, 3, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, 0.8);

set_hitbox_value(AT_UAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 5); 
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 85);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 64);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 0.1);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, .0);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_UAIR, 5, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 120);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("uairs1"));
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_ANIM_SPEED, 0.7);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_DESTROY_EFFECT, 13);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 36);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 0.1);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);