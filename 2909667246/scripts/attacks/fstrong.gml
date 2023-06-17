set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("fstrong"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 1);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 120);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
//set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .80);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("bowlingball"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("bowlingball_collision"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_MASK, -1);
//set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_VSPEED, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);