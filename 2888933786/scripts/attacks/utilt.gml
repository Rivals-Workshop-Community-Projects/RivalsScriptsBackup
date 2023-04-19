set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 7);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_SFX, sound_get("pop"));

set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 5, AG_WINDOW_VSPEED, 3);

set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 7, AG_WINDOW_ANIM_FRAME_START, 0);

set_num_hitboxes(AT_UTILT, 1);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 1, HG_EFFECT, 1);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 24);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 80);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 163);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("vfire"));
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
