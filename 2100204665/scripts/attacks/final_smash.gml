//set_attack_value(49, AG_MUNO_ATTACK_NAME, "Final Smash");
set_attack_value(49, AG_CATEGORY, 1);
set_attack_value(49, AG_SPRITE, sprite_get("taunt"));
set_attack_value(49, AG_NUM_WINDOWS, 4);
set_attack_value(49, AG_HAS_LANDING_LAG, 0);
set_attack_value(49, AG_LANDING_LAG, 0);
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("pap_hurtbox"));

set_window_value(49, 1, AG_WINDOW_LENGTH, 24);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 20);

//big bone

set_window_value(49, 2, AG_WINDOW_TYPE, 9);
set_window_value(49, 2, AG_WINDOW_LENGTH, 6);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);

//bigger bone
set_window_value(49, 3, AG_WINDOW_TYPE, 9);
set_window_value(49, 3, AG_WINDOW_LENGTH, 6);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(49, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);

//biggest bone

set_window_value(49, 4, AG_WINDOW_LENGTH, 10);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(49, 4, AG_WINDOW_HSPEED, 0);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(49, 3);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 2 );
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 900);
set_hitbox_value(49, 1, HG_HITBOX_X, -900);
set_hitbox_value(49, 1, HG_HITBOX_Y, -110);
set_hitbox_value(49, 1, HG_SHAPE, -1 );
set_hitbox_value(49, 1, HG_FORCE_FLINCH, 1 );
set_hitbox_value(49, 1, HG_PRIORITY, 5);
set_hitbox_value(49, 1, HG_DAMAGE, 3);
set_hitbox_value(49, 1, HG_ANGLE, 90);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 1, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(49, 1, HG_IGNORES_PROJECTILES, 1 );
set_hitbox_value(49, 1, HG_FORCE_FLINCH, 1 );
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 303 );
set_hitbox_value(49, 1, HG_HIT_SFX, sound_get("sfx_ut_souldamage"));
set_hitbox_value(49, 1, HG_EXTRA_CAMERA_SHAKE, 1 );
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("fs_bone1"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, sprite_get("fs_bone1"));
set_hitbox_value(49, 1, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(49, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(49, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(49, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 );
set_hitbox_value(49, 1, HG_PROJECTILE_UNBASHABLE, 1 );
set_hitbox_value(49, 1, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(49, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );

set_hitbox_value(49, 2, HG_HITBOX_TYPE, 2 );
set_hitbox_value(49, 2, HG_WINDOW, 3);
set_hitbox_value(49, 2, HG_LIFETIME, 900);
set_hitbox_value(49, 2, HG_HITBOX_X, -900);
set_hitbox_value(49, 2, HG_HITBOX_Y, -174);
set_hitbox_value(49, 2, HG_SHAPE, -1 );
set_hitbox_value(49, 2, HG_FORCE_FLINCH, 1 );
set_hitbox_value(49, 2, HG_PRIORITY, 5);
set_hitbox_value(49, 2, HG_DAMAGE, 5);
set_hitbox_value(49, 2, HG_ANGLE, 90);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 2, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(49, 2, HG_IGNORES_PROJECTILES, 1 );
set_hitbox_value(49, 2, HG_FORCE_FLINCH, 1 );
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 303 );
set_hitbox_value(49, 2, HG_HIT_SFX, sound_get("sfx_ut_souldamage"));
set_hitbox_value(49, 2, HG_EXTRA_CAMERA_SHAKE, 1 );
set_hitbox_value(49, 2, HG_PROJECTILE_SPRITE, sprite_get("fs_bone2"));
set_hitbox_value(49, 2, HG_PROJECTILE_MASK, sprite_get("fs_bone2"));
set_hitbox_value(49, 2, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(49, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(49, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(49, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 );
set_hitbox_value(49, 2, HG_PROJECTILE_UNBASHABLE, 1 );
set_hitbox_value(49, 2, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(49, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );

set_hitbox_value(49, 3, HG_HITBOX_TYPE, 2 );
set_hitbox_value(49, 3, HG_WINDOW, 4);
set_hitbox_value(49, 3, HG_LIFETIME, 900);
set_hitbox_value(49, 3, HG_HITBOX_X, -900);
set_hitbox_value(49, 3, HG_HITBOX_Y, -320);
set_hitbox_value(49, 3, HG_SHAPE, -1 );
set_hitbox_value(49, 3, HG_PRIORITY, 9);
set_hitbox_value(49, 3, HG_DAMAGE, 12);
set_hitbox_value(49, 3, HG_ANGLE, 90);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(49, 3, HG_HITSTUN_MULTIPLIER, 1.5 );
set_hitbox_value(49, 3, HG_ANGLE_FLIPPER, 8 );
set_hitbox_value(49, 3, HG_IGNORES_PROJECTILES, 1 );
set_hitbox_value(49, 3, HG_VISUAL_EFFECT, 304 );
set_hitbox_value(49, 3, HG_HIT_SFX, sound_get("sfx_monsterhit"));
set_hitbox_value(49, 3, HG_EXTRA_CAMERA_SHAKE, 1 );
set_hitbox_value(49, 3, HG_PROJECTILE_SPRITE, sprite_get("fs_bone3"));
set_hitbox_value(49, 3, HG_PROJECTILE_MASK, sprite_get("fs_bone3"));
set_hitbox_value(49, 3, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(49, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(49, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(49, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 );
set_hitbox_value(49, 3, HG_PROJECTILE_UNBASHABLE, 1 );
set_hitbox_value(49, 3, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(49, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );

