set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("lv1shot"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, -3);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 0);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_CANCEL_TYPE, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_CANCEL_FRAME, 1);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_CANCEL_TYPE, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_CANCEL_FRAME, 1);

set_num_hitboxes(AT_FTILT,4);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 58);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 1);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 1);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("ftilt_proj"));
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_MASK, ("-1"));
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_PLASMA_SAFE, true);

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 38);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 70);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("lv1shothit"));

set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 64);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 100);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 70);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, sound_get("lv1shothit"));

set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 74);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 140);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 7);
set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 55);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 4, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, sound_get("lv1shothit"));

if !has_rune("E") exit;

set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 14);

set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 10);

set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 6);