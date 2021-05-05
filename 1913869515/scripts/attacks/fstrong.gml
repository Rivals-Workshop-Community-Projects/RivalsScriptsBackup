set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 9);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_FSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HSPEED, -3);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

set_window_value(AT_FSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.1);


set_window_value(AT_FSTRONG, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_CUSTOM_GRAVITY, 0.1);


set_num_hitboxes(AT_FSTRONG, 4);

set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 37);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_FSTRONG, 1, HG_FINAL_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X,  100);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 270);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("SC2"));
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("SpaceCut"));
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, SC);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 3, HG_TECHABLE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, true );


set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 7);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 25);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, -10);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -110);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("exclamation"));
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 150);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 400);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 18);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 25);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("counterhit"));
set_hitbox_value(AT_FSTRONG, 2, HG_HITSTUN_MULTIPLIER, 2);

set_hitbox_value(AT_FSTRONG, 8, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 8, HG_WINDOW, 7);
set_hitbox_value(AT_FSTRONG, 8, HG_LIFETIME, 70);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_X, -70);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_Y, -84);
set_hitbox_value(AT_FSTRONG, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_PROJECTILE_SPRITE, sprite_get("pffspecialb"));
set_hitbox_value(AT_FSTRONG, 8, HG_PROJECTILE_AIR_FRICTION, 0.7);
set_hitbox_value(AT_FSTRONG, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 8, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_FSTRONG, 8, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_FSTRONG, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 9, HG_WINDOW, 7);
set_hitbox_value(AT_FSTRONG, 9, HG_LIFETIME, 40);
set_hitbox_value(AT_FSTRONG, 9, HG_HITBOX_X, -70);
set_hitbox_value(AT_FSTRONG, 9, HG_HITBOX_Y, -84);
set_hitbox_value(AT_FSTRONG, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 9, HG_PROJECTILE_SPRITE, sprite_get("pffspecialfb"));
set_hitbox_value(AT_FSTRONG, 9, HG_PROJECTILE_AIR_FRICTION, 0.5);
set_hitbox_value(AT_FSTRONG, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 9, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_FSTRONG, 9, HG_PROJECTILE_DESTROY_EFFECT, 1);

