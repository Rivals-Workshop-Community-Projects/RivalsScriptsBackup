set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("mantis_dash"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("mantis_dash_hurt"));

set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 7);

//teleport in
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 60);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAME_START, 0);

//land
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, sound_get("mantis_land_ground"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 1);

//windup
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, sound_get("mantis_dash"));
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX_FRAME, 15);


//dash
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//stop
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 6);

//jumpstart
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_SFX, sound_get("mantis_jump_ground"));
set_window_value(AT_DATTACK, 6, AG_WINDOW_SFX_FRAME, 11);

//jump
set_window_value(AT_DATTACK, 7, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_DATTACK, 11);

set_hitbox_value(AT_DATTACK, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 11, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 11, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 11, HG_LIFETIME, 20);
set_hitbox_value(AT_DATTACK, 11, HG_HITBOX_X, 80);
set_hitbox_value(AT_DATTACK, 11, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DATTACK, 11, HG_WIDTH, 140);
set_hitbox_value(AT_DATTACK, 11, HG_HEIGHT, 60);
set_hitbox_value(AT_DATTACK, 11, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 11, HG_DAMAGE, 8);
set_hitbox_value(AT_DATTACK, 11, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 11, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DATTACK, 11, HG_SHAPE, 1);
set_hitbox_value(AT_DATTACK, 11, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DATTACK, 11, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DATTACK, 11, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 11, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DATTACK, 11, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_DATTACK, 11, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 11, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 11, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_DATTACK, 11, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DATTACK, 11, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 11, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_DATTACK, 11, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);