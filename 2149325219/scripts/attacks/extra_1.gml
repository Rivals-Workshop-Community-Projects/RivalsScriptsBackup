set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("extra_1"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));
set_attack_value(AT_EXTRA_1, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);


set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_WHIFFLAG, 4);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.55);

set_num_hitboxes(AT_EXTRA_1,0);

set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 85);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_LOCKOUT, 15);


set_hitbox_value(AT_EXTRA_1, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 360);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 0.2);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 30);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITSTUN_MULTIPLIER, 0.25);

set_hitbox_value(AT_EXTRA_1, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 70);
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE, 70);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_1, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_EXTRA_1, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_EXTRA_1, 3, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_EXTRA_1, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_GROUP, 2);