set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1); // startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_superjump_sein"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1); // nyoom
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1); // hold air
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 10); // dive
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, 30);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1); // boom
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_hit"));

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 17);

set_num_hitboxes(AT_DSPECIAL, 2);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, -3)
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, -4);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_stomp_hitplayer"));
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, -3)
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 140);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2); // particle effect
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 30);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("particle"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GRAVITY, .3);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_FRICTION, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);