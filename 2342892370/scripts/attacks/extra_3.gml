set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("extra1"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 0);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("extra1"));


set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sound_get("shock1"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 18);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_holy_tablet"));
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 29);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 38);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, sound_get("RZ"));
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX_FRAME, 37);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 38);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX_FRAME, 20);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 18);


set_num_hitboxes(AT_EXTRA_3,2);


set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 9);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X,  100);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 98);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 98);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 1.5);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, sound_get("ADfinish"));
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, SC);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .8);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_3, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_LOCKOUT, 30);