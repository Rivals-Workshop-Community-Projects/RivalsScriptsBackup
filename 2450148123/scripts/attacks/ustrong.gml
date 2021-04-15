set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 4);


set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 3);


set_num_hitboxes(AT_USTRONG, 2);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 90);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);

set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);

set_hitbox_value(AT_USTRONG, 3, HG_MUNO_HITBOX_NAME, "Star 1");
set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 20);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 90);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, star_damage);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 50);
set_hitbox_value(AT_USTRONG, 3, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("star_proj"));
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_MASK, sprite_get("star_proj"));
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, stardestroyfx);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_VSPEED, 6);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_AIR_FRICTION, -0.05);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);

set_hitbox_value(AT_USTRONG, 4, HG_MUNO_HITBOX_NAME, "Star 2");
set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 20);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 90);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, star_damage);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 50);
set_hitbox_value(AT_USTRONG, 4, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("star_proj"));
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_MASK, sprite_get("star_proj"));
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, stardestroyfx);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_VSPEED, 6);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_AIR_FRICTION, -0.05);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 2);
