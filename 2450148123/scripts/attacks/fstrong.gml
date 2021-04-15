set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);


set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 2);


set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED, -7);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 2);

set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 100);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_burnconsume"));


set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 46);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 84);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_burnconsume"));

set_hitbox_value(AT_FSTRONG, 3, HG_MUNO_HITBOX_NAME, "Star 1");
set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 20);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 90);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, star_damage);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, 3, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("star_proj"));
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_MASK, sprite_get("star_proj"));
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, stardestroyfx);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_VSPEED, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_AIR_FRICTION, -0.05);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);

set_hitbox_value(AT_FSTRONG, 4, HG_MUNO_HITBOX_NAME, "Star 2");
set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 20);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 90);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, star_damage);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, 4, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("star_proj"));
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_MASK, sprite_get("star_proj"));
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, stardestroyfx);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 2);

set_hitbox_value(AT_FSTRONG, 5, HG_MUNO_HITBOX_NAME, "Star 3");
set_hitbox_value(AT_FSTRONG, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 20);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 90);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, star_damage);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, 5, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_SPRITE, sprite_get("star_proj"));
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_MASK, sprite_get("star_proj"));
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, stardestroyfx);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_AIR_FRICTION, -0.05);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_WALL_BEHAVIOR, 2);

set_hitbox_value(AT_FSTRONG, 6, HG_MUNO_HITBOX_NAME, "Star 4");
set_hitbox_value(AT_FSTRONG, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 40);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 6, HG_WIDTH, 90);
set_hitbox_value(AT_FSTRONG, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_DAMAGE, star_damage);
set_hitbox_value(AT_FSTRONG, 6, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, 6, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_SPRITE, sprite_get("star_proj"));
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_MASK, sprite_get("star_proj"));
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT, stardestroyfx);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_VSPEED, 7);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_WALL_BEHAVIOR, 2);

