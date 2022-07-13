set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("mantis_dive"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("mantis_dive_hurt"));

set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 7);

//teleport in
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("mantis_whoosh"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 0);

//hover
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//windup
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, sound_get("mantis_dive"));
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 5);


//dive
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//land
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX, sound_get("mantis_dive_land"));
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX_FRAME, 1);

//jumpstart
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_SFX, sound_get("mantis_jump_ground"));
set_window_value(AT_DAIR, 6, AG_WINDOW_SFX_FRAME, 11);

//jump
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_DAIR, 11);

set_hitbox_value(AT_DAIR, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 11, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 11, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 11, HG_LIFETIME, 8);
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_X, -50);
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DAIR, 11, HG_WIDTH, 80);
set_hitbox_value(AT_DAIR, 11, HG_HEIGHT, 110);
set_hitbox_value(AT_DAIR, 11, HG_PRIORITY, 4);
set_hitbox_value(AT_DAIR, 11, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 11, HG_ANGLE, -80);
set_hitbox_value(AT_DAIR, 11, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DAIR, 11, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 11, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DAIR, 11, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 11, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 11, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 11, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_DAIR, 11, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 11, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_DAIR, 11, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DAIR, 11, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DAIR, 11, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_DAIR, 11, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);