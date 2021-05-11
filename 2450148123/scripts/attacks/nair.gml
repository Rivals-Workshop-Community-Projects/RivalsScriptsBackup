set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR,3);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 4, HG_MUNO_HITBOX_NAME, "Star 1");
set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 15);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, star_damage);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 4, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_SPRITE, sprite_get("star_proj"));
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_MASK, sprite_get("star_proj"));
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, stardestroyfx);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_VSPEED, 0.5);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_WALL_BEHAVIOR, 2);

set_hitbox_value(AT_NAIR, 5, HG_MUNO_HITBOX_NAME, "Star 2");
set_hitbox_value(AT_NAIR, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 15);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, star_damage);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 5, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 5, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_SPRITE, sprite_get("star_proj"));
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_MASK, sprite_get("star_proj"));
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, stardestroyfx);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_VSPEED, 1);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_AIR_FRICTION, -0.05);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_WALL_BEHAVIOR, 2);

set_hitbox_value(AT_NAIR, 6, HG_MUNO_HITBOX_NAME, "Star 3");
set_hitbox_value(AT_NAIR, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 15);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, star_damage);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 6, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 6, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_SPRITE, sprite_get("star_proj"));
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_MASK, sprite_get("star_proj"));
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, stardestroyfx);
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_VSPEED, 1.5);
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NAIR, 6, HG_PROJECTILE_WALL_BEHAVIOR, 2)