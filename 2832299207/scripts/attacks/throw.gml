set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("mantis_throw"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("mantis_throw_hurt"));

set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 8);

//teleport in
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);

//latch
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX, sound_get("mantis_land_cage"));
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX_FRAME, 1);

//wait
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//windup
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_SFX, sound_get("mantis_sword"));
set_window_value(AT_FTHROW, 4, AG_WINDOW_SFX_FRAME, 13);


//throw
set_window_value(AT_FTHROW, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 6);

//wait
set_window_value(AT_FTHROW, 6, AG_WINDOW_LENGTH, 70);
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 9);

//jumpstart
set_window_value(AT_FTHROW, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTHROW, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FTHROW, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 7, AG_WINDOW_SFX, sound_get("mantis_jump_cage"));
set_window_value(AT_FTHROW, 7, AG_WINDOW_SFX_FRAME, 1);

//jump
set_window_value(AT_FTHROW, 8, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FTHROW, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 8, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_FTHROW, 11);

set_hitbox_value(AT_FTHROW, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 11, HG_WINDOW, 4);
set_hitbox_value(AT_FTHROW, 11, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FTHROW, 11, HG_LIFETIME, 300);
set_hitbox_value(AT_FTHROW, 11, HG_HITBOX_X, -140);
set_hitbox_value(AT_FTHROW, 11, HG_HITBOX_Y, -180);
set_hitbox_value(AT_FTHROW, 11, HG_WIDTH, 154);
set_hitbox_value(AT_FTHROW, 11, HG_HEIGHT, 50);
set_hitbox_value(AT_FTHROW, 11, HG_PRIORITY, 4);
set_hitbox_value(AT_FTHROW, 11, HG_DAMAGE, 8);
set_hitbox_value(AT_FTHROW, 11, HG_ANGLE, 90);
set_hitbox_value(AT_FTHROW, 11, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTHROW, 11, HG_SHAPE, 0);
set_hitbox_value(AT_FTHROW, 11, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FTHROW, 11, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FTHROW, 11, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTHROW, 11, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FTHROW, 11, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FTHROW, 11, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTHROW, 11, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTHROW, 11, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_FTHROW, 11, HG_PROJECTILE_SPRITE, sprite_get("mantis_ring"));
set_hitbox_value(AT_FTHROW, 11, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_FTHROW, 11, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTHROW, 11, HG_PROJECTILE_HSPEED, -16);
set_hitbox_value(AT_FTHROW, 11, HG_PROJECTILE_VSPEED, 1);
set_hitbox_value(AT_FTHROW, 11, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_FTHROW, 11, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 11, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 11, HG_PROJECTILE_WALL_BEHAVIOR, 1);