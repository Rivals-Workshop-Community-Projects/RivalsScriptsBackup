set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
set_attack_value(AT_JAB, AG_CATEGORY, 2);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 14);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_JAB, 1);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 80);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, .1);


set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 99);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 140);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 80);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 2, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("punch"));
set_hitbox_value(AT_JAB, 2, HG_HITSTUN_MULTIPLIER, 1.15);
set_hitbox_value(AT_JAB, 2, HG_SDI_MULTIPLIER, .001);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_JAB, 2, HG_IGNORES_PROJECTILES, true);


set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 140);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 0.1);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 86);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, true);




set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 140);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 0.1);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 86);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, true);