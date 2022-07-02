set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_CATEGORY, 0);
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 2);

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 70);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 18);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("3reload"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX,  sound_get("force"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED, -25);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);

set_num_hitboxes(AT_USTRONG, 1);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 16);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 70);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("shoot"))
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("shoot"));

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 16);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 70);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("shoot"))
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_MASK, sprite_get("shoot"));