set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("ftilt_fire"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("ftilt_fire_hurt"));

set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 6)

//initial
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 3);

//endlag frames
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FTHROW, 2, AG_WINDOW_GOTO, 16);

//swipe 1
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FTHROW, 3, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FTHROW, 4, AG_WINDOW_GOTO, 16);

//swipe 2
set_window_value(AT_FTHROW, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FTHROW, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FTHROW, 5, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_FTHROW, 5, AG_WINDOW_GOTO, 2);

set_num_hitboxes(AT_FTHROW, 1);

//default
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 0);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 30);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTHROW, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_2"));
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTHROW, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, HFX_ZET_FIRE);
set_hitbox_value(AT_FTHROW, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("ftilt_fire_proj"));
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_PARRY_STUN, 1);