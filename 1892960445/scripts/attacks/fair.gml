set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, sound_get("bow"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR,2);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 18);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 26);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 26);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, snow_effect);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 14);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("fair_proj"));
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_HSPEED, 11);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_GRAVITY, 0.2)
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_DESTROY_EFFECT, snow_effect);

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 34);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, crit_effect);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, 0.5);

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 12);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -43);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 3);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, snow_effect);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 14);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_FAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("fair_proj"));
set_hitbox_value(AT_FAIR, 3, HG_PROJECTILE_MASK, sprite_get("fair_proj"));
set_hitbox_value(AT_FAIR, 3, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_FAIR, 3, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_FAIR, 3, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_FAIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FAIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FAIR, 3, HG_PROJECTILE_DESTROY_EFFECT, snow_effect);

set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 12);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -43);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, 3);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, snow_effect);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 14);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_FAIR, 4, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_SPRITE, sprite_get("fair_proj"));
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_MASK, sprite_get("fair_proj"));
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_VSPEED, 6);
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_DESTROY_EFFECT, snow_effect);

set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 14);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 4);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -43);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, 3);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT, snow_effect);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 14);
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_FAIR, 5, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_FAIR, 5, HG_PROJECTILE_SPRITE, sprite_get("fair_proj"));
set_hitbox_value(AT_FAIR, 5, HG_PROJECTILE_MASK, sprite_get("fair_proj"));
set_hitbox_value(AT_FAIR, 5, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_FAIR, 5, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_FAIR, 5, HG_PROJECTILE_VSPEED, -3.5);
set_hitbox_value(AT_FAIR, 5, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FAIR, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FAIR, 5, HG_PROJECTILE_DESTROY_EFFECT, snow_effect);

set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 14);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 4);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -43);
set_hitbox_value(AT_FAIR, 6, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 6, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 6, HG_HITPAUSE_SCALING, 3);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT, snow_effect);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT_X_OFFSET, 14);
set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_FAIR, 6, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_SPRITE, sprite_get("fair_proj"));
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_MASK, sprite_get("fair_proj"));
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_VSPEED, 3.5);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_DESTROY_EFFECT, snow_effect);