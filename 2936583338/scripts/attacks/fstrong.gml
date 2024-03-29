set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, sound_get("ska_ton"));

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG,4);

set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 92);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.42);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("ska_bighit"));

set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 58);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -42);

set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 72);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -42);

set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 11);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, -7);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 60);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, sound_get("ska_hit"));
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("fstrong_head"));
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_MASK, sprite_get("fstrong_head"));
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG, 4, HG_EXTENDED_PARRY_STUN, true);