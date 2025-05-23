set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("wiggle"));

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, sound_get("beep"));

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 13);

set_num_hitboxes(AT_JAB, 0);

/*set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 55);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6);*/

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 100);
//set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
//set_hitbox_value(AT_JAB, 2, HG_WIDTH, 70);
//set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_JAB, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 45);
//set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 139);
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_SPRITE, sprite_get("car_proj"));
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_MASK, sprite_get("car_proj"));
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_GRAVITY, .5);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_PARRY_STUN, -1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 1);