set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED, 4);

set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_BAIR, 5, AG_WINDOW_VSPEED, 3);

set_num_hitboxes(AT_BAIR, 3);

//shot 1
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 1, HG_EFFECT, 1);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -90);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 100);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 30);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 163);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("fire"));
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_ANIM_SPEED, .20);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_HSPEED, -5);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 25);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -40);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -90);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 0);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("cloud"));
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_HSPEED, 0.4);

set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 22);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -100);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -130);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 40);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 0);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("spark"));
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_HSPEED, 0.4);