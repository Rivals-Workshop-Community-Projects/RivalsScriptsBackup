set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 18);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -6);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 16);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 0);

//landing

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 0);

set_num_hitboxes(AT_DAIR,4);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -6);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 42);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 18);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 32);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -19);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 36);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 43);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, crit_effect);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 1.6);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 6);

//land
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -7);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 80);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 65);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, crit_effect);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 3);

set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 25);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 0);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 0);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 0);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, crit_effect);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -1000);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, sound_get("bowhit1"));
set_hitbox_value(AT_DAIR, 4, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_SPRITE, sprite_get("smoke"));
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_MASK, sprite_get("smoke"));
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);