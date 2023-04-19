set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 9);

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("usmash1"));

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, sound_get("usmash2"));

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 21);

set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_USTRONG, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 8, AG_WINDOW_SFX, sound_get("sheathe"));

set_window_value(AT_USTRONG, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 26);

set_window_value(AT_USTRONG, 10, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USTRONG, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_USTRONG, 11, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 11, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 27);

set_window_value(AT_USTRONG, 12, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 12, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 12, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(AT_USTRONG, 12, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 12, AG_WINDOW_SFX, sound_get("sheathe"));

set_window_value(AT_USTRONG, 13, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 13, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 13, AG_WINDOW_ANIM_FRAME_START, 37);


set_num_hitboxes(AT_USTRONG, 5);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 72);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 85);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("heavyslashsoku"));


set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -105);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 110);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 75);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USTRONG, 2, HG_DRIFT_MULTIPLIER, 0.3);
set_hitbox_value(AT_USTRONG, 2, HG_SDI_MULTIPLIER, 0.3);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("heavyslashsoku"));

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 45);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -75);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 125);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 160);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_USTRONG, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 3, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 7);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, sound_get("heavierslashsoku"));

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 43);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, sound_get("heavyslashsoku"));
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -120);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_USTRONG, 5, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 5, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 7);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, sound_get("heavierslashsoku"));



