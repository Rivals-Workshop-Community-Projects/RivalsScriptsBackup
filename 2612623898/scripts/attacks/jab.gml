//Jab and Nair are usually the same move, but are separated due to engine limitations.
//You can copy and paste nair and repace all AT_NAIR with AT_JAB

set_attack_value(AT_JAB, AG_CATEGORY, 2);
set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
set_attack_value(AT_JAB, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_JAB, AG_OFF_LEDGE, 1);
set_attack_value(AT_JAB, AG_AIR_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("smoke"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);



set_num_hitboxes(AT_JAB, 1);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -46);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 112);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 112);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 1, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("bigpunch"));
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, 0.7);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 999);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 32);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_HITSTUN_MULTIPLIER, 0.3);
set_hitbox_value(AT_JAB, 2, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_JAB, 2, HG_SDI_MULTIPLIER, 0.2);
set_hitbox_value(AT_JAB, 2, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_SPRITE, sprite_get("proj_smoke"));
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("punch"));
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 13);